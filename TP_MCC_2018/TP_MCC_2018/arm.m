function[]=spectro(f,t,h);
%    arm(f,t,F)
%	 f : Vector de las muestras que se desea analizar
%	     Es preferible que constituyan un numero entero de periodos 
%	 t : Vector tiempo de la funcion anterior
%	     Se tomaran un nro de muestras igual a un multiplo de 2 
%	 F : Rango de frecuencia que se desea visualizar
j=log10(length(t))/log10(2);
i=round(j);
if j<i
   i=i-1;
end,
N=2^i;
f=f(1:N);
T=t(N)-t(1);
Ts=t(2)-t(1);
ws=2*pi/Ts;
F=fft(f);
Fp=F(1:N/2+1)/N;
w=ws*(0:N/2)/N/2/pi;
i=1;
if h==0,
   h=2500;
end,	
while (w(i)<h)&(i<=N),
   i=i+1;
end,
	h=get(gcf,'CurrentAxes');
   plot(w(1:i),abs(2*Fp(1:i)),'color',[0.1 0.1 0.5],'LineWidth',1.2);
		ylabel('Iah','FontSize',8);
		xlabel('Frecuencia [Hz]','FontSize',8);
      h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
      h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
   grid  
   zoom      
end