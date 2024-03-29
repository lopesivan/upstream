
% Universidade do Estado do Rio de Janeiro -UERJ
% Calculo Numerico

% Aula 2 - Noções de Programação para Computação Científica

% Prof. Americo Cunha
% Prof. Augusto Barbosa
% Prof. Luiz Mariano Carvalho
% Profa. Nancy Baygorrea


% Operações vetoriais e matriciais no GNU Octave

clc
clear

% vetores de trabalho
a = [1 2]
b = [-1 1]

% produto escalar entre dois vetores
dot(a,b)

% matrizes de trabalho
A = [1 2 3 4; 4 3 2 1; 5 6 7 8; 8 7 6 5]
B=[2 0 0 0; 0 3 0 0; 0 0 4 0; 0 0 0 5]

% determinante de uma matriz
det(A)

% matriz transposta
A'

% soma e diferença entre matrizes
A + B
B - A

% produto matricial
A*B

% produto de Hadamard
A.*B

% produto matriz vetor
b = [1; 1; 1; 1]
A*b

% blocos de matrizes
A1 = A(1:2,1:2)
A2 = A(1:2,3:4)
A3 = A(3:4,1:2)
A4 = A(3:4,3:4)

% matriz identidade
I = eye(5)

% matriz nula
Z = zeros(3,4)
