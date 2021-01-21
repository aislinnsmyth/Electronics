load ('array.mat');

F=fftshift(abs(fft(y,N)));      %fftshift centres the transformation around 0 F stores fft transformation, 
%absolute value of the fft, y values in array, N from array

subplot (1,2,1);            %1=1 column, 2= rows, position 1
plot(newX,F);               %using newX as x, plotting F
subplot (1, 2, 2);          %1=1column, 2=rows. position 2
plot (y);                   % plot array; y 