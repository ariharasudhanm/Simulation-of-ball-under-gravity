clear all
clc

% This is a simualtion of a ball under gravity


dt = 1/30;
g = 9.81;
end_time = 10;
nts= end_time/dt;
%Initial Condition
ts = 1;  % Time step
x(ts) = 0;
y(ts) = 0;
vx(ts) = 30;
vy(ts) = 20;
t(ts)= 0;




for ts = 2: nts
%while y(ts)>=0
 %   ts = ts + 1; 
    t(ts)= (ts-1)*dt;
    
    vx(ts) = vx(ts-1);
    vy(ts) = vy(ts-1) -g*dt;
    
    x(ts)= x(ts-1) + vx(ts)*dt;    
    y(ts)= y(ts-1) + vy(ts)*dt;
    
    if y(ts)<0 
        y(ts) = - y(ts);
        vy(ts) = -vy(ts)*0.5;
    end
    plot(x(ts),y(ts),'o-',x,y,'b-',0,-5,250,50);
    getframe
    
end