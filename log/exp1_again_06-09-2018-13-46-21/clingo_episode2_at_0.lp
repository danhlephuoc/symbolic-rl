1{action(down, T); action(up, T); action(right, T); action(left, T)}1 :- time(T), not finished(T).
#show state_at/2.
 #show action/2.

cell((0..17, 0..7)).
#minimize{1, X, T: action(X,T)}.
adjacent(right, (X+1,Y),(X,Y))   :- cell((X,Y)), cell((X+1,Y)).
adjacent(left,(X,Y),  (X+1,Y)) :- cell((X,Y)), cell((X+1,Y)).
adjacent(down, (X,Y+1),(X,Y))   :- cell((X,Y)), cell((X,Y+1)).
adjacent(up,   (X,Y),  (X,Y+1)) :- cell((X,Y)), cell((X,Y+1)).

wall((3, 4)).

wall((3, 7)).

wall((2, 7)).

wall((1, 7)).

wall((0, 6)).

wall((0, 5)).

wall((4, 4)).

wall((4, 7)).

wall((5, 7)).

wall((5, 4)).

wall((6, 7)).

wall((7, 7)).

wall((9, 6)).

wall((8, 7)).

wall((6, 4)).

wall((12, 3)).

wall((9, 0)).

wall((8, 0)).

wall((6, 3)).

wall((0, 4)).

wall((4, 0)).

wall((5, 0)).

wall((13, 7)).

wall((12, 7)).

wall((14, 7)).

wall((15, 7)).

wall((17, 6)).

wall((16, 7)).

wall((17, 5)).

wall((16, 4)).

wall((15, 4)).

wall((12, 2)).

wall((15, 0)).
%START
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), not wall(V0).
state_at(V1, T+1) :- time(T), adjacent(down, V0, V1), state_at(V0, T), action(up, T), not wall(V1).
state_at(V0, T+1) :- time(T), adjacent(down, V0, V1), state_at(V1, T), action(down, T), not wall(V0).
state_at(V0, T+1) :- time(T), adjacent(right, V0, V1), state_at(V0, T), action(left, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(right, V0, V1), state_at(V1, T), action(right, T), wall(V0).
state_at(V0, T+1) :- time(T), adjacent(up, V0, V1), state_at(V0, T), action(down, T), wall(V1).
state_at(V1, T+1) :- time(T), adjacent(up, V0, V1), state_at(V1, T), action(up, T), wall(V0).

%END
finished(T):- goal(T2), time(T), T >= T2.
 goal(T):- state_at((16, 1), T), not finished(T-1).
goalMet:- goal(T).
:- not goalMet.
%AAA
state_at((2, 5), 0).
%BBB
%CCC
time(0..250).
%DDD
%ANSWER SETS

%state_at((2,5),0)
%state_at((3,5),1)
%action(right,0)
%action(right,1)
%state_at((4,5),2)
%action(right,2)
%state_at((5,5),3)
%action(right,3)
%state_at((6,5),4)
%action(right,4)
%state_at((7,5),5)
%action(right,5)
%state_at((8,5),6)
%action(up,6)
%state_at((8,4),7)
%action(up,7)
%state_at((8,3),8)
%action(up,8)
%state_at((8,2),9)
%action(up,9)
%state_at((8,1),10)
%action(right,10)
%state_at((9,1),11)
%action(right,11)
%state_at((10,1),12)
%action(right,12)
%state_at((11,1),13)
%action(right,13)
%state_at((12,1),14)
%action(right,14)
%state_at((13,1),15)
%action(right,15)
%state_at((14,1),16)
%action(right,16)
%state_at((15,1),17)
%action(right,17)
%state_at((16,1),18)
