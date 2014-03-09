-module(ex31).
-export([sum/1, sum/2]).

sum(1) ->
    1;
sum(N) when N > 1 ->
    N + sum(N - 1).

sum(N, N) ->
    N;
sum(N, M) when N < M ->
    N + sum(N + 1, M).
