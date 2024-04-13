radius = 200; % Radius of curved sections  

straight_length = 900; % Length of straight sections  

width = 15; % Width of the track  

num_points = 100; % Number of points for drawing curves  

% Define the curved sections  

theta1 = linspace(-pi/2, pi/2, num_points);  

x1 = radius * cos(theta1);  

y1 = radius * sin(theta1) + radius;  

theta2 = linspace(pi/2, 3*pi/2, num_points);  

x2 = radius * cos(theta2);  

y2 = radius * sin(theta2) - radius;  

% Define the straight sections  

x3 = linspace(straight_length/2, -straight_length/2, num_points);  

y3 = ones(1, num_points) * radius;  

x4 = fliplr(x3);  

y4 = ones(1, num_points) * -radius;  

% Concatenate all points  

xpath = [x1+950, x3+500, x2, x4+500]; 

ypath = [y1, y3+200, y2+400, y4+200];  

% Plot the race track  

figure;  

plot(xpath, ypath, 'k', 'LineWidth', 2);  

hold on;  