%Порахувати кількість елементів списку
-module(task4).

-export([len/1, len/2]).

len(List)->len(List,0).

len([], I)->I;

len([_|T], I)->len(T,I + 1).