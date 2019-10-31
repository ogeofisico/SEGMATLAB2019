arqv = 'dado1.txt';

A = load(arqv,'-ascii'); %<- alto nivel

% Codigo baixo nivel
fid = fopen(arqv,'r');

B = zeros(3);            %pre-alocando matriz
i = 1;                   %contador das linhas

while(~feof(fid))
    B(i,:) = str2num(fgetl(fid));
    i = i + 1;
end
