% Parameters
num_points = 100;  % Number of random points to generate
min_value = 0;     % Minimum value for the random numbers
max_value = 10;    % Maximum value for the random numbers

% Generate a sequence of random numbers
random_sequence = min_value + (max_value - min_value) * rand(1, num_points);

% Plot the random sequence as a line graph
figure;
plot(random_sequence, '-o', 'LineWidth', 1.5, 'MarkerSize', 3);
title('Random Number Sequence');
xlabel('Index');
ylabel('Random Value');
grid on;