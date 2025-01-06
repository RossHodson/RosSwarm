clc; close all; clear all;


% THE FIGURES ARE SET UP TO SHOW JUST 3 DIMENSIONS BUT THE CODE SHOULD WORK
% FOR ANY AMOUNT OF DIMENSIONS, JUST MAKE MORE FIGURES AND CHANGE THE
% PARAMS.DIMENSIONS VALUE AND THE STATE INITIALIZATIONS


%Variables that can change
params.numNodes = 5;
params.dimensions = 3;
params.proxTolerance = 1;
params.averageTolerance = 5;
params.epsilon = 1 /8;               %Choose based on graph

%Graph initialization
params.Laplacian = [2, -1, -1, 0, 0;   %Made up Laplacian for connectivity
    -1, 2, 0, 0, -1;
    -1, 0, 2, -1, 0;
    0, 0, -1, 1, 0;
    0, -1, 0, 0, 1];


params.perronMatrix = eye(params.numNodes) - params.epsilon*params.Laplacian;  %Perron matrix to solve consensus
D = 4;                        % Longest shortest path (from 5 to 3)

%Initialization
states= cell(1,params.numNodes); % Current states for 5 nodes

%Good starting positions for 5 nodes [x, y,z ] (can randomize if you want)
states{1} = [0, 0, 0];                  % Blue
states{2} = [500, 100, 250];                % Red
states{3} = [250, 500, 100];                % Green
states{4} = [0, 500, 500];                % Yellow
states{5} = [500, 500, 500];               % Pink

maxs = states;         % Local Max
mins = states;         % Local Min
averages = zeros(1,params.dimensions); %Average of each dimension (only updates after agreement on max/min)

notDone = true;
counter = 1;

figure
hold on;

% Main loop
while notDone
    numNodes = params.numNodes;
    dimensions = params.dimensions;

    %Plot everything
    plotAllStates(states,counter,params,averages)    
         
    

    %Array of what nodes should stop updating because theyre too close
    tooCloseNodes = cell(1,params.numNodes);
    for node = 1:params.numNodes             %Resets every loop iteration
        tooCloseNodes{node} = [0, 0, 0];
    end
   
    %Regular Consensus
    [nextStates,tooCloseNodes] = consensus(states,averages,tooCloseNodes,params);
    states = nextStates;

    %Max and Min
    [maxs, mins] = maxMin(maxs,mins,params);
    
    % Global average (updates after enough time steps (k) that all nodes should agree)
    if (mod(counter,(D*2)) == 0)
        averages = calcNewAverage(maxs,mins,params);
        %Put tigheter bounds on the new maxs and mins 
        maxs = states;
        mins = states;
    end

    %Check if converged
    sum = 0;
    % Sum of tooCloseNodes should be equal to nodes*dimensions if all nodes
    % have stopped in all directions
    for node = 1:numNodes
        temp = tooCloseNodes{node};
        for i=1:dimensions
            sum = sum+ temp(i);
        end
    end
    if sum == numNodes*dimensions
        notDone = false;
    end

    counter = counter +1;
end

function averages = calcNewAverage(maxs,mins,params)
    dimensions = params.dimensions;

    averages = zeros(1,dimensions);
    %Find new average for each dimension
    for dimension = 1:dimensions
        agreedMax = maxs{1}(dimension);
        agreedMin = mins{1}(dimension);
        agreedAverage = (agreedMax + agreedMin) / 2;
        averages(1,dimension) = agreedAverage;
    end

end



% Max and Min Protocol (make all nodes eventually agree on a global max & min)
function [maxsOut,minsOut] = maxMin(maxsIn,minsIn,params)
    %Annoying way to pass variables
    dimensions = params.dimensions;
    numNodes = params.numNodes;
    Laplacian = params.Laplacian;

    maxsOut= cell(1,numNodes);
    minsOut= cell(1,numNodes);

    for dimension = 1:dimensions
        for node = 1:numNodes
            % Intialization
            neighborMaxs = [];
            neighborMins = [];
            
            for neighbor = 1:numNodes
                if Laplacian(node,neighbor) == -1  %Checks Laplacian to make sure its a real neighbor
                    neighborMaxs = [neighborMaxs, maxsIn{neighbor}(dimension)];
                    neighborMins = [neighborMins, minsIn{neighbor}(dimension)];
                end
            end
        
            maximum = max(neighborMaxs);
            minimum = min(neighborMins);
    
            maxsOut{node}(dimension) = maximum;
            minsOut{node}(dimension) = minimum;
        end
    end
