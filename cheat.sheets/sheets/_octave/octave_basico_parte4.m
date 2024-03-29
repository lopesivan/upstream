
% Universidade do Estado do Rio de Janeiro -UERJ
% Calculo Numerico

% Aula 2 - Noções de Programação para Computação Científica

% Prof. Americo Cunha
% Prof. Augusto Barbosa
% Prof. Luiz Mariano Carvalho
% Profa. Nancy Baygorrea


% Condicionais e laços

clc
clear

x = 2
y = 3

% condicional if
if x == y
    display('x e y sao iguais.')
else
    display('x e y sao diferente.')
end

x = 10
y = -2

% condicional if
if x == y || x < 0
    display('x e y sao iguais ou x eh negativo.')
else
    display('x e y sao diferente ou x nao eh negativo.')
end


N = 10
soma = 0.0
prod = 1.0

% laço tipo for
for i = 1:N
    soma = soma + 1
    prod = 1.2*prod
end

k = 0
N = 15
x = 0.0

% laço tipo while
while k <= N && x < 30.0
    x = x + sqrt(k)
    k=k+1
end


k = 0
N = 15
x = 0.0

% laço tipo while
while k <= N
    x = x + sqrt(k)
    k=k+1
end
