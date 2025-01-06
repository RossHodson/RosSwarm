clc; close all; clear all;


%Variables to change
length = 5;
randMax = 1000;
randMin = -1000;
proxTolerance = 10;
averageTolerance = 50;


%Graph initialization
L = [2, -1, -1, 0, 0;   %Made up Laplacian for connectivity
    -1, 2, 0, 0, -1;
    -1, 0, 2, -1, 0;
    0, 0, -1, 1, 0;
    0, -1, 0, 0, 1];
%L = length * eye(length) - ones(length);  %Fully connected laplacian for a test

epsilon = 1 /3;               %From made up graph
P = eye(length) - epsilon*L;  %Perron matrix to solve consensus
D = 3;                        % Longest shortest path (from 5 to 3)


%Initialization
x = zeros(length,1);  % Current values (1 dimensional)
for i = 1:length
    r = randMin + (randMax - randMin) .* rand(1);
    x(i,1) = r;
end
z = x;         % Local Max
y = x;         % Local Min
average = 0;   % Agreed upon average (global)
hold on
grid on



%Main Loop

for k = 1:1000
    %Initialization
    tooCloseNodes = [0;0;0;0;0];   % Bool list, updates each iteration, of if nodes were prevented from moving by proximity

    %Graph each iteration
    plot(k,x(:,k),'.r','Color',[0.4660 0.7740 0.1880],'MarkerSize', 30)
    plot(k,y(:,k),".",'Color','blue', 'MarkerSize', 10)
    plot(k,z(:,k),".",'Color','red','MarkerSize', 10)
    
    %Regular Consensus
    nextValue = P*x(:,k);
    for node = 1:length         % Give each node its next state value
        
        allProx = [];
        for neighbor = 1:length % Start by making sure it's not too close to any other node (not just neighbors and not itself)
            if node ~= neighbor
                neighborProx = abs(nextValue(node)) - abs(x(neighbor,k));
                neighborProx = abs(neighborProx);
                allProx = [allProx, neighborProx];
                
            end
        end
        
       
        % Next move would be too close, so dont update state
       if min(allProx) <= proxTolerance
            x(node,k+1) = x(node,k);
            tooCloseNodes(node) = 1;

        % Next move has converged to the average
       elseif abs(abs(nextValue(node)) - abs(average)) <= averageTolerance
            x(node,k+1) = x(node,k);
            tooCloseNodes(node) = 1;

       else
           min(allProx)
            x(node,k+1) = nextValue(node);
        end
    end

    % Max and Min Protocol (make all nodes eventually agree on a global max
    % & min) - change every D or so iterations
    for node = 1:length
        % Intialization
        neighborMaxs = [];
        neighborMins = [];
        
        for neighbor = 1:length
            if L(node,neighbor) == -1  %Checks Laplacian to make sure its a real neighbor
                neighborMaxs = [neighborMaxs, z(neighbor,k)];
                neighborMins = [neighborMins, y(neighbor,k)];
            end
        end
    
        maximum = max(neighborMaxs);
        minimum = min(neighborMins);

        z(node,k+1) = maximum;
        y(node,k+1) = minimum;
    end


    % Global average (updates after enough time steps (k) that all nodes should agree)
    if (mod(k,(D*2+2)) == 0)
        % Look at last value of z and y for agreed upon max/min
        localMax = z(1,k);
        localMin = y(1,k);
        average = (localMax + localMin) / 2;

        %Reset z and y for new state values (smaller max & bigger min)
        z(:,k+1) = x (:,k);
        y(:,k+1) = x(:,k);
    end


    % Check if done (break out of loop)
    if sum(tooCloseNodes) == length       %All nodes have stopped
        
        % Print out how close the nodes ended up (see if algorithm worked)

        intitialDistance = averageTolerance * 1000;
        distances = ones(length, length) * intitialDistance;

        %Find the smallest distance to any other node
        for node = 1:length
            for neighbor = 1:length
                neighborProxX = abs(x(node,k+1)) - abs(x(neighbor,k+1));   %K+1 is the most up to date
                distances(node,neighbor) = abs(neighborProxX);
            end
        end
        distances = distances + 1000*eye(length); % Makes the diagonal (self distances) not equal to 0
        closestNeighbors = zeros(length,1);
        for i = 1:length
            closestNeighbors(i) = abs(min(distances(i,:)));
        end

        
        closestNeighbors
        proxTolerance
        
        % See final values compared to average
        %x(:,k+1)
        %localMax = z(1,k+1);
        %localMin = y(1,k+1);
        %average = (localMax + localMin) / 2;
        %average
        %averageTolerance
        return


    end
    
end




% Works a lot of the time, but has a flaw

% They avoid getting too close to each other by looking at their neighbors
% last position, so if one node and its neighbor pick a next position that
% is too close, they never know

% Somehow communicate next postitions with eachother before you go? Take 2
% timesteps to move, 1 check with neighbors, 1 actually do it if you got
% ok'd

