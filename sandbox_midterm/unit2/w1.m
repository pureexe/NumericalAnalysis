format long;
clc;clear;
f = @(x) exp(-x);
fixpoint(f,fx,10^-8,3)