% Projectile Motion Simulation
% Parameters
initial_velocity = 50; % initial velocity in m/s
launch_angle = 45;     % launch angle in degrees
g = 9.81;              % gravitational acceleration in m/s^2

% Convert launch angle to radians
launch_angle_rad = deg2rad(launch_angle);

% Initial velocity components
v_x = initial_velocity * cos(launch_angle_rad);
v_y = initial_velocity * sin(launch_angle_rad);

% Time of flight
time_of_flight = (2 * v_y) / g;

% Time vector
t = linspace(0, time_of_flight, 100);

% Calculate x and y positions
x = v_x * t;
y = v_y * t - 0.5 * g * t.^2;

% Range and maximum height
range = max(x);
max_height = (v_y^2) / (2 * g);

% Plot the trajectory
figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
xlabel('Horizontal Distance (m)');
ylabel('Vertical Distance (m)');
title('Projectile Motion Trajectory');
grid on;
hold on;

% Mark the range and maximum height
plot(range, 0, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
plot(range/2, max_height, 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g');
legend('Trajectory', 'Range', 'Max Height');

% Display range and maximum height on plot
text(range, 0, sprintf(' Range = %.2f m', range), 'VerticalAlignment', 'top');
text(range/2, max_height, sprintf(' Max Height = %.2f m', max_height), 'VerticalAlignment', 'bottom');

hold off;