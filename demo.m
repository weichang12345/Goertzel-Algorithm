clear;

% Example 1
x = rand(1,100); % x is a row vector
x_fft_1 = fft(x);
x_goertzel_1 = Goertzel_Algorithm(x);

disp("The mean absolute error between x_fft_1 and x_goertzel_1 is")
disp(sum(abs(x_fft_1 - x_goertzel_1),"all")/numel(x))

% Example 2
x = rand(100,1); % x is a column vector
x_fft_2 = fft(x);
x_goertzel_2 = Goertzel_Algorithm(x);
disp("The mean absolute error between x_fft_2 and x_goertzel_2 is")
disp(sum(abs(x_fft_2 - x_goertzel_2),"all")/numel(x))

% Example 2
x = rand(100,200); % x is a matrix
x_fft_3 = fft(x);
x_goertzel_3 = Goertzel_Algorithm(x);
disp("The mean absolute error between x_fft_3 and x_goertzel_3 is")
disp(sum(abs(x_fft_3 - x_goertzel_3),"all")/numel(x))
