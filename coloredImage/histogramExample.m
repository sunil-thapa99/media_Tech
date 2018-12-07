clc;
clear all;
close all;
pkg load image;
A = imread('download1.bmp');

% Getting row, columns and number of color bands from A image
[rows, columns, nmberOfColorBands] =   size(A);
% Subplot is used to show image in one figure, "help subplot"
% subplot(rows, cols, index)
subplot(3, 2, 1);
imshow(A, []);
title('Original Color Image');

redPlane = A (:, :, 1);
greenPlane = A(:, :, 2);
bluePlane = A(:, :, 3);
grayscale = rgb2gray(A);

% Let's get its histrogram
% Count number red on each pixels, count number of red from 0-255
[pixelCountR, grayLevelsR] = imhist(redPlane);
subplot(3, 2, 2);
% Stem => fill with color r for pixelCountR while displaying the graph
stem(pixelCountR, 'r');
title('Histogram of red plane');
xlim([0 grayLevelsR(end)]); % Scale X axis manually

[pixelCountG, grayLevelsG] = imhist(greenPlane);
subplot(3, 2, 3);
stem(pixelCountG, 'g');
title('Histogram of green plane');
xlim([0 grayLevelsG(end)]); % Scale X axis manually

[pixelCountB, grayLevelsB] = imhist(bluePlane);
subplot(3, 2, 4);
stem(pixelCountB, 'b');
title('Histogram of blue plane');
xlim([0 grayLevelsB(end)]); % Scale X axis manually

[pixelCountgray, grayLevelsgray] = imhist(grayscale);
subplot(3, 2, 5);
stem(pixelCountgray, 'y');
title('Histogram of Yellow plane');
xlim([0 grayLevelsgray(end)]); % Scale X axis manually

redPlane = redPlane + 50;
[pixelCountR, grayLevelsR] = imhist(redPlane);
subplot(3, 2, 6);
stem(pixelCountR, 'r');
title('Red plane after increasing brightness');
xlim([0 grayLevelsR(end)]); % Scale X axis manually
