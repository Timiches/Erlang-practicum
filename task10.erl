%Закодувати список за допомогою алгоритму RLE
-module(task10).

-export([encode/1, encode/3]).

encode([H|T])->encode([H|T], H, 0).
encode([], Prev, I) -> [{I, Prev}];
encode([H|T], Prev, I)->
    if 
        H == Prev->
            encode(T, Prev, I + 1);
        true->
            [{I, Prev}| encode(T, H, 1)]
    end.