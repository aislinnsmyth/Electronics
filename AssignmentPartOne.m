timeDomain = -1:0.01:1;                     %step of 0.01, time range
counter = 0;                                 % counter used for 6 subplots to go from 1...6 and to go 1..6 for frequencyRangesquareFunction
squareFunction = square(2 * pi * timeDomain);        % formula for the square function
for frequency_Range = [1, 3, 5, 10, 50, 500]  % frequencies per each subplot (6)
    frequency_Sum = 0;           % formula given
    sin_Function = 0;            % initializes the sine Function
    
    for variableK = 1:2:frequency_Range*2      % multiply by 2 as waves makes more waves and compacts them, makes graph thinner
        frequency_Sum = frequency_Sum + ((sin(2*pi*variableK*timeDomain))/variableK);     % frequencySum = frequencySum + formula given, plots the graph
        sin_Function = sin_Function + 1;      %increments the sine function to +1 everytime there's a different sine function.
    end
    figure (1)
    fourierSeries = (4/pi)*frequency_Sum;  % (4/pi) from the question and frequencySum implements the function
    counter = counter + 1;     % To now go to the second plot eg if counter = 1+2 then onto the 3rd plot.
    
    subplot (3, 2, counter);    % as 3 plots down and 2 across, counter moves 1 by 1 to each plot
    
    plot(timeDomain, fourierSeries, timeDomain, squareFunction);        % timeDomain x and y plotted, fourierSeries is the Sine function and the squareFunction  is on the plot.
    
    title(['Approximation with ', num2str(frequency_Range), ' sine functions ']);     % The title which is implemented above each plot
    
    
    ylim([-2,2]);   % y-axis limit max is 2 min is -2
    
    set(gca, 'YTick', [-2, -1, 0, 1, 2]); % Setting the Yaxis as the numbers listed
    
end
