theta = pi/3;
r = 0.95;

a = [1,-2* r * cos(theta), r*r];
b = [1,-2*cos(theta),1];
zplane(b,a);
title('Pole-Zero Plot')