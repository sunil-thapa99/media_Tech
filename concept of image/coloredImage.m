clc;
clear all;
close all;
pkg load image;
% Load image package to run rgb2gray
r = imread('image1.jpg');
figure(1), imshow(r);
% Increase brightness of image
j = r + 45;
figure(2), imshow(j);
% Decrease brightness of image
k = r - 45;
figure(3), imshow(k);