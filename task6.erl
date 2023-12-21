%Визначити, чи є список паліндромом
-module(task6).

-export([is_palindrome/1]).

is_palindrome(List) ->
    Rev = task5:reverse(List),
    Rev == List.