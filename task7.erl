%Вирівняти структуру із вкладеними списками
-module(task7).

-export([flatten/1]).

flatten([[H|T1]|T2]) -> flatten([H,T1|T2]);

flatten([[]|T]) -> flatten(T);

flatten([H|T]) -> [H|flatten(T)];

flatten([]) -> [].