clear all;
clc;
%datatype=double;
%FILENAME='audio.wav'
%SAVENAME=''
%FS is scalar, snd is VECTOR
[snd,FS]=audioread('lol.wav');
audiosize=size(snd);  
%Get left channel/sound
leftchannel=snd(:,1);
%Get right channel/sound
rightchannel=snd(:,2);
START=1;
END1=audiosize(1);
sound(snd,FS);
%Doubling the sample sound
sound(snd,2*FS);

sound(leftchannel,FS);
sound(rightchannel,FS);
forcemono=[leftchannel,zeros(size(leftchannel))];

sound(forcemono,FS);
%play half the sound
sound(snd(START:round(END1/2)),FS);
%1 sec to 2sec
firstcut=leftchannel(1:FS*2);
%volume decrease by 0.2
secondcut=leftchannel(FS*3:FS*5)*0.2;
sound(secondcut,FS);
%volume increase by 2
thirdcut=leftchannel(FS*6:FS*7)*2;
%Join all the sound
newedit=[firstcut;secondcut;thirdcut];
figure(1),plot(snd);
figure(2),plot(newedit);
audiowrite(newedit,FS,SAVENAME);
sound(newedit,FS);

%create audio file
% sampling frequency
FS = 44.1e3;
t = 0:1/FS:1-1/FS;
x = cos(2*pi*2000*t) + 1/2*sin(2*pi*4000*(t-pi/4))+1;
[P,Q] = rat(48e3/FS);
xnew = resample(x,P,Q);
P44_1 = audioplayer(x,44100);
P48 = audioplayer(xnew,48000);
play(P44_1);
play(P48);
devinfo = audiodevinfo();
info = audioinfo('road.wav');


