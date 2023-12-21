%Знайти два останніх елементи списку
-module(task2).

-export([but_last/1]).

but_last(List)->
    Len =  task4:len(List),
    [_|T] = List,
    if
        Len =< 2 -> 
            List;
        true ->
            but_last(T)
    end.