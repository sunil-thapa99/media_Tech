clc;
clear all;
pkg load image;
A = imread('download1.bmp');
figure(1), imshow(A);

% Multithresh => value lower than 43 turn to 43, value greater than 183 turned to 255
threshRGB = multithresh(A,4); %Multilevel image thresholds threshRGB=[43 93 129 183]
quantRGB = imquantize(A, threshRGB, [threshRGB 255]); %Quantize image using specified quantization levels and output values
figure(2), imshow(quantRGB);