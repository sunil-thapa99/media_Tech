clc;
clear all;
close all;

pkg load image;

% Image bit depth must be atleast 24 i.e (r=8xb=8xg=8)

input_matrix = rgb2gray(imread('Capture001.png'));
[rows, cols] = size(input_matrix);
imshow(input_matrix);
%rotation
degree = 15;
radians = (pi*degree)/180;
theta = radians;

%output matrix
t_matrix = uint8(zeros(rows, cols));

%transformation matrix
T = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 1; 0 0 1];

% loop over each input_matrix co-ordinate
% numel return number of elements in an array 
for n=1:numel(input_matrix)
   % current coordinate
   % help ind2sub
   % ind2sub => Subscripts from linear index
   [x, y] = ind2sub([rows cols], n);
   v = [x;y;1];
   v = T * v;
   %only integer values
   a = floor(v(1));
   b = floor(v(2));
   if a > 0 && b >0
     % replace in matrix
     t_matrix(a, b) = input_matrix(x, y);
   end
end 
imshow(t_matrix)