
val= get(findobj('Tag','popup_motor'),'Value');
if val == 1			%		"Motor A"
   set(findobj('Tag','parametro0'),'Visible','on','String','Pnom:')
   set(findobj('Tag','parametro1'),'String','Uan:')
   set(findobj('Tag','parametro2'),'String','Ian:')
   set(findobj('Tag','parametro3'),'String','Wn :')
   set(findobj('Tag','parametro4'),'String','La :')
   set(findobj('Tag','parametro5'),'String','Ra :')
   set(findobj('Tag','parametro6'),'String','Uen:')
   set(findobj('Tag','parametro7'),'String','Re :')
   
   set(findobj('Tag','renglon0'),'Visible','on','String','147.2 KW')
   set(findobj('Tag','renglon1'),'String','460 V')
   set(findobj('Tag','renglon2'),'String','320 A')
   set(findobj('Tag','renglon3'),'String','65.44rad/s')
   set(findobj('Tag','renglon4'),'String','3 mH')
   set(findobj('Tag','renglon5'),'String','0.05 ohm')
   set(findobj('Tag','renglon6'),'String','184 V')
   set(findobj('Tag','renglon7'),'String','25.2 ohm')
   %	Datos de armadura y rotacionales
   	Uan=460;          %Ua nominal [v]
   	La=3e-3;          %inductancia de armadura[Hy]
	   Ra=0.05;          %resistencia de armadura[Ohms]
   	Wn=65.44;         %velocidad nominal [rad/s]
	   b=1.1;            %roce viscoso [Nm seg]
   	J=15;             %inercia mecánica [kgm2]
   %¡Motor de excitación independiente!!
      Uen=184;          %ue nominal [v]
	   Re=25.2;          %resistencia de excitación [Ohms]
   	FlujoN=424.0672;  %flujo nominal [Wb] 
	   Ien=7.3015;       %corriente de excitación nominal
   	Km=0.016;         %constante del motor
   	Le=(408.5-382)/(8-6.2);
		Tcn= (FlujoN*Km/Ra)*Uan-((b*Ra+FlujoN^2*Km^2)/Ra)*Wn;
		Ian=(b/(b*Ra+FlujoN^2*Km^2))*Uan+(Km*FlujoN/(b*Ra+FlujoN^2*Km^2))*Tcn;
   %Cálculos auxiliares del motor
      Ta=La/Ra;
		Tr=J/b;
		Tm=Ra*J/((Km*FlujoN)^2+b*Ra);
	   Kn=Km*FlujoN;
	%Datos de sensores 
 		Tfi=8e-3; 				%Constante de tiempo del filtro [s]
 		Kti=1;					%Ganancia del filtro [ohm]
		Tpr=1.67e-3;			%Constante de tiempo del puente [s]
 		Kpr=20;					%Ganancia del puente 
 		Tfn=15e-3;				%Constante de tiempo del sensor de velocidad [s]
 		Ktn=0.06;				%Ganancia del sensor de velocidad [Vs]
   set(findobj('Tag','ListaSim_A'),'FontSize',7,'FontName','Arial')
   set(findobj('Tag','ListaSim_A'),'String','1) Diseño A Rotor Bloqueado|2) Rotor Bloqueado, PR(PT1)|3) Rotor Bloqueado, PR(Tiempo Muerto)|4) Rotor Bloqueado, PR(Tiempo Muerto), con escalón de fem|5) Motor Completo|6) Motor Completo, con cupla de fricción|6-b) Motor completo, Pulso de corriente de referencia|8_a) Rotor Bloqueado Zs=0 (Conmutado)|8_b) Motor Completo Zs=0 (Conmutado)|8_c) Rotor Bloqueado Zs no nula (Conmutado)|9) Lazo de corriente como PT1, Rotor Bloqueado Conmutado Zs no nula|10) DB Diseño lazo de velocidad|11) DB Diseño lazo de velocidad|12) DB Diseño, Escalones de velocidad de referencia y Torque de carga|13) DB Motor Completo Control en Cascada|14) DB Conmutado, Puente unidireccional|15) DB Conmutado, Puente con cuatro contactores')

      
