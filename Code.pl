% FACTS %

% deciding features for the interest
deciding_features([technology, coding, theoritical_maths, mathematical_aptitude, discrete_maths, statistics, programming, circuit_designing, current_flow, analyzing_comparing_things, low_level_programming, competitive_nature, cybersecurity, electron_proton_behavior, team_work, building_projects]).

% features which a particular career should have
career_features(c1, [1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1]).
career_features(c2, [1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0]).
career_features(c3, [1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1]).
career_features(c4, [1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0]).
career_features(c5, [0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0]).
career_features(c6, [1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1]).
career_features(c7, [1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0]).

% career codes
career_codes([c1, c2, c3, c4, c5, c6, c7]).

% career names
career_name(c1, "Software Engineer", 32).
career_name(c2, "Hardware Engineer", 31).
career_name(c3, "Data Scientist", 40).
career_name(c4, "Data Analyst", 42).
career_name(c5, "Competitive Programmer", 19).
career_name(c6, "Blockchain Developer", 26).
career_name(c7, "Quantum Computing", 26).

%  % LEVEL OF COURSES
%  level(ip, 1).
%  level(dc, 1).
%  level(sdos, 5).
%  level(dm, 1).
%  level(dip, 1).
%  level(ca, 5).
%  level(la, 1).
%  level(m3, 2).
%  level(pns, 2).
%  level(cp, 2).
%  level(qmd, 5).
%  level(dsa, 2).
%  level(spem, 5).
%  level(ssd, 3).
%  level(sns, 2).
%  level(dbms, 2).
%  level(bdmh, 5)

% FUNDAMENTAL/BASIC COURSES wrt careers
fcourses(c1, [ip, dc, sdos, ds, dsa, spem]).
fcourses(c2, [ip, dc, dip, ca, dsa, ssd, sns, la]).
fcourses(c3, [ip, la, pns, m3, dbms, dsa]).
fcourses(c4, [ip, la, pns, dbms, dsa, bdmh]).
fcourses(c5, [ip, cp, dsa]).
fcourses(c6, [ip, sdos, dsa, spem]).
fcourses(c7, [ip, la, pns, qmd, dsa]).

% FUNDAMENTAL COURSES INDIVIDUALLY
fcourse(ip, 1).
fcourse(dc, 1).
fcourse(ds, 2).
fcourse(sdos, 5).
fcourse(dip, 3).
fcourse(ca, 5).
fcourse(la, 1).
fcourse(m3, 2).
fcourse(pns, 2).
fcourse(cp, 2).
fcourse(qmd, 5).
fcourse(sns, 2).
fcourse(ssd, 3).
fcourse(dsa, 2).
fcourse(dbms, 2).
fcourse(spem, 5).
fcourse(bdmh, 5).


% courses requiring fundamental courses
prereq_courses(co, [ip], 1).
prereq_courses(os, [dsa], 2).
prereq_courses(ap, [ip, dsa], 2).
prereq_courses(toc, [ds], 3).
prereq_courses(ada, [dsa], 2).
prereq_courses(mad, [ada], 5).
prereq_courses(cn, [ip, os, dsa], 2).
prereq_courses(cmp, [dc], 6).
prereq_courses(ml, [la, ip, pns, m3], 5).
prereq_courses(ai, [dsa], 6).
prereq_courses(nlp, [ip, la, pns, dsa], 5).
prereq_courses(dsc, [ip, la, pns, m3], 5).
prereq_courses(dbms, [dsa], 2).
prereq_courses(dmg, [ip, la, pns, dbms], 5).
prereq_courses(mad, [dsa], 5).
prereq_courses(aag, [dsa], 5).
prereq_courses(prmp, [dsa, ip], 5).
prereq_courses(ac, [ds], 5).
prereq_courses(ibc, [ds], 5).
prereq_courses(iqc, [la], 6).
prereq_courses(qm, [la, pns], 5).
prereq_courses(sml, [ip, pns], 5).
prereq_courses(mln, [ip, pns], 5).
prereq_courses(scomp, [pns], 6).
prereq_courses(bda, [pns], 3).
prereq_courses(bda, [ip, dbms], 6).
prereq_courses(scomp, [pns], 6).
prereq_courses(aiot, [ip, dsa], 6).
prereq_courses(scomp, [pns, la, sns], 6).
prereq_courses(sweb, [ip, dbms], 3).

