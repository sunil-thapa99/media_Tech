xy = [50 60 80 85 60; 60 70 60 50 40; 1 1 1 1 1];
% x, take 1st plane values from 1 to 5
x = xy(1, 1:5);
% y, take 2nd plane values from 1 to 5
y = xy(2, 1:5);
% draw the object with x and y co-ordinate with red color
patch(x, y, 'r');

% translate the shape
% tx = 30, ty = 30
RT = [1 0 30; 0 1 30; 0 0 1];
% Matrix multiplication => x` = x + tx
xyp = RT*xy;
x = xyp(1, 1:5);
y = xyp(2, 1:5);
patch(x, y, 'b');

% Scale up the shape
% Increase size by 2 times in both x and y axis
RT = [2 0 0; 0 2 0; 0 0 1];
xyp = RT*xy;
x = xyp(1, 1:5);
y = xyp(2, 1:5);
patch(x, y, 'g');

% Scale down the shape
% Decrease size by 0.5 times in both x and y axis
RT = [0.5 0 0; 0 0.5 0; 0 0 1];
xyp = RT*xy;
x = xyp(1, 1:5);
y = xyp(2, 1:5);
patch(x, y, 'g');