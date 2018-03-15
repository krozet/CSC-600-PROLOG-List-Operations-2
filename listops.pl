mymember(X, [X|_]).
mymember(X, [_|T]) :-
  mymember(X, T).

first_element([]).
first_element([H|_]) :-
  write(H).

last_element([]).
last_element([H|[]]) :-
  write(H).
last_element([_|T]) :-
  last_element(T).

two_adjacent_elements([X,Y|[]]) :-
  write("["), write(X), write(","), write(Y), write("]"), nl.
two_adjacent_elements([X,Y|T]) :-
  T \= [],
  write("["), write(X), write(","), write(Y), write("], "),
  two_adjacent_elements([Y|T]).
