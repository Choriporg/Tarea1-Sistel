%Armónicos
n1 = 1;
n2 = 2;
n3 = 3;

%Periodo
Ts = 0.01;
T = -5:Ts:5;

armonico1 = ((exp(1i * pi * n1) - exp(-1i * pi * n1))/(2*1i*pi*n1) + 2/(1i*pi*n1)) * exp(-1i*pi*n1*T);
armonico2 = ((exp(1i * pi * n2) - exp(-1i * pi * n2))/(2*1i*pi*n2) + 2/(1i*pi*n2)) * exp(-1i*pi*n2*T);
armonico3 = ((exp(1i * pi * n3) - exp(-1i * pi * n3))/(2*1i*pi*n3) + 2/(1i*pi*n3)) * exp(-1i*pi*n3*T);
serie_fourier = armonico1 + armonico2 + armonico3;
%Gráficas
plot(T, serie_fourier);
yline(0)
ylabel("x(t)")
xline(0)
xlabel("Tiempo")