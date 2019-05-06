# CALCULATION OF THE HISTOGRAM, MEAN AND STANDARD DEVIATION

numOfSamples = 25001;
numOfValuesPerSample = 255;

SUM_OF_SAMPLES = 0;
SUM_OF_SQUARED_DEVIATIONS = 0;

MEAN = 0;
VARIANCE = 0;
STANDARD_DEVIATION = 0;

% Initialize the histogram
histo = zeros(1, numOfValuesPerSample);

% Initialize the signal
sig = randi([1, numOfValuesPerSample], 1, numOfSamples); #signal

for i = 1 : numOfSamples
    histo(sig(i)) = sum(sig == sig(i));
endfor

% Calculate the accumulated sum
for i = 1 : numOfValuesPerSample;
    SUM_OF_SAMPLES += i * histo(i);
endfor

MEAN = SUM_OF_SAMPLES / numOfSamples;
disp('The calculated mean of the given array is : '), disp(MEAN)
disp('The actual mean of the given array is : '), disp(mean(sig))


% Calculate the accumulated deviations
for i = 1 : numOfValuesPerSample;
    SUM_OF_SQUARED_DEVIATIONS += histo(i) * (i - MEAN) ^ 2;
endfor

VARIANCE = SUM_OF_SQUARED_DEVIATIONS / (numOfSamples - 1);
STANDARD_DEVIATION = sqrt(VARIANCE);

disp('The calculated variance of the given array is : '), disp(VARIANCE)
disp('The actual variance of the given array is : '), disp(var(sig))

disp('The calculated standard deviation of the given array is : '), disp(STANDARD_DEVIATION)
disp('The actual standard deviation of the given array is : '), disp(std(sig))


