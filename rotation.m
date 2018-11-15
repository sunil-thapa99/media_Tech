xy = [0 60 80 85; 0 70 60 50; 1 1 1 1];
x = xy(1, 1:4);
y = xy(2, 1:4);
patch(x, y, 'r');

% produce rotated object 
% from 10 to 300 increment by 20
for th = 10:20:300
    % Rotation couter clockwise
    RT = [cosd(th) -sind(th) 0;
          sind(th) cosd(th) 0;
           0 0 1];
    xyp = RT*xy;
    x = xyp(1, 1:4);
    y = xyp(2, 1:4)
    y = xyp(2, 1:4)
    patch(x, y, 'b')
end

% To rotation clockwise use this instead
  % RT = [cosd(th) sind(th) 0;
%        -sind(th) cosd(th) 0;]