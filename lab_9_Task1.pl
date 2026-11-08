% Task 1: Area and perimeter of square, rectangle, triangle

% square(Side, Area, Perimeter)
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% rectangle(Length, Width, Area, Perimeter)
rectangle(Length, Width, Area, Perimeter) :-
    Area is Length * Width,
    Perimeter is 2 * (Length + Width).

% triangle(Base, Height, Side1, Side2, Side3, Area, Perimeter)
% Area = 1/2 * base * height ; Perimeter = sum of the three sides
triangle(Base, Height, S1, S2, S3, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is S1 + S2 + S3.

% Printing versions
show_square(Side) :-
    square(Side, A, P),
    write('Square    -> Area = '), write(A),
    write(' , Perimeter = '), write(P), nl.

show_rectangle(L, W) :-
    rectangle(L, W, A, P),
    write('Rectangle -> Area = '), write(A),
    write(' , Perimeter = '), write(P), nl.

show_triangle(B, H, S1, S2, S3) :-
    triangle(B, H, S1, S2, S3, A, P),
    write('Triangle  -> Area = '), write(A),
    write(' , Perimeter = '), write(P), nl.

% Sample queries:
% ?- show_square(5).            Area = 25, Perimeter = 20
% ?- show_rectangle(6, 4).      Area = 24, Perimeter = 20
% ?- show_triangle(6, 4, 5, 5, 6).  Area = 12.0, Perimeter = 16
