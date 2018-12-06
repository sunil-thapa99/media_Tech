clc;
clear all;

A = imread('download1.bmp');
figure(1), imshow(A);

B = imread('download2.bmp');
figure(2), imshow(B);

C = imread('download3.bmp');
figure(3), imshow(C);

% operator to select certain rows only
newim1= A( 5:50, : , :); 
figure(4), imshow(newim1); 

% operator to select certain columns only
newim2= A( :, 20:80 , :); 
figure(5), imshow(newim2);

% cropping part of the image
newim3= A( 5:50, 20:80 , :); 
figure(6), imshow(newim3);

% Piecing two images together row wise
newim4 = [B( 20:80, : , :)  ; C(20:80,:,:)];
figure(7), imshow(newim4);
 
% Piecing two images together column wise
newim5 = [B( :, 60:110, : )   C( :, 50:100,:)];
figure(8), imshow(newim5);

% Increase  brightness
bright = A + 50;
figure(9), imshow(bright);

% Increase Contrast
contrast = A * 2;
figure(10), imshow(contrast);