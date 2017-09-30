format long;
A = [2,4,-4,0;1,5,-5,-3;2,3,1,3,;1,4,-2,2];
B = [12;18;8;8];
B = gaussian_elimination(A,B);
disp(B);