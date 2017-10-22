
K = -10:0.01:10;
r1 = 0.75;
F = 4 * r1^2 / (1 - r1^2)^2;
I1 = 1 ./ (1 + F * sin(K /2).^2);
figure(1)

plot(K , I1 , 'linewidth' , 2 , 'color' , [0.8 , 0.1 ,0.8]);
grid on
hold on
r2 = 0.85;
F = 4 * r2^2 / (1 - r2^2)^2;
I2 = 1 ./ (1 + F * sin(K /2).^2);

plot(K , I2 , 'linewidth' , 2 , 'color' , [0.1 , 0.7 ,0.7]);
hold on
r3 = 0.99;
F = 4 * r3^2 / (1 - r3^2)^2;
I3 = 1 ./ (1 + F * sin(K /2).^2);

plot(K , I3 );
axis([-10,10, 0 , 1.1]);
xlabel('K = fxtaw=2 k d \mu cos \theta');
ylabel('I(K)');
title('The Transmitted Intensity of a Fabry-Perot Interferometer');
figure(2)
r11=.5:.005:.99;
FF = 3.14 * sqrt(r11) ./ (1 - r11);
plot(r11,FF)
xlabel('Mirror Reflectivity R');
ylabel('Finesse FR');
title('Reflectivity Finesse versus Mirorr Reflectivity R');
grid on
figure(3)
FFC = 4 * r11.^2 ./ (1 - r11.^2).^2;
plot(r11,FFC)
ylim([-20 800]) 
xlabel('Mirror Reflectivity R');
ylabel('Contrast Factor FFC');
title('Contast Factor versus Mirorr Reflectivity R');
grid on


