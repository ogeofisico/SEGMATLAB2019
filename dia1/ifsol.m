
a = 3;
b = 0;
c = 0;
maior = 0;
menor = 0;

if a > b & a > c & b > c
    maior = a;
    menor = c;
elseif a > b & a > c & b < c
    maior = a;
    menor = b;
elseif b > c & b > a & a > c
    maior = b;
    menor = c;
elseif b > c & b > a & a < c
    maior = b;
    menor = c;
elseif c > b & c > a & a > b
    maior = c;
    menor = b;
elseif c > b & c > a & a < b
    maior = c;
    menor = b;
else
    disp('Erro, terminando execução');
    return %<- palavra reservada, termina execução do script
end

disp(['Maior valor: ' num2str(maior)])
disp(['Menor valor: ' num2str(menor)])    