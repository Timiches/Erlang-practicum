%Закодувати список за допомогою модифікованого алгоритму RLE
-module(task11).

-export([encode_modified/1, encode_modified/3]).

encode_modified([H|T])->encode_modified([H|T], H, 0).
encode_modified([], Prev, I) -> [{I, Prev}];
encode_modified([H|T], Prev, I)->
    if 
        H == Prev->
            encode_modified(T, Prev, I + 1);
        true->
            if 
                I == 1->
                    [Prev| encode_modified(T, H, 1)];
                true->
                    [{I, Prev}| encode_modified(T, H, 1)]
            end
    end.