parent(pam, bob). % Pam is a parent of Bob
parent(tom, bob). % Notice that in Prolog the constants
parent(tom, liz). % are written in lower case
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
male(tom). % Tom is a male
male(bob).
female(pam). % Pam is a female
female(liz).
female(ann).
female(pat).
male(jim).
mother(X, Y) :- % X is the mother of Y if
 parent(X, Y), % X is a parent of Y and
 female(X). % X is female
predecessor(X, Y) :- % Rule pr1: X is a predecessor of Y if
 parent(X, Y). % X is a parent of Y
predecessor(X, Y) :- % Rule pr2: X is a predecessor of Y if
 parent(X, Z), % X is a parent of Z and
 predecessor(Z, Y). % Z is a predecessor of Y