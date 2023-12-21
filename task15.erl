%Написати функцію-реплікатор всіх елементів вхідного списку
-module(task15).

-export([replicate/2,replicate/3]).

replicate(List, K) -> replicate(List, K, K).

replicate([], _, _) -> [];
replicate([H|T], K, I) ->
    if 
        I > 1 ->
            [H|replicate([H|T],K,I-1)];
        true->
            [H|replicate(T,K,K)]
        end.

