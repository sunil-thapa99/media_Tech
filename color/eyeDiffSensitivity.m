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

mycolorarray(:, 1:180, :) = 0;
% 1-60 width, turn red
mycolorarray(1:60, 1:180, 1) = 255;
% 61-120 width, turn green
mycolorarray(61:120, 1:180, 2) = 255;
% 121-180 width, turn blue
mycolorarray(121:180, 1:180, 3) = 255;
figure(2), imshow(mycolorarray);    

