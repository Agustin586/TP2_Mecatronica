clc,clear all;

%	Datos de armadura y rotacionales
 
   	Uan=460;          %Ua nominal [v]
   	La=3e-3;          %inductancia de armadura[Hy]
	Ra=0.05;          %resistencia de armadura[Ohms]
   	Wn=65.44;         %velocidad nominal [rad/s]
   	J=15;             %inercia mecánica [kgm2]
    Ian=320;            %Vorriente nominal de armadura [A]
    Km=6.78;         %constante del motor
    
    
%¡Motor de excitación independiente!!

    FlujoN=408.5;  %flujo nominal [Wb] 
	Re=25.2;          %resistencia de excitación [Ohms]
   	Len=63.5;         %inductancia de excitación de campo zona lineal [H]

	    
	%Datos de sensores 
    Tpr=1.67e-3;			%Constante de tiempo del puente [s]
    Kpr=20;                  %Ganancia del puente 
 	Kti=1;					%Ganancia del filtro [ohm]
 	Tfi=8e-3; 				%Constante de tiempo del filtro [s]
 	Tfn=15e-3;				%Constante de tiempo del sensor de velocidad [s]
 	Ktn=0.06;				%Ganancia del sensor de velocidad [Vs]
 
    % II)1)a)-Determinacion de parámetros sistémicos
    Ta=La/Ra;
	%Tr=J/b;
	Tm=Ra*J/((Km)^2);
    if Tm >=10*Ta 
        fprintf('Tm >> Ta\n')
    else
        fprintf('Tm comparable a Ta\n')
    end    
    
    Tsigma=Tfi+Tpr;
    % II)1)b)-Determinacion de parámetros fem y torque nominales
   
    En=Km*FlujoN*Wn;
    %fprintf('Fem= %f\n',En);
    Ien=7;              %corriente de excitación nominal [A]
    Uen=Ien*Re;          %ue nominal [v]
    
    TC=Km*FlujoN*Ian;    %Torque nominal de carga sin considerar rozamiento
    
    % II)1)c)-Determinacion de parámetros del controlador
    
    Ti=Ta;
    
    Kp1= (Ra/(Kpr*Kti))*(Ta/Tsigma)*(tan(((pi/2)-(pi/6)/(cos((pi/2)-(pi/6))))));%MP=30
    Kp2= (Ra/(Kpr*Kti))*(Ta/Tsigma)*(tan(((pi/2)-(pi/4)/(cos((pi/2)-(pi/4))))));%MP=45
    Kp3= (Ra/(Kpr*Kti))*(Ta/Tsigma)*(tan(((pi/2)-(pi/3)/(cos((pi/2)-(pi/3))))));%MP=60


    %Optimo simetrico
    psi=sqrt(2)/2;
    Kpi= (Ra/(Kpr*Kti))*(Ta/Tsigma)*(1/(4*psi^2));
    
    % II)1)d)-Coeficiente b
    
    %T=Tb=Tn
    %wn*b=Tn
    b=(Km*FlujoN*Ian)/Wn;   %Torque nominal sobre velocidad nominal
    
    
    % II)2) - datos
    
    b0=0;
    b1=1.1;
    b2=49.7;
   
    % II)2)a)- Kci y Tci
    
    Tci= 4*(Tpr+Tfi);
    Kci=1/Kti;
    
    
    % II)2)b)- Kpn y Tin
    
    Tc= Tfn+Tci;
   
    Tln=Tc*(1+2*psi)^2;
    
    Wcn=1/Tln;
    
    Kpn=J*Wcn/(Kci*Km*Ktn);
    
    
    Kn=Km;




    
    
    
    
    