A = zeros(1,3); %<- pre-alocando espaco na memoria

for i = 1:3
    A(i) = input(['Digite um valor para a variavel ' num2str(i) ': ']);
end

disp(['Maior valor: ' num2str(max(A))])
disp(['Menor valor: ' num2str(min(A))])