% courses requiring prerequisite inside each career
courses_prereq_req_per_career(c1, [ co, os, ap, toc, ada, mad]).
courses_prereq_req_per_career(c2, [co, os, ada, cn, cmp, aiot, ssp]).
courses_prereq_req_per_career(c3, [ap, ada, ml, ai, nlp, dsc, sweb, scomp]).
courses_prereq_req_per_career(c4, [ap, dmg, sml, dsc, mln, scomp, bda]).
courses_prereq_req_per_career(c5, [ap, ada, mad, aag, os, prmp]).
courses_prereq_req_per_career(c6, [ap, ac, ibc]).
courses_prereq_req_per_career(c7, [ap, iqc, qm]).


print_lst([]):-!.
print_lst([H|T]):-write(H), nl, print_lst(T).

concat_lst([], L, L).
concat_lst([H|T], L2, [H|L3]):- concat_lst(T, L2, L3).

% lst_element([H|T], x, x0, Element):- x == x0, Element is H.
lst_element([H|T], X, X0, Element):- X==X0 -> Element = H; X2 is X+1, lst_element(T, X2, X0, Element). 

print_careername(C):- career_name(C, Name), write(Name).

print_fcourses(CareerCode):- fcourses(CareerCode, Lst), print_lst(Lst).


checkAndInsert(Course):-
    Course == t -> !, fail; fctaken(X), undo_fctaken,  concat_lst(X, [Course], NewLst), assert(fctaken(NewLst)), take_inp2.
:- dynamic fctaken/1.



makelist_zeroes(N, [H]):- N==1 -> H is 0.
makelist_zeroes(N, [H|T]):- N0 is N-1, makelist_zeroes(N0, T), H is 0.


append_zero(N):-
    user_features(X), makelist_zeroes(N, L), concat_lst(X, L, R), undo_user_features, assert(user_features(R)).

checkAndInsert(Value, Input_Number):-
    Value == t -> append_zero(18-Input_Number), !, fail; user_features(X), undo_user_features,  concat_lst(X, [Value], NewLst), assert(user_features(NewLst)).
:- dynamic user_features/1.


take_inp1(Input_Number):-
    Input_Number == 17 -> !, fail;
    write("Do you like "), deciding_features(Features), lst_element(Features, 1, Input_Number, Element), write(Element), write(": "),
    read(Value),
    K is Input_Number + 1,
    checkAndInsert(Value, K), take_inp1(K).

take_inp2:-
    write("Enter: "),
    read(Course),
    checkAndInsert(Course).


undo_fctaken:-retractall(fctaken(_)).
undo_user_features:-retractall(user_features(_)).
undo_sorted_descend_careers:-retractall(sorted_descend_careers(_)).
undo_threshold_related:-retractall(threshold_related(_, _)).
undo_availaible_courses:-retractall(availaible_courses(_)).
undo_stop_flag:-retractall(stop_flag(_)).
undo_cgpa:- retractall(cgpa(_)).

undo:-
    retractall(threshold_related(_, _)),
    retractall(fctaken(_)),
    retractall(availaible_courses(_)),
    retractall(user_features(_)),
    retractall(sorted_descend_careers(_)),
    retractall(similar_ones_no(_, _)),
    retractall(career_chosen(_)),
    retractall(stop_flag(_)),
    retractall(cgpa(_)).
    

cal_lst_length([], N):- N is 0.
cal_lst_length([_|T], N):-cal_lst_length(T, K), N is K+1.

element_present_lst([H], Element):- H == Element -> true; false.
element_present_lst([H|T], Element):- H == Element ->   true; element_present_lst(T, Element).

prereq_req_courses_print_helper2(Prereqs, Length2, Counter2):-
    Counter2 > Length2 -> true, !; lst_element(Prereqs, Counter2, Length2, Element2), fctaken(FcCourses),  element_present_lst(FcCourses, Element2), Counter3 is Counter2+1, !, prereq_req_courses_print_helper2(Prereqs, Length2, Counter3).
    

prereq_req_courses_print_helper1(Courses, Length, Counter):-
    Counter > Length -> true, !; lst_element(Courses, Counter, Length, Element), prereq_courses(Element, Prereqs, Level), Counter2 is Counter+1, cal_lst_length(Prereqs, Length2), prereq_req_courses_print_helper2(Prereqs, Length2, 1), availaible_courses(X), write(Element), tab(20), write('Level(_x): '), write(Level), nl, undo_availaible_courses, concat_lst(X, [Element], NewLst2), assert(availaible_courses(NewLst2)), !, prereq_req_courses_print_helper1(Courses, Length, Counter2).

