%Перевернути список
-module(task5).

-export([reverse/1, reverse/2]).

reverse(List) -> reverse(List,[]).

reverse([],R) -> R;
reverse([H|T],R) -> reverse(T,[H|R]).