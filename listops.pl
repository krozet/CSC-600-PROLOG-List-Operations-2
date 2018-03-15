mymember(X, [X|_]).
mymember(X, [_|T]) :-
  mymember(X, T).

first_element([X], X).

last_element([X], X).
last_element([_|T], X) :-
  last_element(T, X).

two_adjacent_elements(X,Y, [X,Y|_]).
two_adjacent_elements(X,Y, [_|T]) :-
  two_adjacent_elements(X,Y,T).

three_adjacent_elements(X,Y,Z, [X,Y,Z|_]).
three_adjacent_elements(X,Y,Z, [_|T]) :-
  three_adjacent_elements(X,Y,Z,T).

myappend([], H, H).
myappend([H|T1], H2, [H|T3]) :-
  myappend(T1, H2, T3).

mydelete(X, [X|T], T).
mydelete(X, [H|T], [H|T1]) :-
  mydelete(X, T, T1).

myinsert(X, Y, XY) :-
  mydelete(X, XY, Y).

mylength([], 0).
mylength([_|T], L) :-
  mylength(T, L1), L is L1 + 1.

myreverse([], []).
myreverse([H|T], Rev) :-
  myreverse(T, RT), myappend(RT, [H], Rev).

check_palindrome([], []).
check_palindrome([H|T], P) :-
  mydelete(H,P,P1), check_palindrome(T, P1).

display_list([]) :- nl.
display_list([H|T]) :-
  write(H), tab(1),
  display_list(T).
