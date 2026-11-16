% normform: a canonical normal form, so that programs that do the same thing look the same
% and hash the same across all your repos. This first version handles straight-line boolean
% code (expressions over named inputs): its normal form is the sorted list of input
% assignments that make it true, over its sorted variables, so two expressions have the same
% normal form exactly when they agree on every input.
%?- nf(and(a, b), N).                                      % N = nf([a,b], [[true,true]])
%?- nf(not(or(not(a), not(b))), N).                        % the same normal form: De Morgan
%?- same(xor(a, b), and(or(a, b), not(and(a, b))), S).     % S = true
:- module(normform, [vars/2, eval/3, nf/2, same/3, nf_hash/2, to_expr/2]).
:- use_module(library(lists)).
:- use_module(library(apply)).

vars(E, Vs) :- vars_(E, V0), sort(V0, Vs).
vars_(true, []) :- !.
vars_(false, []) :- !.
vars_(V, [V]) :- atom(V), !.
vars_(not(E), Vs) :- !, vars_(E, Vs).
vars_(E, Vs) :- E =.. [_, A, B], vars_(A, X), vars_(B, Y), append(X, Y, Vs).

eval(true, _, true) :- !.
eval(false, _, false) :- !.
eval(V, Env, X) :- atom(V), !, memberchk(V-X, Env).
eval(not(E), Env, X) :- !, eval(E, Env, Y), neg(Y, X).
eval(E, Env, X) :- E =.. [Op, A, B], eval(A, Env, P), eval(B, Env, Q), op(Op, P, Q, X0), X = X0.
neg(true, false).
neg(false, true).
op(and, P, Q, X) :- ( P == true, Q == true -> X = true ; X = false ).
op(or, P, Q, X) :- ( P == true ; Q == true ) -> X = true ; X = false.
op(xor, P, Q, X) :- ( P == Q -> X = false ; X = true ).
op(implies, P, Q, X) :- ( P == true, Q == false -> X = false ; X = true ).

% nf(+Expr, -NF): nf(Vars, TrueRows), the rows in order. Variables that don't matter are dropped,
% so a and and(a, or(b, not(b))) have the same normal form.
nf(E, NF) :- vars(E, Vs0), include([V]>>matters(E, Vs0, V), Vs0, Vs), rows(E, Vs0, Vs, Rows), NF = nf(Vs, Rows).
matters(E, Vs, V) :- env(Vs, Env), select(V-X, Env, Rest), neg(X, Y), eval(E, Env, A), eval(E, [V-Y|Rest], B), A \== B, !.
env(Vs, Env) :- maplist([V, V-X]>>member(X, [false, true]), Vs, Env).
rows(E, All, Vs, Rows) :- findall(Row, ( env(Vs, Env0), maplist([_-X, X]>>true, Env0, Row), \+ \+ ( fill(All, Env0, Env), eval(E, Env, true) ) ), R0), msort(R0, Rows).
fill(All, Env0, Env) :- maplist([V, V-X]>>( memberchk(V-X, Env0) -> true ; X = false ), All, Env).

same(A, B, S) :- nf(A, N1), nf(B, N2), ( N1 == N2 -> S = true ; S = false ).
nf_hash(E, H) :- nf(E, N), format(string(T), "~q", [N]), string_codes(T, Cs), foldl([C, X, Y]>>(Y is (X * 31 + C) mod 1000000007), Cs, 1, H).

% to_expr(+NF, -Expr): back to an expression (an or of ands), which has the same normal form.
to_expr(nf(_, []), false) :- !.
to_expr(nf(Vs, Rows), E) :- maplist([R, T]>>( maplist([V, X, L]>>( X == true -> L = V ; L = not(V) ), Vs, R, Ls), conj(Ls, T) ), Rows, Ts), disj(Ts, E).
conj([], true).
conj([L], L) :- !.
conj([L|Ls], and(L, R)) :- conj(Ls, R).
disj([T], T) :- !.
disj([T|Ts], or(T, R)) :- disj(Ts, R).
