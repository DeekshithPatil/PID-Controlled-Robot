%linear speed (vx) = radius*angular velocity
%angular velocity w = ((rpm*2pi rad/rev)/(60sec/min))
%vx= r*w

%s=vx*t+(a*t^2)/2 // calculate for a, using this equation

vx=10.99;
vy=0;
a=6.06;
g=9.8;
t=0:0.02:1.42;
h1=[];
h2=[];
figure

rectangle('Position',[-1 0 1 1])
axis([-5 10 0 10])
for i=1:length(t)
  delete(h1);
  delete(h2);
  x=vx*t(i)-(a*t(i)^2)/2;   %for vehicle
  y=0;
  bx=10;
  by=10-(g*t(i)^2)/2        % for ball
  hold on;
  h1=rectangle('Position',[x 0 1 1])
  %plot(x,y,'o','MarkerFaceColor','b')
  h2=plot(bx,by,'o','MarkerFaceColor','b')
  hold off;
  %axis equal
  xlim([0 15])
  ylim([0 15])
  grid on
  drawnow
end