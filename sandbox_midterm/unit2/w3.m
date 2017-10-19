format long;
clc;clear;
f = @(x) x^3+4*x^2-10;
regular_falsi(f,1,2,10^-8)