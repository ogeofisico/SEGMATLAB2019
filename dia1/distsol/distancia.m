function D = distancia(P,x0,y0)
% Calcula a distância entre os pontos da Matriz P e (x0,y0).
% A primeira linha contém as posições x e a segunda
% as posições de y.

np = size(P,2);
D = zeros(1,np); %<- inicializando a matriz
if size(P,1) == 2
    % Podemos vetorizar essa linha, pois as operações
    % são do tipo SIMD. Note que a operação de exponenciação
    % deve ser ponto a ponto.
    %
    % D(:) = sqrt((P(1,:)-x0).^2 + (P(2,:)-y0).^2);
    for i = 1:np
        D(i) = sqrt((P(1,i)-x0)^2 + (P(2,i)-y0)^2);
    end
else
    disp('Matriz deve conter duas linhas.')
    D = 'Erro';
end
end