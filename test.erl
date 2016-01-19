-module(test).
-export([equals/2, myand/2, incr/1, decr/1, add/2, subtract/2, multiply/2]).

equals(A, A) ->
    true;
equals(A, B) ->
    false.

myand(true, true) -> true;
myand(true, false) -> false;
myand(false, true) -> false;
myand(false, false) -> false.

incr(A) -> A + 1.
decr(A) -> A - 1.

add(A, 0) -> A;
add(A, B) when B < 0 -> add(decr(A), incr(B));
add(A, B) -> add(incr(A), decr(B)).

subtract(A, 0) -> A;
subtract(A, B) when B < 0 -> subtract(incr(A), incr(B));
subtract(A, B) -> subtract(decr(A), decr(B)).

multiply(A, 1) -> A;
multiply(A, B) when B < 0 -> 0 - multiply(A, -B);
multiply(A, B) -> add(A, multiply(A, decr(B))).
