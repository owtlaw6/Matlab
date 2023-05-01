function [t,y]=euler2(inter,y0,n)
t(1)=inter(1);
y(1,:)=y0;
h=(inter(2)-inter(1))/n;
for i=1:n
    t(i+1)=t(i)+h;
    y(i+1,:)=eulerstep(t(i),y(i,:),h);
end
plot(t,y(:,1),t,y(:,2));
function y=eulerstep(t,y,h)
y=y+h*ydot(t,y);
function z=ydot(t,y)
%z(1)=y(2)^2-2*y(1);%}
%z(2)=y(1)-y(2)-t*y(2)^2;%}
z(1) = y(1) + 3 * y(2);
z(2) = 2 * y(1) + 2 * y(2);