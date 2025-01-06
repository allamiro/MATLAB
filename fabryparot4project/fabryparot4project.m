%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fabry-Perot: Transmitted Intensity vs. Phase K
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; close all; clc;

% Define phase range
K = -10:0.01:10;

% Helper function for transmitted intensity
fp_intensity = @(r, K) 1 ./ (1 + (4*r.^2 ./ (1-r.^2).^2) .* sin(K/2).^2);

% Mirror reflectivities to compare
reflectivities = [0.75, 0.85, 0.99];
colors = [0.8 0.1 0.8; 0.1 0.7 0.7; 0.0 0.0 0.0]; % For plotting

figure('Name','Fabry-Perot Transmitted Intensity');
hold on; grid on;

for i = 1:length(reflectivities)
    r = reflectivities(i);
    I = fp_intensity(r, K);
    plot(K, I, 'LineWidth', 2, 'Color', colors(i,:), ...
        'DisplayName',['r = ', num2str(r)]);
end

axis([-10, 10, 0, 1.1]);
xlabel('K = 2 k d \mu cos(\theta)');
ylabel('I(K)');
title('Transmitted Intensity of a Fabry-Perot Interferometer');
legend('show');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Finesse vs. Mirror Reflectivity
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure('Name','Finesse vs. Reflectivity'); 
hold on; grid on;

rVals = 0.5:0.005:0.99;
F = pi * sqrt(rVals) ./ (1 - rVals); % Standard approximate finesse

plot(rVals, F, 'LineWidth', 2, 'Color', [0.2 0.5 0.9]);
xlabel('Mirror Reflectivity, R');
ylabel('Finesse, F');
title('Finesse vs. Mirror Reflectivity');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Contrast Factor vs. Mirror Reflectivity
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure('Name','Contrast Factor vs. Reflectivity');
hold on; grid on;

FFC = 4 * rVals.^2 ./ (1 - rVals.^2).^2; % Contrast factor
plot(rVals, FFC, 'LineWidth', 2, 'Color', [0.9 0.3 0.3]);
ylim([-20, 800]);
xlabel('Mirror Reflectivity, R');
ylabel('Contrast Factor, FFC');
title('Contrast Factor vs. Mirror Reflectivity');
