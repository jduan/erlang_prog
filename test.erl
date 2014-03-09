-module(test).
-export([safe/1]).

% This is a comment.
% Everything on a line after % is ignored.

safe(X) ->
    Y = case X of
            one -> 12;
            _   -> 196
        end,
    X + Y.
