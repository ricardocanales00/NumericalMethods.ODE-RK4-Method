%Initial value
x_ini = input('Input initial x-value: ')
y_ini = input('Input initial y-value: ')

%H-value
h = input('Input h-value: ')

%function to integrate
f = input('Input function to integrate: ')

%final x-value
x_fin = input('Input final x-value: ')

n=((x_fin-x_ini)/h);

x(1) = x_ini;
y(1) = y_ini;

for i=1:n
    k1 = f(x(i),y(i));
    k2 = f(x(i)+.5*h,y(i)+.5*k1*h);
    k3 = f(x(i)+.5*h,y(i)+.5*k2*h);
    k4 = f(x(i)+h,y(i)+k3*h);
    y(i+1) = y(i)+((k1+2*k2+2*k3+k4)/6)*h;
    x(i+1) = x(i)+h;
end

disp('Final y-value: ');
disp(y(n+1));
plot(x,y)