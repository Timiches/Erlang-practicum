%Знайти N-й елемент списку
-module(task3).

-export([element_at/2, element_at/3]).

element_at(List, Pos)->
    Len =  task4:len(List),
    if
        Len < Pos ->
            undefined;
        true ->
            element_at(List, Pos, 1)
    end.


element_at([H | T], Pos, I)->
    if
        I == Pos ->
            H;
        true ->
            element_at(T, Pos, I + 1)
    end.