end




%Regular Consensus
function [nextStates,tooCloseNodes] = consensus(states,averages,tooCloseNodes, params)
    %Annoying way to pass variables
    dimensions = params.dimensions;
    perronMatrix = params.perronMatrix;
    numNodes = params.numNodes;
    proxTolerance = params.proxTolerance;
    averageTolerance=params.averageTolerance;

    nextStates = cell(1, numNodes);

    
    % Do each dimension per iteration, x, y ,z 
    for dimension = 1:dimensions   
        currentValues = (cellfun(@(v) v(dimension), states))';
        nextValues = perronMatrix * currentValues;

        %Update all nodes for that dimension
        for node = 1 : numNodes

            neighborProximities = [];
            for neighbor = 1:numNodes % Start by making sure it's not too close to any other node (not just neighbors and not itself)
                if node ~= neighbor
                    neighborProx = abs(nextValues(node)) - abs(currentValues(neighbor,1));
                    neighborProx = abs(neighborProx);
                    neighborProximities = [neighborProximities, neighborProx];
                end
            end
            
           
            % Next move would be too close, so dont update state
           if min(neighborProximities) <= proxTolerance
                nextStates{node}(dimension) = states{node}(dimension);
                tooCloseNodes{node}(dimension) = 1;
    
            % Next move has converged to the average
           elseif abs(abs(currentValues(node)) - abs(averages(dimension))) <= averageTolerance
                nextStates{node}(dimension) = states{node}(dimension);
                tooCloseNodes{node}(dimension) = 1;
 
            %All good, update that node's value
           else
                nextStates{node}(dimension) = nextValues(node);
            end
        end
    end
end

function plotAllStates(states, counter, params, averages)

    dimensions = params.dimensions;
    numNodes = length(states);
    hold on;
    % Define a set of 5 distinct and aesthetically pleasing colors
    colorPalette = [
        0.2, 0.2, 0.8;  % Blue
        0.8, 0.2, 0.2;  % Red
        0.2, 0.8, 0.2;  % Green
        0.8, 0.8, 0.2;  % Yellow
        0.8, 0.4, 0.8   % Purple
    ];

    % Ensure the color palette has enough colors for the number of nodes
    if numNodes > size(colorPalette, 1)
        error('Not enough colors in the color palette for the number of nodes.');
    end

    % Prepare data for scatter3
    x = zeros(1, numNodes);
    y = zeros(1, numNodes);
    z = zeros(1, numNodes);
    colors = zeros(numNodes, 3);  % For storing colors

    % Collect data
    for node = 1:numNodes
        x(node) = states{node}(1);
        y(node) = states{node}(2);
        z(node) = states{node}(3);
        
        % Determine the color for the current node
        colorIndex = mod(node - 1, size(colorPalette, 1)) + 1; % Cycle through available colors
        colors(node, :) = colorPalette(colorIndex, :);
    end

    % Scatter plot with filled circles
    scatter3(x, y, z, 100, colors, 'filled');

    % Plot average values in 3D (one point for each dimension's average)
   % scatter3(averages(1), averages(2), averages(3), 100, 'k', 'filled');

    % Label the axes
    xlabel('X Position');
    ylabel('Y Position');
    zlabel('Z Position');

    % Set grid and hold off
    grid on;
    hold off;
end


function plotAllStateszzz(states, counter,params,averages)
    dimensions = params.dimensions;

    %Plot each set of states on a separate graph
    for dimension = 1:dimensions   
        figure(dimension); %Switch to correct graph
        hold on
        currentValues = (cellfun(@(v) v(dimension), states)); % Y values
        
        timeVector = ones(size(currentValues));
        timeVector = timeVector * counter;        % X Values (time steps)
        
        %Colors for pretty (Just set up for 3d)
        color = [0, 0, 0];
        switch dimension
            case 1
                color = [1, 0, 0];
            case 2
                color = [0, 1, 0];
            otherwise
                color = [0, 0, 1];
        end
        
        plot(timeVector(1,:),currentValues(1,:),'.','MarkerSize', 40,'Color', color)
        plot(timeVector(1,1), averages(dimension), '.', 'MarkerSize', 20, 'Color', 'black')
        
    end
end
