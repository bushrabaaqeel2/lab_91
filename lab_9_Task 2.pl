% Task 2: Login page (3 attempts in total)

% Dataset: user(Username, Password)
user(ali,    pass123).
user(sara,   abc456).
user(bushra, 2026).

% Start the login page: first attempt + 2 more = 3 attempts
login :-
    write('===== Login Page ====='), nl,
    attempt(3).

% attempt(AttemptsLeft)
attempt(Left) :-
    write('Username (end with a dot): '), read(U),
    write('Password (end with a dot): '), read(P),
    (   user(U, P)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        Left1 is Left - 1,
        (   Left1 > 0
        ->  write('Attempts remaining: '), write(Left1), nl,
            attempt(Left1)
        ;   write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl
        )
    ).

% Run:  ?- login.
% Type e.g.   ali.   then   pass123.
