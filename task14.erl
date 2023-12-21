%Написати дублікатор усіх елементів списку
-module(task14).

-export([duplicate/1,duplicate/2]).

duplicate(List) -> duplicate(List,2).

duplicate([],_) ->[];
duplicate([H|T],I) ->
    if 
        I > 1 ->
            [H|duplicate([H|T],I-1)];
        true->
            [H|duplicate(T,2)]
        end.