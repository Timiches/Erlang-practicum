%Знайти останній елемент списку
-module(task1).

-export([last/1, last/2]).

last(Nums) ->
    last([], Nums).

last(L, [])-> 
    L;

last(_, [H | T])-> 
    last(H, T).


