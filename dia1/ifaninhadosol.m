a = 3;
b = 0;
c = 0;
maior = 0;
menor = 0;

if a ~= b & b ~= c
    if a > b & a > c
            maior = a;
        if c > b
            menor = b;
        else
            menor = c;
        end
    elseif b > a & b > c
            maior = b;
            if a > c
                menor = c;
            else
                menor = a;
            end
    elseif c > a & c > b
        maior = c;
        if a > b
            menor = b;
        else
            menor = a;
        end
    end
else
    disp('Erro, terminando execução');
    return %<- palavra reservada, termina execução do script
end

disp(['Maior valor: ' num2str(maior)])
disp(['Menor valor: ' num2str(menor)])  