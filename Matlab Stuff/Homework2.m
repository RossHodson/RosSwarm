%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Homework 1
clc

A1 = [0,1,1,0;
    1,0,1,0;
    1,1,0,0;
    0,0,0,0]

A2 = [0,1,0,1;
    1,0,0,0;
    0,0,0,1;
    1,0,1,0]

A3 = [0,1,0,0;
    1,0,0,0;
    0,0,0,1;
    0,0,1,0]

coords = [1,1;
    1,2;
    2,1;
    2,2]

gplot(A1,coords,'-*')
figure
gplot(A2,coords,'-*')
figure
gplot(A3,coords,'-*')


%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Homework 2  First part (1D CONVERGANCE)
clc

x = zeros(5,10)
x(:,1) = [3;
    4;
    6;
    8;
    1]

figure
hold on

for i=1:9
    for j=1:5
        plot(i,(x(j,i)),'-*','MarkerSize', 10)
    end

    a = x(1,i)
    b = x(2,i)
    c = x(3,i)
    d = x(4,i)
    e = x(5,i)

    u = [b+e-2*a;
        a+c-2*b;
        b+d-2*c;
        c+e-2*d;
        a+d-2*e]
    u = 0.333*u

    x(:,i+1) = x(:,i)+u
end

%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Homework 2  Second part (2D CONVERGANCE)
clc

x = zeros(5,20)
x(:,1) = [-2;
    -4;
    1;
    7;
    5]

y = zeros(5,20)
y(:,1) = [-5;
    2;
    6;
    0;
    -6]

figure
hold on

for i=1:19
    for j=1:5
        plot((x(j,i)),y(j,i),'-*','MarkerSize', 10, 'Color', [0.05*i 0.005*i 0.009*i])
    end

    ax = x(1,i)
    bx = x(2,i)
    cx = x(3,i)
    dx = x(4,i)
    ex = x(5,i)

    ux = [bx+ex-2*ax;
        ax+cx-2*bx;
        bx+dx-2*cx;
        cx+ex-2*dx;
        ax+dx-2*ex]
    ux = 0.2*ux

    ay = y(1,i)
    by = y(2,i)
    cy = y(3,i)
    dy = y(4,i)
    ey = y(5,i)

    uy = [by+ey-2*ay;
        ay+cy-2*by;
        by+dy-2*cy;
        cy+ey-2*dy;
        ay+dy-2*ey]
    uy = 0.2*uy

    x(:,i+1) = x(:,i)+ux
    y(:,i+1) = y(:,i)+uy
end

%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Homework 2 Third part Different Sigma Values
clc

sigma = 0.2
kmax = 50

x = zeros(5,kmax)
x(:,1) = [-5;
    -2;
    -7;
    1;
    11]

figure
hold on

for i=1:(kmax-1)
    for j=1:5
        plot(i,(x(j,i)),'-*','MarkerSize', 10)
    end

    a = x(1,i)
    b = x(2,i)
    c = x(3,i)
    d = x(4,i)
    e = x(5,i)

    u = [b+e-2*a;
        a+c-2*b;
        b+d-2*c;
        c+e-2*d;
        a+d-2*e]
    u = u*sigma

    x(:,i+1) = x(:,i)+u
end