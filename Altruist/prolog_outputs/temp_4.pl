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
feature_importance('F1', 'Positive').
feature_importance('F2', 'Positive').
feature_importance('F3', 'Negative').
feature_importance('F4', 'Positive').
feature_importance('F5', 'Positive').
feature_importance('F6', 'Positive').
feature_importance('F7', 'Neutral').
feature_importance('F8', 'Positive').
feature_importance('F9', 'Positive').
feature_importance('F10', 'Positive').
feature_importance('F11', 'Positive').
feature_importance('F12', 'Positive').
feature_importance('F13', 'Positive').
feature_importance('F14', 'Positive').
feature_importance('F15', 'Positive').
feature_importance('F16', 'Neutral').
feature_importance('F17', 'Positive').
feature_importance('F18', 'Neutral').
feature_importance('F19', 'Neutral').
feature_importance('F20', 'Neutral').
feature_importance('F21', 'Positive').
feature_importance('F22', 'Positive').
feature_importance('F23', 'Positive').
feature_importance('F24', 'Positive').
feature_importance('F25', 'Neutral').
feature_importance('F26', 'Positive').
feature_importance('F27', 'Neutral').
feature_importance('F28', 'Neutral').
feature_importance('F29', 'Neutral').
feature_importance('F30', 'Neutral').
feature_importance('F31', 'Positive').
feature_importance('F32', 'Neutral').
feature_importance('F33', 'Neutral').
feature_importance('F34', 'Positive').
feature_importance('F35', 'Neutral').
feature_importance('F36', 'Positive').
feature_importance('F37', 'Neutral').
feature_importance('F38', 'Positive').
feature_importance('F39', 'Neutral').
feature_importance('F40', 'Neutral').
feature_importance('F41', 'Neutral').
feature_importance('F42', 'Positive').
feature_importance('F43', 'Neutral').
feature_importance('F44', 'Neutral').
feature_importance('F45', 'Positive').
feature_importance('F46', 'Neutral').
feature_importance('F47', 'Positive').
feature_importance('F48', 'Neutral').
feature_importance('F49', 'Neutral').
feature_importance('F50', 'Positive').
feature_importance('F51', 'Negative').
feature_importance('F52', 'Positive').
feature_importance('F53', 'Neutral').
feature_importance('F54', 'Positive').
feature_importance('F55', 'Neutral').
feature_importance('F56', 'Positive').
feature_importance('F57', 'Positive').
feature_importance('F58', 'Positive').
feature_importance('F59', 'Positive').
feature_importance('F60', 'Positive').
feature_importance('F61', 'Positive').
feature_importance('F62', 'Negative').
feature_importance('F63', 'Positive').
feature_importance('F64', 'Positive').
feature_importance('F65', 'Positive').
feature_importance('F66', 'Positive').
feature_importance('F67', 'Positive').
feature_importance('F68', 'Negative').
feature_importance('F69', 'Positive').
feature_importance('F70', 'Positive').
feature_importance('F71', 'Negative').
feature_importance('F72', 'Positive').
feature_importance('F73', 'Positive').
feature_importance('F74', 'Negative').
feature_importance('F75', 'Positive').
feature_importance('F76', 'Positive').
feature_importance('F77', 'Positive').
feature_importance('F78', 'Positive').
feature_importance('F79', 'Negative').
feature_importance('F80', 'Positive').
evaluated('F1','Positive','-','Decrease').
evaluated('F2','Positive','-','Decrease').
evaluated('F3','Negative','+','Decrease').
evaluated('F4','Positive','-','Decrease').
evaluated('F5','Positive','+','Increase').
evaluated('F5','Positive','-','Decrease').
evaluated('F6','Positive','-','Decrease').
evaluated('F7','Neutral','+','Stable').
evaluated('F7','Neutral','-','Stable').
evaluated('F8','Positive','-','Decrease').
evaluated('F9','Positive','-','Decrease').
evaluated('F10','Positive','+','Increase').
evaluated('F10','Positive','-','Decrease').
evaluated('F11','Positive','-','Decrease').
evaluated('F12','Positive','-','Decrease').
evaluated('F13','Positive','-','Decrease').
evaluated('F14','Positive','-','Decrease').
evaluated('F15','Positive','-','Decrease').
evaluated('F16','Neutral','+','Stable').
evaluated('F16','Neutral','-','Stable').
evaluated('F17','Positive','-','Decrease').
evaluated('F18','Neutral','+','Stable').
evaluated('F18','Neutral','-','Stable').
evaluated('F19','Neutral','+','Stable').
evaluated('F19','Neutral','-','Stable').
evaluated('F20','Neutral','+','Stable').
evaluated('F20','Neutral','-','Stable').
evaluated('F21','Positive','-','Decrease').
evaluated('F22','Positive','-','Decrease').
evaluated('F23','Positive','-','Decrease').
evaluated('F24','Positive','-','Decrease').
evaluated('F25','Neutral','+','Stable').
evaluated('F25','Neutral','-','Stable').
evaluated('F26','Positive','-','Decrease').
evaluated('F27','Neutral','+','Stable').
evaluated('F27','Neutral','-','Stable').
evaluated('F28','Neutral','+','Stable').
evaluated('F28','Neutral','-','Stable').
evaluated('F29','Neutral','+','Stable').
evaluated('F29','Neutral','-','Stable').
evaluated('F30','Neutral','+','Stable').
evaluated('F30','Neutral','-','Stable').
evaluated('F31','Positive','-','Decrease').
evaluated('F32','Neutral','+','Stable').
evaluated('F32','Neutral','-','Stable').
evaluated('F33','Neutral','+','Stable').
evaluated('F33','Neutral','-','Stable').
evaluated('F34','Positive','-','Decrease').
evaluated('F35','Neutral','+','Stable').
evaluated('F35','Neutral','-','Stable').
evaluated('F36','Positive','-','Decrease').
evaluated('F37','Neutral','+','Stable').
evaluated('F37','Neutral','-','Stable').
evaluated('F38','Positive','-','Decrease').
evaluated('F39','Neutral','+','Stable').
evaluated('F39','Neutral','-','Stable').
evaluated('F40','Neutral','+','Stable').
evaluated('F40','Neutral','-','Stable').
evaluated('F41','Neutral','+','Stable').
evaluated('F41','Neutral','-','Stable').
evaluated('F42','Positive','-','Decrease').
evaluated('F43','Neutral','+','Stable').
evaluated('F43','Neutral','-','Stable').
evaluated('F44','Neutral','+','Stable').
evaluated('F44','Neutral','-','Stable').
evaluated('F45','Positive','-','Decrease').
evaluated('F46','Neutral','+','Stable').
evaluated('F46','Neutral','-','Stable').
evaluated('F47','Positive','-','Decrease').
evaluated('F48','Neutral','+','Stable').
evaluated('F48','Neutral','-','Stable').
evaluated('F49','Neutral','+','Stable').
evaluated('F49','Neutral','-','Stable').
evaluated('F50','Positive','-','Decrease').
evaluated('F51','Negative','+','Decrease').
evaluated('F52','Positive','-','Decrease').
evaluated('F53','Neutral','+','Stable').
evaluated('F53','Neutral','-','Stable').
evaluated('F54','Positive','-','Decrease').
evaluated('F55','Neutral','+','Stable').
evaluated('F55','Neutral','-','Stable').
evaluated('F56','Positive','-','Decrease').
evaluated('F57','Positive','+','Increase').
evaluated('F57','Positive','-','Decrease').
evaluated('F58','Positive','-','Decrease').
evaluated('F59','Positive','-','Decrease').
evaluated('F60','Positive','-','Decrease').
evaluated('F61','Positive','-','Decrease').
evaluated('F62','Negative','+','Decrease').
evaluated('F63','Positive','-','Decrease').
evaluated('F64','Positive','-','Decrease').
evaluated('F65','Positive','-','Decrease').
evaluated('F66','Positive','-','Decrease').
evaluated('F67','Positive','-','Decrease').
evaluated('F68','Negative','+','Decrease').
evaluated('F68','Negative','-','Increase').
evaluated('F69','Positive','-','Decrease').
evaluated('F70','Positive','+','Increase').
evaluated('F70','Positive','-','Decrease').
evaluated('F71','Negative','+','Decrease').
evaluated('F71','Negative','-','Increase').
evaluated('F72','Positive','-','Decrease').
evaluated('F73','Positive','+','Increase').
evaluated('F73','Positive','-','Decrease').
evaluated('F74','Negative','+','Decrease').
evaluated('F75','Positive','-','Decrease').
evaluated('F78','Positive','-','Decrease').
trusted('Explanation') :- not(untruthful('F1')), writeln('F1 is untruthful'), not(untruthful('F2')), writeln('F2 is untruthful'), not(untruthful('F3')), writeln('F3 is untruthful'), not(untruthful('F4')), writeln('F4 is untruthful'), not(untruthful('F5')), writeln('F5 is untruthful'), not(untruthful('F6')), writeln('F6 is untruthful'), not(untruthful('F7')), writeln('F7 is untruthful'), not(untruthful('F8')), writeln('F8 is untruthful'), not(untruthful('F9')), writeln('F9 is untruthful'), not(untruthful('F10')), writeln('F10 is untruthful'), not(untruthful('F11')), writeln('F11 is untruthful'), not(untruthful('F12')), writeln('F12 is untruthful'), not(untruthful('F13')), writeln('F13 is untruthful'), not(untruthful('F14')), writeln('F14 is untruthful'), not(untruthful('F15')), writeln('F15 is untruthful'), not(untruthful('F16')), writeln('F16 is untruthful'), not(untruthful('F17')), writeln('F17 is untruthful'), not(untruthful('F18')), writeln('F18 is untruthful'), not(untruthful('F19')), writeln('F19 is untruthful'), not(untruthful('F20')), writeln('F20 is untruthful'), not(untruthful('F21')), writeln('F21 is untruthful'), not(untruthful('F22')), writeln('F22 is untruthful'), not(untruthful('F23')), writeln('F23 is untruthful'), not(untruthful('F24')), writeln('F24 is untruthful'), not(untruthful('F25')), writeln('F25 is untruthful'), not(untruthful('F26')), writeln('F26 is untruthful'), not(untruthful('F27')), writeln('F27 is untruthful'), not(untruthful('F28')), writeln('F28 is untruthful'), not(untruthful('F29')), writeln('F29 is untruthful'), not(untruthful('F30')), writeln('F30 is untruthful'), not(untruthful('F31')), writeln('F31 is untruthful'), not(untruthful('F32')), writeln('F32 is untruthful'), not(untruthful('F33')), writeln('F33 is untruthful'), not(untruthful('F34')), writeln('F34 is untruthful'), not(untruthful('F35')), writeln('F35 is untruthful'), not(untruthful('F36')), writeln('F36 is untruthful'), not(untruthful('F37')), writeln('F37 is untruthful'), not(untruthful('F38')), writeln('F38 is untruthful'), not(untruthful('F39')), writeln('F39 is untruthful'), not(untruthful('F40')), writeln('F40 is untruthful'), not(untruthful('F41')), writeln('F41 is untruthful'), not(untruthful('F42')), writeln('F42 is untruthful'), not(untruthful('F43')), writeln('F43 is untruthful'), not(untruthful('F44')), writeln('F44 is untruthful'), not(untruthful('F45')), writeln('F45 is untruthful'), not(untruthful('F46')), writeln('F46 is untruthful'), not(untruthful('F47')), writeln('F47 is untruthful'), not(untruthful('F48')), writeln('F48 is untruthful'), not(untruthful('F49')), writeln('F49 is untruthful'), not(untruthful('F50')), writeln('F50 is untruthful'), not(untruthful('F51')), writeln('F51 is untruthful'), not(untruthful('F52')), writeln('F52 is untruthful'), not(untruthful('F53')), writeln('F53 is untruthful'), not(untruthful('F54')), writeln('F54 is untruthful'), not(untruthful('F55')), writeln('F55 is untruthful'), not(untruthful('F56')), writeln('F56 is untruthful'), not(untruthful('F57')), writeln('F57 is untruthful'), not(untruthful('F58')), writeln('F58 is untruthful'), not(untruthful('F59')), writeln('F59 is untruthful'), not(untruthful('F60')), writeln('F60 is untruthful'), not(untruthful('F61')), writeln('F61 is untruthful'), not(untruthful('F62')), writeln('F62 is untruthful'), not(untruthful('F63')), writeln('F63 is untruthful'), not(untruthful('F64')), writeln('F64 is untruthful'), not(untruthful('F65')), writeln('F65 is untruthful'), not(untruthful('F66')), writeln('F66 is untruthful'), not(untruthful('F67')), writeln('F67 is untruthful'), not(untruthful('F68')), writeln('F68 is untruthful'), not(untruthful('F69')), writeln('F69 is untruthful'), not(untruthful('F70')), writeln('F70 is untruthful'), not(untruthful('F71')), writeln('F71 is untruthful'), not(untruthful('F72')), writeln('F72 is untruthful'), not(untruthful('F73')), writeln('F73 is untruthful'), not(untruthful('F74')), writeln('F74 is untruthful'), not(untruthful('F75')), writeln('F75 is untruthful'), not(untruthful('F76')), writeln('F76 is untruthful'), not(untruthful('F77')), writeln('F77 is untruthful'), not(untruthful('F78')), writeln('F78 is untruthful'), not(untruthful('F79')), writeln('F79 is untruthful'), not(untruthful('F80')), writeln('F80 is untruthful').
