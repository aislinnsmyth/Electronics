count = 0; % count for each subplot to go from one number to the nect for the plots and frequencies

for range = [1, 3, 5, 10, 50, 500]        %frequency ranges
    amplitude = [];             % initializing the amplitude array
    time_domain = -1:0.01:1;    % time range

    for variableK = 1:2:range   % the range moves in 2s
        
        frequency_sum = (4/pi) * ((sin(2 * pi * variableK * time_domain))/variableK);
        
        amplitude = [amplitude (max(frequency_sum))];
        
    end
    variableK = (1:2:variableK);
    figure(1);
    
    count = count + 1;
    subplot(3, 2, count);
    
    stem(variableK, amplitude);
    
    title(['Approximate with ', num2str(range), ' sine functions '])
    
    xlabel ('frequency');
    ylabel('amplitude');
   
end
