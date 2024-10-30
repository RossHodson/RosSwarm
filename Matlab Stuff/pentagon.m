% Define the center and radius of the pentagon
center = [50, 50];  % Center of the 100x100 grid
radius = 30;        % Radius of the pentagon

% Define angles for the vertices of the pentagon
angles = linspace(0, 2*pi, 6);  % Angles for a regular pentagon

% Calculate x and y coordinates for the vertices
x_positions = center(1) + radius * cos(angles(1:5)');
y_positions = center(2) + radius * sin(angles(1:5)');

% Close the pentagon by repeating the first vertex at the end
x_positions = [x_positions; x_positions(1)];
y_positions = [y_positions; y_positions(1)];

% Display the positions
disp('X positions:');
disp(x_positions');
disp('Y positions:');
disp(y_positions');