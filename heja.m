clc;
clear all;
close all;
pkg load image;
I = imread('image.jpg');
%Changing BRightness
figure(1),imshow(I);
J = I + 45;
figure(2),imshow(J);
K = I - 45;%decreasing the value of pixel to decrease brightness,value of intensity
figure(3),imshow(K);
L = I - 300;% though -300, nut min lmit is 0 so it takes 0
figure(4),imshow(L);

%changing Contrast
%diff of max and min in final modified image
I = rgb2gray(imread('image.jpg'));
figure(1),imshow(I);
J = I * 1.2;
%figure(2),imshow(J);
figure(2),imhist(J);


J = imadjust(I);%maps the intensity values in grayscale image such that 1% of data is saturated at low and high intensities of IThis increases the contrast of the output image.
figure(2),imshow(J);
figure(3),imhist(J,64);