%Видалити послідовні дублікати
-module(task8).

-export([compress/1]).

compress(List) -> compress(List, 0).

compress([], _) -> [];

compress([H|T], Prev) ->
    if 
        H == Prev->
            compress(T, Prev);
        true->
            [H| compress(T,H)]
    end.

% compress([])    -> [];
% compress([H|T]) -> [H | [X || X <- compress(T), X /= H]].