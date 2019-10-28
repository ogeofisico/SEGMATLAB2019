x0 = 0.5;
y0 = 0.3;
pontos = rand(2,100);
dist = distancia(pontos,x0,y0);

if strcmp(dist,'Erro') %<- Testa se a função distancia calculou
                       %   corretamente as distancias.
    return
end

menor = dist(i);

for i = 1:length(dist)
    if menor > dist(i)
        menor = dist(i);
    end
end
%min(dist); <- Usando essa função eliminamos a necessidade do
%              laço for.
disp(['Menor distância entre P e ('...
     num2str(x0) ','  num2str(y0) '): ' num2str(menor)])