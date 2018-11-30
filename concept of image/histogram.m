% Graphical representation that presents value representing the color of image
clc;
clear all;
close all;
r = imread('image1.jpg');
figure(1), imhist(r)

j = r * 0.6;
figure(2), imhist(j);

k = round(r*1.2);
figure(3), imhist(k);