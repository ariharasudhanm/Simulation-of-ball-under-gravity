clear all
clc

% This is a simualtion of a ball under gravity with few assumptions%

dt = 1/40; % Frames per seconds%
g = 9.81; % Gravity in m/s^2%
end_time = 10; % End time of the simulation%
nts= end_time/dt; %number of time steps (total time period of study)%

%Initial Condition 
ts = 1;  % Time step%
x(ts) = 0; % ball at x position%
y(ts) = 0; % ball at y position%
vx(ts) = 30; % Velocity of the ball with respect to time in x direction%
vy(ts) = 20; % Velocity of the ball with respect to time in y direction%
t(ts)= 0; % intial time of study%



for ts = 2: nts
%while y(ts)>=0
 
    t(ts)= (ts-1)*dt; % time steps %
    
    vx(ts) = vx(ts-1); % velocity in x direction along time steps%
    vy(ts) = vy(ts-1) -g*dt; % velocity in y direction along time steps%
    
    x(ts)= x(ts-1) + vx(ts)*dt; % position in x direction along time steps%     
    y(ts)= y(ts-1) + vy(ts)*dt;  %position in y direction along time steps%
     
    % Assuming when the ball hit the ground, 50 percent of energy is absorbed for
    % each bounces
    
      if y(ts)<0 
        y(ts) =  -y(ts); 
        vy(ts) = -vy(ts)*0.5;
    end
    plot(x(ts),y(ts),'o',x,y,'b-',0,-5,250,50);
    xlabel 'time(s)'; ylabel 'Distance (metres)'
    getframe
    
end