prereq_req_courses_print_helper1(Courses, Length, Counter):-
    Counter2 is Counter+1, !, prereq_req_courses_print_helper1(Courses, Length, Counter2).

:- dynamic availaible_courses/1.

prereq_req_courses_print(Career):-
    nl, write("Here are the Courses you are eligible to take:"),
    courses_prereq_req_per_career(Career, Courses), nl, cal_lst_length(Courses, Length), prereq_req_courses_print_helper1(Courses, Length, 1).

recommendation:-
    cgpa(Cgpa), Cgpa > 7 -> write('Your CGPA is decent enough to accept shocks due to subject difficulty. So you are good to choose any of the elective!!!'), !.

recommendation:-
    write('Your CGPA is not enough to accept shocks due to subject difficulty. So you are advised to choose courses with difficulty less than 4!!!'), !.


:- dynamic career_chosen/1.


calculate_corrosponding_ones_of_list([], [], K):- K is 0.
calculate_corrosponding_ones_of_list([H1|T1], [H2|T2], N):- calculate_corrosponding_ones_of_list(T1, T2, K), (H1==H2, H2==1 -> N is K + 1; N is K).


display_result(Lst):-
    [_|T] = Lst, [Rt|_] = T,
    career_name(Rt, X, Y),
    write("-------------------------------"),nl,
    write(X), tab(Y), write(Rt), nl,
    write("-------------------------------"),nl.

display_top_careers_print(Counter):-
    Counter == 8 ->true, !; sorted_descend_careers(Values), lst_element(Values, 1, Counter, [H|T]), threshold_related(X, Y), H >= X -> K is Y+1, undo_threshold_related, assert(threshold_related(X, K)), Counter2 is Counter + 1, display_result([H|T]), !, display_top_careers_print(Counter2).
    
display_top_careers_print(Counter):-
    Counter2 is Counter + 1, !, display_top_careers_print(Counter2).


display_management_calculate:-
    sorted_descend_careers(Values), lst_element(Values, 1, 1, [_|_]), threshold_related(X, _), X == 0 -> undo_stop_flag, assert(stop_flag(1)), true, !.

display_management_calculate:-
    sorted_descend_careers(Values), lst_element(Values, 1, 1, [H|_]), threshold_related(X, _), H >= X -> true, !.

display_management_calculate:-
    sorted_descend_careers(Values), lst_element(Values, 1, 1, [H|_]), threshold_related(X, Y), H < X -> undo_threshold_related, K is X-1, assert(threshold_related(K, Y)), display_management_calculate.

:- dynamic stop_flag/1.

display_management_print:-
    nl, nl, tab(10),write("Careers"),tab(39), write("Code"),nl,nl, display_top_careers_print(1).
:-dynamic threshold_related/2.

insert([H1|T1], [], R) :- R = [[H1|T1]].
insert([H1|T1], [[H2|T2]|L], R):- H1>=H2 -> R = [[H1|T1]|[[H2|T2]|L]]; insert([H1|T1], L, P), R = [[H2|T2]|P].

make_insert_happen(Lst):-
    sorted_descend_careers(Values), undo_sorted_descend_careers,  insert(Lst, Values, NewLst), assert(sorted_descend_careers(NewLst)).

calc_similarity(Counter):-
    Counter == 8 -> true, !; user_features(UserFeaturesLst), career_codes(Ccodes), lst_element(Ccodes, 1, Counter, CareerCode), career_features(CareerCode, CareerFeaturesLst), calculate_corrosponding_ones_of_list(UserFeaturesLst, CareerFeaturesLst, Number), assert(similar_ones_no(CareerCode, Number)), make_insert_happen([Number, CareerCode]), Counter2 is Counter + 1, calc_similarity(Counter2).
:- dynamic similar_ones_no/2, sorted_descend_careers/1.

:- dynamic difficulty_level/1.

go:-
    assert(sorted_descend_careers([])),
    assert(threshold_related(4, 0)),
    assert(availaible_courses([])),
    assert(stop_flag(0)),
    assert(cgpa(0)).

go1:-
    consult("facts.pl"),
    go,
    calc_similarity(1), display_management_calculate, display_management_print.

go2:-
    consult("facts.pl"), career_chosen(Career),
    nl, write('Below are the mentioned fundamental courses which you should have taken to take further courses.'), nl, print_fcourses(Career).

go3:-
    consult("facts.pl"), career_chosen(Career), career_chosen(Career),  prereq_req_courses_print(Career).