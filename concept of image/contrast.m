% Contrast => subtraction of maximum and minimum value  
clc;
clear all;        
close all;
r = imread('image1.jpg');
figure(1), imshow(r);
% Trying to increase contrast of an image
j = r*2;
figure(2), imshow(j);
% Trying to decrease contrast of an image
k = r * 0.6;
figure(3), imshow(k);
% maps the intensity values in grayscale image I to new values in J such that 
% 1% of data is saturated at low and high intensities of I. 
% This increases the contrast of the output image J

w = imadjust(r); % Distributes fairly
figure(4), imshow(w);
figure(5), imhist(j, 64);