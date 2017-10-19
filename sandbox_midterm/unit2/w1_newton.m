format long;
clc;clear;
f = @(x) exp(-x)-x;
fx = @(x) - exp(-x) - 1;
newton_raphson(f,fx,10^-8,3)