%Написати декодер для модифікованого алгоритму RLE
-module(task12).

-export([decode_modified/1, decode_modified/2]).

decode_modified([]) -> [];
decode_modified([{I, X}|T])->decode_modified([{I, X}|T], I - 1);
decode_modified([H|T])->[H|decode_modified(T)].
decode_modified([], _) -> [];
decode_modified([{I, X}|T], J)->
    if
        J >= 1 ->
            [X|decode_modified([{I, X}|T], J-1)];
        true->
            [X|decode_modified(T)]
        end.