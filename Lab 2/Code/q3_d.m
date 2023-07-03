
for r = 0:0.3:1;
theta = pi/3;

a = [1,-2* r * cos(theta), r*r];
b = [1,-2*cos(theta),1];


figure()
hold on
freqz(b,a,1001, "whole");

end