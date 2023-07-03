
for theta = 1:pi/3:pi;
r = 0.95;

a = [1,-2* r * cos(theta), r*r];
b = [1,-2*cos(theta),1];


figure()
hold on
freqz(b,a,1001, "whole");

end