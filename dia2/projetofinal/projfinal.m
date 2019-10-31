t = -0:0.0005:2*pi;
f = 0.75*cos(6*(t-1.5)).^2.*exp(-2*pi^2*(t-1.5).^2);

sampvec = sort(randi(length(t),1,floor(length(t)*0.5)));

newt = zeros(1,length(sampvec));
newf = newt;

newt(:) = t(sampvec);
newf(:) = f(sampvec);

plot(t,f,newt,newf)

fid = fopen('amplitudes.bin','w');
fwrite(fid,newf,'double');
fclose(fid);

fid = fopen('tempoamostras.bin','w');
fwrite(fid,newt,'double');
fclose(fid);

fid = fopen('amplitudes.bin','r');
a = fread(fid,[1 6283],'double');
fclose(fid);

fid = fopen('tempoamostras.bin','r')
b = fread(fid,[1 6283],'double');
fclose(fid);

plot(b,a)