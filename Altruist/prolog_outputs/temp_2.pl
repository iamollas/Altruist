% The possible importances can be Positive, Negative or Neutral
importance('Positive').
importance('Negative').
importance('Neutral').

alteration('Increase').
alteration('Decrease').
alteration('Stable').

sign('+').
sign('-').

feature(X):-feature_importance(X, _).

untruthful(X) :- feature(X).

untrusted(X) :- trusted(X),!, fail.
untrusted('Explanation').

modify(X,Y) :- feature(X),importance(Y),feature_importance(X, Y).

modification(X,Y,Z) :- modify(X,Y),importance(Y),sign(Z).

expected(X,'Positive','+','Increase') :-
    evaluated(X,'Positive','+','Increase'),modification(X,'Positive','+').

expected(X,'Positive','-','Decrease') :-
    evaluated(X,'Positive','-','Decrease'),modification(X,'Positive','-').

expected(X,'Negative','+','Decrease') :-
    evaluated(X,'Negative','+','Decrease'),modification(X,'Negative','+').

expected(X,'Negative','-','Increase') :-
    evaluated(X,'Negative','-','Increase'),modification(X,'Negative','-').

expected(X,'Neutral','+','Stable') :-
    evaluated(X,'Neutral','+','Stable'),modification(X,'Neutral','+').

expected(X,'Neutral','-','Stable') :-
    evaluated(X,'Neutral','-','Stable'),modification(X,'Neutral','-').

truthful(X) :-  expected(X,'Positive','+','Increase'),expected(X,'Positive','-','Decrease').
truthful(X) :-  expected(X,'Negative','+','Decrease'),expected(X,'Negative','-','Increase').
truthful(X) :- expected(X,'Neutral','+','Stable'),expected(X,'Neutral','-','Stable').

%truthful(X) :- untruthful(X), !, fail.
not(untruthful(X)) :- truthful(X),!, display(X," is not untruthful").
not(untruthful(X)) :- display(X, " is indeed untruthful").

display( Message, Goal)  :-
write( Message),
write( Goal), nl.
feature_importance('F1', 'Negative').
feature_importance('F2', 'Negative').
feature_importance('F3', 'Negative').
feature_importance('F4', 'Negative').
evaluated('F4','Negative','+','Decrease').
evaluated('F4','Negative','-','Increase').
trusted('Explanation') :- not(untruthful('F1')), writeln('F1 is untruthful'), not(untruthful('F2')), writeln('F2 is untruthful'), not(untruthful('F3')), writeln('F3 is untruthful'), not(untruthful('F4')), writeln('F4 is untruthful').
