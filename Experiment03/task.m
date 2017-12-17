clc;clear;
%% variable defination
a = 0;
b = 1;
k = [5,10,1,516];
%% function defination
func = @(x,i) x.^i;
%% Table Render
fprintf(" ========== \n");
fprintf(" Exact solution       G5(f)          G8(f)           |Esol - G5(f)|  |Esol - G8(f)|      \n");
for i = k
    f = @(x) func(x,i);
    exact = integral(f,a,b);
    g5f = gaussian_quadrature_integration(f,a,b,5);
    g8f = gaussian_quadrature_integration(f,a,b,8);
    fprintf(" %4.12f      %4.12f  %4.12f  %4.12f  %4.12f\n",exact,g5f,g8f,abs(exact - g5f),abs(exact - g8f));
end
