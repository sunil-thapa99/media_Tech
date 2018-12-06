clc;
clear all;

A = imread('download1.bmp');
figure(1), imshow(A);

% Change    120 on red plane
newImage = A;
newImage(20:60, :, 1) = newImage(20:60, :, 1) + 120;
figure(2), imshow(newImage); 