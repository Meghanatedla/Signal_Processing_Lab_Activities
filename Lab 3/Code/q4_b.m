syms theta;
syms z;
syms r;

hz = (z^2 - 2*z*cos(theta) + 1)/(z^2 - 2*z*r*cos(theta) + r^2);
hn = iztrans(hz);
disp(hn);