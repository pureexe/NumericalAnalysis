format short;
clc;clear;
A = [
    2.1756,     4.0231,     -2.1732,        5.1967;
   -4.0231,          6,           0,        1.1973;
        -1,    -5.2107       1.1111,             0;   
    6.0235,          7,           0,       -4.1561;
];
B = [17.102;-6.1593;3.0004;0];
%A\B
%gaussian_elimination(A,B)
[L,U] = LUdecomposition(A)
L
U(3,2) = 0;
U(4,2) = 0;
L*U