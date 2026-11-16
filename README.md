# normform

a canonical normal form, so that programs that do the same thing look the same and hash the same across all your repos. This first version handles straight-line boolean code (expressions over named inputs): its normal form is the sorted list of input assignments that make it true, over its sorted variables, so two expressions have the same normal form exactly when they agree on every input.

## Use

```prolog
?- use_module(prolog/normform).
?- nf(and(a, b), N).                                      % N = nf([a,b], [[true,true]])
?- nf(not(or(not(a), not(b))), N).                        % the same normal form: De Morgan
?- same(xor(a, b), and(or(a, b), not(and(a, b))), S).     % S = true
```

## Proofs

`proofs/theorems.pl` proves 4 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every expression of depth up to 2 over a, b and true (depth 0: a, b, true; then not and the four operators).

1. Same normal form exactly when the expressions agree on every input (the normal form is canonical).
2. Turning a normal form back into an expression keeps the meaning and the normal form.
3. Equal normal forms give equal hashes.
4. nf is a function (one normal form per expression).

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
