:- module(cases, [title/1, case/3]).
:- use_module('../prolog/normform').
:- use_module(engine).
title('normform').
expr_g(0, E) :- !, rnd_pick([a, b, c, true, false], E).
expr_g(D, E) :- D1 is D - 1, rnd_int(1, 6, K), ( K =:= 1 -> expr_g(0, E) ; K =:= 2 -> expr_g(D1, X), E = not(X) ; rnd_pick([and, or, xor, implies], Op), expr_g(D1, X), expr_g(D1, Y), E =.. [Op, X, Y] ).
case(nf, [E], nf) :- expr_g(3, E).
case(same, [A, B], same) :- expr_g(2, A), ( rnd_chance(30) -> B = not(not(A)) ; expr_g(2, B) ).
case(nf_hash, [E], nf_hash) :- expr_g(2, E).
case(to_expr, [N], to_expr) :- expr_g(2, E), nf(E, N).
