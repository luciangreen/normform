% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/normform').

% Domain: every expression of depth up to 2 over a, b and true (depth 0: a, b, true; then not and the four operators).
expr(0, E) :- member(E, [a, b, true]).
expr(D, E) :- D > 0, D1 is D - 1, ( expr(D1, E) ; expr(D1, X), E = not(X) ; member(Op, [and, or, xor, implies]), expr(D1, X), expr(D1, Y), E =.. [Op, X, Y] ).
expr(E) :- expr(1, E).
env2([a-A, b-B]) :- member(A, [false, true]), member(B, [false, true]).
agree(A, B) :- forall(env2(Env), ( eval(A, Env, X), eval(B, Env, Y), X == Y )).

% 1. Same normal form exactly when the expressions agree on every input (the normal form is canonical).
theorem(nf_is_canonical) :- forall(( expr(A), expr(B) ), iff(same(A, B, true), agree(A, B))).

% 2. Turning a normal form back into an expression keeps the meaning and the normal form.
theorem(round_trip) :- forall(expr(2, E), ( nf(E, N), to_expr(N, X), nf(X, N), agree(E, X) )).

% 3. Equal normal forms give equal hashes.
theorem(hash_respects_nf) :- forall(( expr(A), expr(B), same(A, B, true) ), ( nf_hash(A, H), nf_hash(B, H) )).

% 4. nf is a function (one normal form per expression).
theorem(nf_is_a_function) :- forall(expr(2, E), findall(N, nf(E, N), [_])).
