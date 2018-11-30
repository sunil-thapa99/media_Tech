clc;
clear all;
mycolorarray = zeros(100, 180, 3);
mycolorarray(1:180, :, :) = 0;
% 1-60 width, turn red
mycolorarray(1:180, 1:60, 1) = 255;
% 61-120 width, turn green
mycolorarray(1:180, 61:120, 2) = 255;
% 121-180 width, turn blue
mycolorarray(1:180, 121:180, 3) = 255;
figure(1), imshow(mycolorarray);    

%Code 2 => Convert to grayscale
mycolorarray = double(mycolorarray);
mono_true_lum(:, :, 1)=0.3*mycolorarray(:, :, 1) + 0.59*mycolorarray(:, :, 2)+0.11*mycolorarray(:, :, 3);
mono_true_lum(:, :, 2)=mono_true_lum(:,:,1);
mono_true_lum(:, :, 3)=mono_true_lum(:,:,2);
figure(2), imshow(uint8(mono_true_lum));

% Code 1 
mycolorarray = double(mycolorarray);
mono_msoft(:, :, 1)=(max(mycolorarray(:,:,3),max(mycolorarray(:,:,1),mycolorarray(:,:,2))) + min(mycolorarray(:,:,3), min(mycolorarray(:,:,1),mycolorarray(:,:,2))))/2;
mono_msoft(:, :, 2)=mono_msoft(:,:,1);
mono_msoft(:, :, 3)=mono_msoft(:,:,2);
figure(3), imshow(uint8(mono_msoft));