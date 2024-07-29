% Trying to figure out Distributed Average Consensus Convergance

%%
clc; close all; clear all;
% 1 Dimensional

%Made up Laplacian for connectivity
length = 5;
L = [2, -1, -1, 0, 0;
    -1, 2, 0, 0, -1;
    -1, 0, 2, -1, 0;
    0, 0, -1, 1, 0;
    0, -1, 0, 0, 1];

%Fully connected laplacian for a test
L = length * eye(length) - ones(length);


epsilon = 1 /3;     % From made up graph
P = eye(length) - epsilon*L;

%initialize state vector

randMax = 1000;
randMin = -1000;
x = zeros(length,1);
for i = 1:length
    r = randMin + (randMax - randMin) .* rand(1);
    x(i,1) = r;
end

%x = [10; 2; -5; 0.50; 1]



%initialize z and y
x;
z = x;
y = x;

D = 3; % Longest shortest path (from 5 to 3)

convergeTol= 50;
proxTol = 40;

average = 0;

hold on
% Time steps
for k = 1:1000
    hasStopped = [0;0;0;0;0];

    plot(k,x(:,k),'*-','Color','green','MarkerSize', 10)
    plot(k,y(:,k),'*-','Color','blue')
    plot(k,z(:,k),'*-','Color','red')

    %AP (Regular Consensus)
    nextValues = P*x(:,k);
    for i = 1:length           %Check each node

        %Check proximity to each neighbor
        for j = 1:length

            if L(i,j) == -1    %is a neighbor to that node

                neighborProxX = abs(x(i,k)) - abs(x(j,k)) ;
                averageProxX = abs(x(i,k) - average);

                if neighborProxX <= proxTol %|| averageProxX <= convergeTol  %Too close to neighbor (or average)  --------- maybe change this
                    hasStopped(i) = 1;
                    x(i,k+1) = x(i,k);
                else                            %Not too close
                    
                    x(i,k+1) = nextValues(i);
                    nextValues(i);
                end
            end
        end
    end
    

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



    if (mod(k,(D*2+2)) == 0)        %Updates the known max and min
        z(:,k+1) = x (:,k);
        y(:,k+1) = x(:,k);
        localMax = z(1,k+1);
        localMin = y(1,k+1);
        average = (localMax + localMin) / 2;

    end

    if sum(hasStopped) == length

        intitialDistance = 1000;
        distances = ones(length, length) * intitialDistance;
        %Find smallest distance to neighbor for checks
        for i = 1:length
            for j = 1:length
               % if L(i,j) == -1 %is a neighbor to that node
                    neighborProxX = abs(x(i,k+1)) - abs(x(j,k+1));
                    distances(i,j) = neighborProxX;
                %end
            end
        end
        distances = distances + 1000*eye(length)


        %minimum distance to neighbor

        closestNeighbors = zeros(length,1);
        for i = 1:length
            closestNeighbors(i) = min(distances(i,:));
        end
        
        
        x(:,k+1)
        closestNeighbors
        proxTol
        return
    end

    
end


