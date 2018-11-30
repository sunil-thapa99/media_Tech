clc;
clear all;
mycolorarray = zeros(100, 180, 3);
figure(1), imshow(mycolorarray);
% Cast it so as to use byte representation
mycolorarray = uint8(mycolorarray);
% Fill the red plane with 255
mycolorarray(:, :, 1) = 255;
%  => For green
mycolorarray(:, :, 2) = 255;
% mycolorarray(:, :, 3) = 255; => For blue
figure(2), imshow(mycolorarray);
imwrite(mycolorarray, 'myColor.jpg');