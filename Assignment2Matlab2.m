[notes,fsampling] = audioread('exercise notes.wav');        %given in q (brings note over)

timeDomain = 0:1:10000;         %time domain starting at 0 step of 1 till 10000

plot (timeDomain, notes);       %using the plot to check where the notes split.

n1 = transpose (0:1:6729);      % changes the note from a row matrix to a column matrix     
noteOne=notes (1:6730);

n2 = transpose (0:1:3271);      %changes the note from a row matric to a column matrix
noteTwo = notes (6730:10001);

subplot(2,2, 1);                %want 4 plots (2 columns 2 rows, position 1)
plot(n1, noteOne);         %n1= transpoe and noteOne is the note

subplot(2, 2, 2);
plot(n2, noteTwo);

% FFT 
 fftx = transpose (fsampling/-2:1:fsampling/2-1);   %makes the new x, formula he uses
 
 noteOne = fftshift(abs(fft(noteOne,fsampling)));   %fftshift centres the transformation around 0 F stores fft transformation,
 
 subplot (2, 2, 3);
 plot(fftx, noteOne);
 
 noteTwo = fftshift(abs(fft(noteTwo,fsampling)));
 
 subplot (2, 2, 4);
 plot(fftx, noteTwo);
 

