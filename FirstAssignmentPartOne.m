timeDomain = -1:0.01:1;
count = 0;
squareFunction = square(2*pi*timeDomain);


for range = [1, 3, 5, 10, 50, 500]
    frequencySum = 0;
    sinFunction = 0;
    
    for variableK = 1:2:range
        frequencySum = frequencySum + 
        sinFunction = sinFunction + 1;
    end
    figure(1)
    fourierSeries = (4/pi)*frequencySum;
    
    count = count + 1;
    
    subplot(3, 2, count);
    
    plot(timeDomain, fourierSeries, timeDomain, squareFunction);
    
    title(['Approximation with ', num2str(range), ' sine functions ']);
    
    ylim([-2, 2]);
    
    set(gca, 'YTick', [-2, -1, 0, 1, 2]);
    
end

