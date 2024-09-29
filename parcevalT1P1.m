% Número de términos para la suma (ajustar según precisión requerida)
N = 100000000;

% Inicializa la suma
suma = 0;

% Constante pi
pi_val = pi;

% Bucle para sumar los términos
for n = 1:N
    term = (16 / (pi_val^4 * n^4)) * (2 - 2 * (-1)^n);
    suma= suma + term;
end

Px = suma / 2;
% Muestra el resultado
disp(['El valor aproximado de la serie es: ', num2str(Px)]);