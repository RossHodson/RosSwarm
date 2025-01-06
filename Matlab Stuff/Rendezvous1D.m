% Trying to figure out Distributed Average Consensus Convergance

%%
clc; close all; clear all;
% 1 Dimensional

%Made up Laplacian for connectivity
length = 5;
L = [3, -1, -1, -1, 0;
    -1, 2, 0, 0, -1;
    -1, 0, 2, -1, 0;
    -1, 0, -1, 2, 0;
    0, -1, 0, 0, 1];


epsilon = 1 /3;     % From made up graph
eye(length)
epsilon*L
P = eye(length) - epsilon*L;

%initialize state vector

randMax = 100
randMin = -100
x = zeros(length,1);
for i = 1:length
    r = randMin + (randMax - randMin) .* rand(1);
    x(i,1) = r;
end

%initialize z and y
x;
z = x;
y = x;

D = 3; % Longest shortest path (from 5 to 3)

tolerance = 1;

a_bar = zeros(100,1);
a = zeros(100,1);
B = zeros(100,1);
hold on
% Time steps
for k = 1:1000
    plot(k,x(:,k),'*-','Color','green','MarkerSize', 10)
    plot(k,y(:,k),'*-','Color','blue')
    plot(k,z(:,k),'*-','Color','red')

    %AP (Regular Consensus)
    x(:,k+1) = P*x(:,k);             

    %MXP (Max Protocol)
    for r = 1:length  %Each node
        neighborList = [];
        for n = 1:length %Each neighbor
            if L(r,n) == -1
                neighborList = [neighborList, z(n,k)];
            end
        end
        maximum = max(neighborList);
        z(r,k+1) = maximum;
    end

    %MNP (Min)
     for r = 1:length  %Each node
        neighborList = [];
        for n = 1:length %Each neighbor
            if L(r,n) == -1
                neighborList = [neighborList, y(n,k)];
            end
        end
        minimum= min(neighborList);
        y(r,k+1) = minimum;
    end






    if (mod(k,(D*2+1)) == 0)        %Updates the known max and min
        z(:,k+1) = x (:,k);
        y(:,k+1) = x(:,k);
    elseif k > D*2
        y
        z
        localMax = z(1,k+1)
        localMin = y(1,k+1)
        range = localMax - localMin
        tolerance
        if range < tolerance
            return
        end
    end
    
end




%Notes

%If it converges too fast (tolerance is 5) then the nodes don't have enough
%time to distibute the max and min before they crash into each other


% If tolerance is small they don't know that they've converged for a while
% (because it only checks at the beginning of the line) after they distribute the
% max and the min

% The algorithm right now only checks if they are within the bubble, would
% have to find a way to change it so that they arent within it

%Maybe have MXP and MNP checks happen more frequently than regular
%consensus so that checks can happen more frequently