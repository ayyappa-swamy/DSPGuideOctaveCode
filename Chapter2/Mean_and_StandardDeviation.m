##CALCULATION OF THE MEAN AND STANDARD DEVIATION

N  = 5;
SUM = 0;

X = randi([-100, 100], 1, N);
disp('The input array is : '), disp(X)

for i = 1 : N
  SUM = SUM + X(i);
endfor

MEAN = SUM / N;
disp('The calculated mean of the given array is : '), disp(MEAN)
disp('The actual mean of the given array is : '), disp(mean(X))

SQUARED_DEVIATION_SUM = 0;
for i = 1 : N
  SQUARED_DEVIATION_SUM += (X(i) - MEAN)^2;
endfor

VARIANCE = SQUARED_DEVIATION_SUM / (N - 1);
disp('The calculated variance of the given array is : '), disp(VARIANCE)
disp('The actual variance of the given array is : '), disp(var(X))

disp('The calculated standard deviation of the given array is : '), disp(sqrt(VARIANCE))
disp('The actual standard deviation of the given array is : '), disp(std(X))