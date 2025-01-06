% Trying to figure out Distributed Average Consensus Convergance

%%
clc
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
y = zeros(length,1);
for i = 1:length
    r = randMin + (randMax - randMin) .* rand(1);
    x(i,1) = r;
    r2 = randMin + (randMax - randMin) .* rand(1);
    y(i,1) = r2;
end


x = [59;25;25;59;80]
y = [78;67;32;21;50]


%initialize z(maxs) and y(mins)
x;
zx = x;
yx = x;

zy = y;
yy = y;

D = 3; % Longest shortest path (from 5 to 3)

tolerance = 0.2;

hold on
% Time steps
for k = 1:1000
    for i = 1:5 
        plot(x(i,k),y(i,k),'*-','Color','green','MarkerSize', 10)
        plot(yx(i,k),yy(i,k),'*-','Color','blue')
        plot(zx(i,k),zy(i,k),'*-','Color','red')
    end
    

    %AP (Regular Consensus)
    x(:,k+1) = P*x(:,k);  
    y(:,k+1) = P*y(:,k); 

    %MXP (Max Protocol)
    for r = 1:length  %Each node
        neighborListx = [];
        neighborListy = [];
        for n = 1:length %Each neighbor
            if L(r,n) == -1
                neighborListx = [neighborListx, zx(n,k)];
                neighborListy = [neighborListy, zy(n,k)];
            end
        end
        maximumx = max(neighborListx);
        maximumy = max(neighborListy);
        zx(r,k+1) = maximumx;
        zy(r,k+1) = maximumy;
    end

    %MNP (Min)
     for r = 1:length  %Each node
        neighborListx = [];
        neighborListy = [];
        for n = 1:length %Each neighbor
            if L(r,n) == -1
                neighborListx = [neighborListx, yx(n,k)];
                neighborListy = [neighborListy, yy(n,k)];
            end
        end
        minimumx = min(neighborListx);
        minimumy = min(neighborListy);
        yx(r,k+1) = minimumx;
        yy(r,k+1) = minimumy;
    end






    if (mod(k,(D*2+1)) == 0)        %Updates the known max and min
        zx(:,k+1) = x (:,k);
        yx(:,k+1) = x(:,k);
        zy(:,k+1) = y(:,k);
        yy(:,k+1) = y(:,k);
    elseif k > D*2
        y
        z
        localMaxx = zx(1,k+1)
        localMaxy = zy(1,k+1)
        localMinx = yx(1,k+1)
        localMiny = yy(1,k+1)
        rangex = localMaxx - localMinx
        rangey = localMaxy - localMiny
        tolerance
        if rangex < tolerance && rangey < tolerance
            k
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