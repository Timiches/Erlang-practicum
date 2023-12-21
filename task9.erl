%Запакувати послідовні дублікати у вкладені списки
-module(task9).

-export([pack/1, pack/2, subpack/2]).

pack(List) -> pack(List, 0).

subpack([], _) -> [];
subpack(List,Prev)->
    [H|T] = List,
    if 
        H == Prev->
            [H| subpack(T, Prev)];
        true->
            []
    end.

pack([], _) -> [];
pack([H|T], Prev)->
    if 
        H == Prev->
            pack(T, Prev);
        true->
            [[H|subpack(T,H)]| pack(T, H)]
    end.


