%Написати декодер для стандартного алгоритму RLE
-module(task13).

-export([decode/1, decode/2]).

decode([]) -> [];
decode([{I, X}|T])->decode([{I, X}|T], I - 1).
decode([], _) -> [];
decode([{I, X}|T], J)->
    if
        J >= 1 ->
            [X|decode([{I, X}|T], J-1)];
        true->
            [X|decode(T)]
        end.