elseif val == 2		% 		"MotorB"
	%Circuito de armadura
 		Uan=160;			 		%Tensión nominal de armadura [V]
 		Ra=1.2;					%Resistencia de armadura [Ohm]
		La=0.088;				%Inductancia de armadura [H]
 		Ian=5;					%Corriente nominal de armadura [A]
	%¡Máquina de imám permanente!
 		FlujoN=1;				%Flujo de excitación
		Kn=0.6;					%Constante de conversión [Nm/A]
 		Temn=70					;	%Torque electromotriz nominal [Nm]
 		Wn=150					;	%Velocidad nominal [rad/s]
		Tcn=Temn;				
 		b=0.01*Temn/Wn;		%Pérdidas por rotación
      b2=((Kn*FlujoN*Uan/Wn)-(Kn*FlujoN)^2)/Ra; 
      J=0.2;					%Inercia mecánica [kgm2]
	%Datos de sensores 
 		Tfi=8e-3; 				%Constante de tiempo del filtro [ms]
 		Kti=1;					%Ganancia del filtro [ohm]
		Tpr=5e-3;				%Constante de tiempo del puente [ms]
 		Kpr=20;					%Ganancia del puente 
 		Tfn=15e-3;				%Constante de tiempo del sensor de velocidad [ms]
 		Ktn=0.06;				%Ganancia del sensor de velocidad [Vs]
	%Cálculos auxiliares del motor
 		Ta=La/Ra;
 		Tr=J/b;
	 	Tm=Ra*J/(Kn^2+b*Ra);
      Tsigma=0.013;
      KpiMaxPlana=Ra*Ta/(Tsigma*Kpr*Kti*2);
      KpiSesenta=0.11282;       
      b=0.0114;  				%Rozamiento para carga tensión nominal y velocidad nominal   
   %Muestra en la figura    
   set(findobj('Tag','parametro0'),'Visible','on','String','Pnom:')
   set(findobj('Tag','parametro1'),'String','Uan:')
   set(findobj('Tag','parametro2'),'String','Ian:')
   set(findobj('Tag','parametro3'),'String','La :')
   set(findobj('Tag','parametro4'),'String','Ra :')
   set(findobj('Tag','parametro5'),'String','Wn :')
   set(findobj('Tag','parametro6'),'String','K  :')
   set(findobj('Tag','parametro7'),'String','')
   
	set(findobj('Tag','renglon0'),'Visible','on','String','0.8 KW')
   set(findobj('Tag','renglon7'),'String','')
   set(findobj('Tag','renglon1'),'String','160 V')
   set(findobj('Tag','renglon2'),'String','5 A')
   set(findobj('Tag','renglon3'),'String','88 mH')
   set(findobj('Tag','renglon4'),'String','1.2 ohm')
   set(findobj('Tag','renglon5'),'String','1860 rpm')
   set(findobj('Tag','renglon6'),'String','0.6 Nm/A')
   
   set(findobj('Tag','ListaSim_B'),'FontSize',7,'FontName','Arial')
   set(findobj('Tag','ListaSim_B'),'String','1) Diseño A Rotor Bloqueado|2) Rotor Bloqueado, PR(PT1)|3) Rotor Bloqueado, PR(Tiempo Muerto)|4) Rotor Bloqueado, PR(Tiempo Muerto), con escalón de fem|5) DB Motor Completo|6) DB Motor Completo, con cupla de fricción|||9) Lazo de corriente como PT1,DB Rotor Bloqueado PR(Tiempo Muerto)')
        
elseif val == 3
   % datos del motor
 		Un=380;			 		%Tensión nominal [V]
 		Rs=0.731;				%Resistencia de estator [Ohm]
 		Rr=0.415;				%Resistencia de rotor [Ohm]
		LS=0.08694;				%Inductancia de estator [H]
		LR=0.08762;				%Inductancia de rotor [H]
 		In=21.62;				%Corriente nominal [A]
 		Insincarga=8;			%Corriente sin carga [A]
 		Tmax=205;				%Torque máximo	[Nm]
        Tnom=70; 				%Torque nominal  [Nm]
        NP=2;						%Pares de polos
 		Wn=1430 ;				%Velocidad nominal [rpm]
 		Wn=3000 ;				%Velocidad máxima [rpm]
      fnom=50;					%Frecuencia nominal [Hz]
      M=0.08422;				%Inductancia mutua [H]
      J=0.15;					%Inercia mecánica [kgm2]
      B=0.005;					%Pérdidas por rotación_ coeficiente de rozamiento
      
   %Cálculos auxiliares del motor
   	ALFA=4.7364;
      BETA=150.5186;
      B=0.1;					%???????????????????????????
      GAMA=125.9868;
      CD=0.048;
      LD=0.001;
      MU=8.544;
      RF=0;
      SIGMA=0.0689;
   %muestra en la figura   
   set(findobj('Tag','parametro0'),'Visible','on','String','Pnom:')
   set(findobj('Tag','parametro1'),'String','Unom:')
   set(findobj('Tag','parametro2'),'String','Inom:')
   set(findobj('Tag','parametro3'),'String','Tnom:')
   set(findobj('Tag','parametro4'),'String','fnom:')
   set(findobj('Tag','parametro5'),'String','Wnom:')
   set(findobj('Tag','parametro6'),'String','Wmáx:')
   set(findobj('Tag','parametro7'),'String','NP  :')
      
   set(findobj('Tag','renglon0'),'Visible','on','String','11 KW')
   set(findobj('Tag','renglon1'),'String','380 V')
   set(findobj('Tag','renglon2'),'String','21.62 A')
   set(findobj('Tag','renglon3'),'String','70 Nm')
   set(findobj('Tag','renglon4'),'String','50 Hz')
   set(findobj('Tag','renglon5'),'String','1430 rpm')
   set(findobj('Tag','renglon6'),'String','3000 rpm')
   set(findobj('Tag','renglon7'),'String','2')
   
   set(findobj('Tag','ListaSim_MI'),'FontSize',7,'FontName','Arial')
   set(findobj('Tag','ListaSim_MI'),'String','1) PWM, llaves ideales|2) PWM, llaves ideales|3) PWM, llaves con tiempo muerto|4) PWM, llaves con tiempo muerto|5) PWM, compensado|||')
 
else 
   set(findobj('Tag','renglon0'),'Visible','on','String','')
   set(findobj('Tag','renglon1'),'String','')
   set(findobj('Tag','renglon2'),'String','')
   set(findobj('Tag','renglon3'),'String','')
   set(findobj('Tag','renglon4'),'String','')
   set(findobj('Tag','renglon5'),'String','')
   set(findobj('Tag','renglon6'),'String','')
   set(findobj('Tag','renglon7'),'String','')
       
end 


