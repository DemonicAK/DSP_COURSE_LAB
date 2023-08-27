% sin

t=0:0.1:2*pi;
y=sin(t);
subplot(5,1,1);
stem (t, y);



t = -2 : 0.2 : 2;
% impluse

impulse = t==0;
subplot(5,1,2);
stem(t,impulse);

% unit step
unitstep = t>=0;
subplot(5,1,3);
stem(t,unitstep);

% ramp
ramp = t.*unitstep;
subplot(5,1,4);
stem(t,ramp);

% exponential

t = 0: 0.3 : 10;
expo=exp(t);
subplot(5,1,5);
stem(t,expo);


