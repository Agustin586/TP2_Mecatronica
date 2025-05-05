%	SIMULACIONES SEGÚN EL MOTOR ELEGIDO
me=get(findobj('Tag','popup_motor'),'Value');

if me==1							% MOTOR A
    val1=get(findobj('Tag','ListaSim_A'),'Value');    
        
    if val1 == 1				% SIMULACIÓN 4-1/A
     	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi (1º) =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','TIi  (1º) = ')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','Kpi (2º) =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on')

      set(findobj('Tag','variable5'),'Visible','on','Enable','on')
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta5'),'String','TIi  (2º) =')

      set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta6'),'String','Tsigma =')
   	set(findobj('Tag','variable6'),'Visible','on','Enable','on','String','0.00967')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')

 	elseif val1 == 2      		%SIMULACIÓN 4-2/A
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi (1º) =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','TIi  (1º) = ')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','Kpi (2º) =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on')

      set(findobj('Tag','variable5'),'Visible','on','Enable','on')
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta5'),'String','TIi  (2º) =')

      set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta6'),'String','Tpr =')
   	set(findobj('Tag','variable6'),'Visible','on','Enable','on','String',Tpr)
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')

 	elseif val1 == 3      	% SIMULACIÓN 4-3/A
  	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi (1º) =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','TIi  (1º) = ')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','Kpi (2º) =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on')

      set(findobj('Tag','variable5'),'Visible','on','Enable','on')
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta5'),'String','TIi  (2º) =')

	   set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta6'),'String','Tpr =')
   	set(findobj('Tag','variable6'),'Visible','on','Enable','on','String',Tpr)
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
    
 	elseif val1 == 4     % SIMULACIÓN 4-4/A
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta2'),'String','Kpi =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','TIi =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','e =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','')
        
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta5'),'String','t(fem)=')
   	set(findobj('Tag','variable5'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','')
	   set(findobj('Tag','variable6'),'Visible','off','Enable','off')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
      
   elseif val1 == 5      	% SIMULACIÓN 4-5/A
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
	  	set(findobj('Tag','etiqueta2'),'String','Kpi')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')

	   set(findobj('Tag','fijo3'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta3'),'String','TIi')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
	 	set(findobj('Tag','fijo4'),'Visible','on','Enable','on','String',Kn)
   	set(findobj('Tag','etiqueta4'),'String','Kn =')
   	set(findobj('Tag','variable4'),'Visible','off','Enable','off')
    
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta5'),'String','')
	   set(findobj('Tag','variable5'),'Visible','off','Enable','off')
          
      set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','')
	   set(findobj('Tag','variable6'),'Visible','off','Enable','off')
      
      set(findobj('Tag','parche2'),'Visible','on','String','( x = Ö2) =')
      set(findobj('Tag','parche3'),'Visible','on','String','( x = Ö2) =')

   elseif val1 == 6      	% SIMULACIÓN 4-6/A
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
      set(findobj('Tag','fijo2'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta2'),'String','Kpi')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')

      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','TIi')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','b =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta5'),'String','Tc =')
	   set(findobj('Tag','variable5'),'Visible','on','Enable','on','String','')

      set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','t(Tc) =')
      set(findobj('Tag','variable6'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','parche2'),'Visible','on','String','( x = Ö2) =')
      set(findobj('Tag','parche3'),'Visible','on','String','( x = Ö2) =')
      
   elseif val1 == 7      	% SIMULACIÓN 4-6 opcional/A
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
	  	set(findobj('Tag','etiqueta2'),'String','Kpi')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')

	   set(findobj('Tag','fijo3'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta3'),'String','TIi')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
	 	set(findobj('Tag','fijo4'),'Visible','on','Enable','on','String',Kn)
   	set(findobj('Tag','etiqueta4'),'String','Kn =')
   	set(findobj('Tag','variable4'),'Visible','off','Enable','off')
    
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta5'),'String','')
	   set(findobj('Tag','variable5'),'Visible','off','Enable','off')
          
      set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','')
	   set(findobj('Tag','variable6'),'Visible','off','Enable','off')
      
      set(findobj('Tag','parche2'),'Visible','on','String','( x = Ö2) =')
      set(findobj('Tag','parche3'),'Visible','on','String','( x = Ö2) =')
      
   elseif val1 == 8     % SIMULACIÓN 4-8/A ZZrb(Zs=0)
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','e(fcem)=')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String','300')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
   	set(findobj('Tag','etiqueta3'),'String','TIi')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo4'),'Visible','on','String','8 ms')
   	set(findobj('Tag','etiqueta4'),'String','Tfi =')
   	set(findobj('Tag','variable4'),'Visible','off','Enable','off')
        
      set(findobj('Tag','fijo5'),'Visible','on','Enable','on','String','1.67 ms')
   	set(findobj('Tag','etiqueta5'),'String','Tpr=')
   	set(findobj('Tag','variable5'),'Visible','off','Enable','off','String','')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','')
	   set(findobj('Tag','variable6'),'Visible','off','Enable','off','String','')
      
      set(findobj('Tag','parche2'),'Visible','on','String','( x = Ö2) =')
      set(findobj('Tag','parche3'),'Visible','on','String','( x = Ö2) =')
      
   elseif val1 == 9     % SIMULACIÓN 4-8/b ZZmc(Zs=0)
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Tcarga =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String','1000')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
   	set(findobj('Tag','etiqueta3'),'String','TIi')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo4'),'Visible','on','String','8 ms')
   	set(findobj('Tag','etiqueta4'),'String','Tfi =')
   	set(findobj('Tag','variable4'),'Visible','off','Enable','off')
        
      set(findobj('Tag','fijo5'),'Visible','on','Enable','on','String','1.67 ms')
   	set(findobj('Tag','etiqueta5'),'String','Tpr=')
   	set(findobj('Tag','variable5'),'Visible','off','Enable','off','String','')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','')
	   set(findobj('Tag','variable6'),'Visible','off','Enable','off','String','')
      
      set(findobj('Tag','parche2'),'Visible','on','String','( x = Ö2) =')
      set(findobj('Tag','parche3'),'Visible','on','String','( x = Ö2) =')
      
   elseif val1 == 10     % SIMULACIÓN 4-8/c ZZrb(Zs!=0)
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','e(fcem)=')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String','300')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
   	set(findobj('Tag','etiqueta3'),'String','TIi')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo4'),'Visible','on','Enable','on','String','8 ms')
   	set(findobj('Tag','etiqueta4'),'String','Tfi =')
   	set(findobj('Tag','variable4'),'Visible','off','Enable','off')
        
      set(findobj('Tag','fijo5'),'Visible','on','Enable','on','String','1.67 ms')
   	set(findobj('Tag','etiqueta5'),'String','Tpr=')
   	set(findobj('Tag','variable5'),'Visible','off','Enable','off','String','')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','')
	   set(findobj('Tag','variable6'),'Visible','off','Enable','off','String','')
      
      set(findobj('Tag','parche2'),'Visible','on','String','( x = Ö2) =')
      set(findobj('Tag','parche3'),'Visible','on','String','( x = Ö2) =')

   elseif val1==11			%SIMULACIÓN 4-9
   	set(findobj('Tag','fijo1'),'Visible','on','Enable','on','String','320 A')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','off','Enable','off')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','')

	   set(findobj('Tag','fijo3'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta3'),'String','TIi')
   	set(findobj('Tag','variable3'),'Visible','on','String','')
       
      set(findobj('Tag','fijo4'),'Visible','on','Enable','on','String','9.67 ms')
   	set(findobj('Tag','etiqueta4'),'String','Tsigma =')
   	set(findobj('Tag','variable4'),'Visible','off')
      
      set(findobj('Tag','variable5'),'Visible','off')
	  	set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
	  	set(findobj('Tag','etiqueta5'),'String','')
        
      set(findobj('Tag','variable6'),'Visible','off')
	  	set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta6'),'String','')
        
      set(findobj('Tag','parche2'),'Visible','on','String','( x = Ö2) =')
      set(findobj('Tag','parche3'),'Visible','on','String','( x = Ö2) =')
      
   elseif val1==12			%SIMULACIÓN 4_10 Velocidad Ideal/A
   	set(findobj('Tag','fijo1'),'Visible','off','Enable','off','String','')
	   set(findobj('Tag','etiqueta1'),'String','Kpn (MØ=30°) =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','TIn (MØ=30°) =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','')
            
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
	   set(findobj('Tag','etiqueta3'),'String','Kpn (MØ=45°) =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','TIn (MØ=45°) =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off')
	   set(findobj('Tag','etiqueta5'),'String','Kpn (MØ=60°) =')
   	set(findobj('Tag','variable5'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo6'),'Visible','off')
   	set(findobj('Tag','etiqueta6'),'String','TIn (MØ=60°) =')
      set(findobj('Tag','variable6'),'Visible','on','Enable','on','String','')
              
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')

   elseif val1==13			%SIMULACIÓN 4_11 Velocidad Ideal 
   	set(findobj('Tag','fijo1'),'Visible','off','Enable','off','String','')
	   set(findobj('Tag','etiqueta1'),'String','Kpn (Ópt.Sim.) =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String','')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','TIn (Ópt.Sim.) =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','')
            
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
	   set(findobj('Tag','etiqueta3'),'String','Kpn (Gan.Ópt.) =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String','')
   
	   set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','TIn (Gan.Ópt.) =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','')
      
		set(findobj('Tag','fijo5'),'Visible','off')
	   set(findobj('Tag','etiqueta5'),'String','')
	   set(findobj('Tag','variable5'),'Visible','off')
   
	   set(findobj('Tag','fijo6'),'Visible','off')
		set(findobj('Tag','etiqueta6'),'String','')
   	set(findobj('Tag','variable6'),'Visible','off')   
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
      
   elseif val1==14			%SIMULACIÓN 4_12 Valores definitivos con Tc no nulo
      set(findobj('Tag','fijo1'),'Visible','off','Enable','off','String','')
	   set(findobj('Tag','etiqueta1'),'String','Kpn =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String','283.88')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','TIn =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','0.3135')
            
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
	   set(findobj('Tag','etiqueta3'),'String','ref')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String',Wn)
   
	   set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','Tc =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','2171')
      
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off')
	   set(findobj('Tag','etiqueta5'),'String','')
   	set(findobj('Tag','variable5'),'Visible','off','Enable','off')
   
	   set(findobj('Tag','fijo6'),'Visible','off')
   	set(findobj('Tag','etiqueta6'),'String','')
      set(findobj('Tag','variable6'),'Visible','off','Enable','off','String','')
              
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','on','String','w =')
       elseif val1==14			%SIMULACIÓN 4_12 Valores definitivos con Tc no nulo
      set(findobj('Tag','fijo1'),'Visible','off','Enable','off','String','')
	   set(findobj('Tag','etiqueta1'),'String','Kpn =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String','283.88')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','TIn =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','0.3135')
            
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
	   set(findobj('Tag','etiqueta3'),'String','ref')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String',Wn)
   
	   set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','Tc =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','2171')
      
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off')
	   set(findobj('Tag','etiqueta5'),'String','')
   	set(findobj('Tag','variable5'),'Visible','off','Enable','off')
   
	   set(findobj('Tag','fijo6'),'Visible','off')
   	set(findobj('Tag','etiqueta6'),'String','')
      set(findobj('Tag','variable6'),'Visible','off','Enable','off','String','')
              
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','on','String','w =')
      
   elseif val1==15			%SIMULACIÓN 4_14 DB MOtor completo
      set(findobj('Tag','fijo1'),'Visible','off','Enable','off','String','')
	  set(findobj('Tag','etiqueta1'),'String','Kpn =')
   	  set(findobj('Tag','variable1'),'Visible','on','Enable','on','String','283.88')
   
	  set(findobj('Tag','fijo2'),'Visible','off')
   	  set(findobj('Tag','etiqueta2'),'String','TIn =')
      set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','0.3135')
      	  
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
	  set(findobj('Tag','etiqueta3'),'String','Kpi =')
   	  set(findobj('Tag','variable3'),'Visible','on','Enable','on','String','8e-3')
   
	  set(findobj('Tag','fijo4'),'Visible','off')
   	  set(findobj('Tag','etiqueta4'),'String','TIi =')
      set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','27e-3')
       
      set(findobj('Tag','fijo5'),'Visible','off')
   	  set(findobj('Tag','etiqueta5'),'String','Wref =')
      set(findobj('Tag','variable5'),'Visible','on','Enable','on','String','65')
              
      
      set(findobj('Tag','fijo6'),'Visible','off')
   	  set(findobj('Tag','etiqueta6'),'String','Tc =')
      set(findobj('Tag','variable6'),'Visible','on','Enable','on','String','2170')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','on','String','w =')
   elseif val1==16			%SIMULACIÓN 4_14 DB MOtor completo
      set(findobj('Tag','fijo1'),'Visible','off','Enable','off','String','')
	  set(findobj('Tag','etiqueta1'),'String','Kpn =')
   	  set(findobj('Tag','variable1'),'Visible','on','Enable','on','String','283.88')
   
	  set(findobj('Tag','fijo2'),'Visible','off')
   	  set(findobj('Tag','etiqueta2'),'String','TIn =')
      set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','0.3135')
      	  
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
	  set(findobj('Tag','etiqueta3'),'String','Kpi =')
   	  set(findobj('Tag','variable3'),'Visible','on','Enable','on','String','8e-3')
   
	  set(findobj('Tag','fijo4'),'Visible','off')
   	  set(findobj('Tag','etiqueta4'),'String','TIi =')
      set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','27e-3')
       
      set(findobj('Tag','fijo5'),'Visible','off')
   	  set(findobj('Tag','etiqueta5'),'String','Wref =')
      set(findobj('Tag','variable5'),'Visible','on','Enable','on','String','65')
                    
      set(findobj('Tag','fijo6'),'Visible','off')
   	  set(findobj('Tag','etiqueta6'),'String','Tc =')
      set(findobj('Tag','variable6'),'Visible','on','Enable','on','String','2170')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','on','String','w =')

   elseif val1==17			%SIMULACIÓN 4_14 Puente Bidireccional
      set(findobj('Tag','fijo1'),'Visible','off','Enable','off','String','')
	  set(findobj('Tag','etiqueta1'),'String','Kpn =')
   	  set(findobj('Tag','variable1'),'Visible','on','Enable','on','String','283.88')
   
	  set(findobj('Tag','fijo2'),'Visible','off')
   	  set(findobj('Tag','etiqueta2'),'String','TIn =')
      set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','0.3135')
      	  
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
	  set(findobj('Tag','etiqueta3'),'String','Kpi =')
   	  set(findobj('Tag','variable3'),'Visible','on','Enable','on','String','8e-3')
   
	  set(findobj('Tag','fijo4'),'Visible','off')
   	  set(findobj('Tag','etiqueta4'),'String','TIi =')
      set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','27e-3')
       
      set(findobj('Tag','fijo5'),'Visible','off')
   	  set(findobj('Tag','etiqueta5'),'String','Wref =')
      set(findobj('Tag','variable5'),'Visible','on','Enable','on','String',Wn)
                    
      set(findobj('Tag','fijo6'),'Visible','off')
   	  set(findobj('Tag','etiqueta6'),'String','Tc =')
      set(findobj('Tag','variable6'),'Visible','on','Enable','on','String','2170')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','on','String','w =')
              
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','on','String','w =')

   else					%	RESTO DE LAS SIMULACIONES
      set(findobj('Tag','fijo1'),'Visible','off')
		set(findobj('Tag','etiqueta1'),'String','')
	   set(findobj('Tag','variable1'),'Visible','off')

	   set(findobj('Tag','fijo2'),'Visible','off')
		set(findobj('Tag','etiqueta2'),'String','')
	   set(findobj('Tag','variable2'),'Visible','off')

   	set(findobj('Tag','fijo3'),'Visible','off')
	   set(findobj('Tag','etiqueta3'),'String','')
  		set(findobj('Tag','variable3'),'Visible','off')

	   set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','')
	   set(findobj('Tag','variable4'),'Visible','off')

		set(findobj('Tag','fijo5'),'Visible','off')
	   set(findobj('Tag','etiqueta5'),'String','')
	   set(findobj('Tag','variable5'),'Visible','off')
   
	   set(findobj('Tag','fijo6'),'Visible','off')
		set(findobj('Tag','etiqueta6'),'String','')
   	set(findobj('Tag','variable6'),'Visible','off')   
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
end      
elseif me==2			%	MOTOR B
  	val2=get(findobj('Tag','ListaSim_B'),'Value');
     
   if val2 == 1		%	SIMULACIÓN 4-1 /B
	  	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi (MØ=30°) =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','Kpi (MØ=45°) =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','Kpi (MØ=60°) =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on')

      set(findobj('Tag','variable5'),'Visible','off')
	  	set(findobj('Tag','fijo5'),'Visible','on','Enable','on','String',Ta)
	  	set(findobj('Tag','etiqueta5'),'String','TIi = Ta =')

      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String','13 ms')
   	set(findobj('Tag','etiqueta6'),'String','Tsigma =')
   	set(findobj('Tag','variable6'),'Visible','off')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
      
 	elseif val2 == 2      	% SIMULACIÓN 4-2/B
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi (MØ=30°) =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','Kpi (MØ=45°) =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','Kpi (MØ=60°) =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on')
        
      set(findobj('Tag','fijo5'),'Visible','on','Enable','on','String','5 ms')
   	set(findobj('Tag','etiqueta5'),'String','Tpr =')
   	set(findobj('Tag','variable5'),'Visible','off')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String','8 ms')
 	  	set(findobj('Tag','etiqueta6'),'String','Tfi =')
	   set(findobj('Tag','variable6'),'Visible','off')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
      
 	elseif val2 == 3      	% SIMULACIÓN 4-3/B
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi (MØ=30°) =')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','Kpi (MØ=45°) =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','Kpi (MØ=60°) =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on')
        
      set(findobj('Tag','fijo5'),'Visible','on','Enable','on','String','10 ms')
   	set(findobj('Tag','etiqueta5'),'String','Tpr =')
   	set(findobj('Tag','variable5'),'Visible','off')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String','8 ms')
 	  	set(findobj('Tag','etiqueta6'),'String','Tfi =')
	   set(findobj('Tag','variable6'),'Visible','off')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')

 	elseif val2 == 4      	% SIMULACIÓN 4-4/B
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta2'),'String','Kpi(MØ=65,53°)=')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','Kpi (MØ=60°) =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','e =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','')
        
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta5'),'String','t(fem)=')
   	set(findobj('Tag','variable5'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','')
	   set(findobj('Tag','variable6'),'Visible','off','Enable','off')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')

   elseif val2 == 5      	% SIMULACIÓN 4-5/B
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
	  	set(findobj('Tag','etiqueta2'),'String','Kpi(MØ=65.53°)=')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')

	   set(findobj('Tag','fijo3'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta3'),'String','Kpi(MØ=60°)=')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
	 	set(findobj('Tag','fijo4'),'Visible','on','Enable','on','String',Kn)
   	set(findobj('Tag','etiqueta4'),'String','Kn =')
   	set(findobj('Tag','variable4'),'Visible','off','Enable','off')
    
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta5'),'String','')
	   set(findobj('Tag','variable5'),'Visible','off','Enable','off')
          
      set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','')
	   set(findobj('Tag','variable6'),'Visible','off','Enable','off')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')

   elseif val2 == 6      	% SIMULACIÓN 4-6/B
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
      set(findobj('Tag','fijo2'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta2'),'String','Kpi(MØ=65.53°)=')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on')

      set(findobj('Tag','fijo3'),'Visible','off')
   	set(findobj('Tag','etiqueta3'),'String','Kpi (MØ=60°) =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
      
      set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','b =')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta5'),'String','Tc =')
	   set(findobj('Tag','variable5'),'Visible','on','Enable','on','String','')

      set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
 	  	set(findobj('Tag','etiqueta6'),'String','t(Tc) =')
      set(findobj('Tag','variable6'),'Visible','on','Enable','on','String','')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
   
   elseif val2==9			%SIMULACIÓN 4-9/B
   	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','Iaref =')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on')
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','Kpi(MØ=65,53°)=')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String')

	   set(findobj('Tag','fijo3'),'Visible','off','Enable','off')
   	set(findobj('Tag','etiqueta3'),'String','Kpi (MØ=60°) =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on')
       
      set(findobj('Tag','fijo4'),'Visible','on','Enable','on','String','13 ms')
   	set(findobj('Tag','etiqueta4'),'String','Tsigma =')
   	set(findobj('Tag','variable4'),'Visible','off')
      
      set(findobj('Tag','variable5'),'Visible','off')
	  	set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
	  	set(findobj('Tag','etiqueta5'),'String','')
        
      set(findobj('Tag','variable6'),'Visible','off')
	  	set(findobj('Tag','fijo6'),'Visible','off','Enable','off','String','')
	  	set(findobj('Tag','etiqueta6'),'String','')
        
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')

   else
      set(findobj('Tag','fijo1'),'Visible','off')
		set(findobj('Tag','etiqueta1'),'String','')
	   set(findobj('Tag','variable1'),'Visible','off')

	   set(findobj('Tag','fijo2'),'Visible','off')
		set(findobj('Tag','etiqueta2'),'String','')
	   set(findobj('Tag','variable2'),'Visible','off')

   	set(findobj('Tag','fijo3'),'Visible','off')
	   set(findobj('Tag','etiqueta3'),'String','')
  		set(findobj('Tag','variable3'),'Visible','off')

	   set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','')
	   set(findobj('Tag','variable4'),'Visible','off')

		set(findobj('Tag','fijo5'),'Visible','off')
	   set(findobj('Tag','etiqueta5'),'String','')
	   set(findobj('Tag','variable5'),'Visible','off')
   
	   set(findobj('Tag','fijo6'),'Visible','off')
		set(findobj('Tag','etiqueta6'),'String','')
   	set(findobj('Tag','variable6'),'Visible','off')   
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
 end      
elseif  me==3			%	MOTOR INDUCCIÓN	
    	val3=get(findobj('Tag','ListaSim_MI'),'Value');    
        
    if val3== 1				% SIMULACIÓN 1/MI
     	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','f1 [Hz]=')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String',20)
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','fs [Hz]=')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String',1500)
      
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta3'),'String','Ud [V] =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String',622)
      
      set(findobj('Tag','fijo4'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta4'),'String','tiempo [s]=')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String',1.5)

      set(findobj('Tag','variable5'),'Visible','on','Enable','on','String',0.5)
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta5'),'String','m (índice mod.)=')

      set(findobj('Tag','etiqueta6'),'Visible','on','Enable','on','String','J [kg.m²]=')
   	set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String',0.15)
   	set(findobj('Tag','variable6'),'Visible','off','Enable','off','String','')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
elseif val3== 2				% SIMULACIÓN 2/MI
     	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','f1 [Hz]=')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String',20)
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','fs [Hz]=')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String',600)
      
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta3'),'String','Ud [V] =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String',622)
      
      set(findobj('Tag','fijo4'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta4'),'String','tiempo [s]=')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String',1.5)

      set(findobj('Tag','variable5'),'Visible','on','Enable','on','String',0.5)
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta5'),'String','m (índice mod.)=')

      set(findobj('Tag','etiqueta6'),'Visible','on','Enable','on','String','J [kg.m²]=')
   	set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String',0.15)
   	set(findobj('Tag','variable6'),'Visible','off','Enable','off','String','')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
 elseif val3== 3				% SIMULACIÓN 3/MI
     	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','f1 [Hz]=')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String',20)
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','fs [Hz]=')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String',1500)
      
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta3'),'String','Ud [V] =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String',622)
      
      set(findobj('Tag','fijo4'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta4'),'String','tiempo [s]=')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String',1.5)
      
      set(findobj('Tag','variable5'),'Visible','on','Enable','on','String',0.5)
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta5'),'String','m (índice mod.)=')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String',  60)
      set(findobj('Tag','Variable6'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta6'),'String','Td [µs] =')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
 elseif val3== 4				% SIMULACIÓN 4/MI
     	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','f1 [Hz]=')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String',20)
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','fs [Hz]=')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String',600)
      
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta3'),'String','Ud [V] =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String',622)
      
      set(findobj('Tag','fijo4'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta4'),'String','tiempo [s]=')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String',1.5)

      set(findobj('Tag','variable5'),'Visible','on','Enable','on','String',0.5)
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta5'),'String','m (índice mod.)=')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String',  60)
      set(findobj('Tag','Variable6'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta6'),'String','Td [µs] =')
      
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
 elseif val3== 5				% SIMULACIÓN 5/MI
     	set(findobj('Tag','fijo1'),'Visible','off')
	   set(findobj('Tag','etiqueta1'),'String','f1 [Hz]=')
   	set(findobj('Tag','variable1'),'Visible','on','Enable','on','String',20)
   
	   set(findobj('Tag','fijo2'),'Visible','off')
   	set(findobj('Tag','etiqueta2'),'String','fs [Hz]=')
   	set(findobj('Tag','variable2'),'Visible','on','Enable','on','String',1500)
      
      set(findobj('Tag','fijo3'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta3'),'String','Ud [V] =')
   	set(findobj('Tag','variable3'),'Visible','on','Enable','on','String',622)
      
      set(findobj('Tag','fijo4'),'Visible','off','Enable','off','String','')
   	set(findobj('Tag','etiqueta4'),'String','tiempo [s]=')
   	set(findobj('Tag','variable4'),'Visible','on','Enable','on','String',1.5)

      set(findobj('Tag','variable5'),'Visible','on','Enable','on','String',0.5)
      set(findobj('Tag','fijo5'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta5'),'String','m (índice mod.)=')
      
      set(findobj('Tag','fijo6'),'Visible','on','Enable','on','String',  60)
      set(findobj('Tag','Variable6'),'Visible','off','Enable','off','String','')
      set(findobj('Tag','etiqueta6'),'String','Td [µs] =')
            
      set(findobj('Tag','parche2'),'Visible','off')
      set(findobj('Tag','parche3'),'Visible','off')
else   
   	set(findobj('Tag','fijo1'),'Visible','off')
		set(findobj('Tag','etiqueta1'),'String','')
   	set(findobj('Tag','variable1'),'Visible','off')

   
	   set(findobj('Tag','fijo2'),'Visible','off')
		set(findobj('Tag','etiqueta2'),'String','')
	   set(findobj('Tag','variable2'),'Visible','off')

   	set(findobj('Tag','fijo3'),'Visible','off')
	   set(findobj('Tag','etiqueta3'),'String','')
  		set(findobj('Tag','variable3'),'Visible','off')

	   set(findobj('Tag','fijo4'),'Visible','off')
   	set(findobj('Tag','etiqueta4'),'String','')
	   set(findobj('Tag','variable4'),'Visible','off')

		set(findobj('Tag','fijo5'),'Visible','off')
	   set(findobj('Tag','etiqueta5'),'String','')
   	set(findobj('Tag','variable5'),'Visible','off')
   
	   set(findobj('Tag','fijo6'),'Visible','off')
		set(findobj('Tag','etiqueta6'),'String','')
	   set(findobj('Tag','variable6'),'Visible','off')
end
elseif  me==4			%	MOTOR D
   disp('"Motor_D en construcción"')
 	set(findobj('Tag','fijo1'),'Visible','off')
	set(findobj('Tag','etiqueta1'),'String','')
   set(findobj('Tag','variable1'),'Visible','off')

   
   set(findobj('Tag','fijo2'),'Visible','off')
	set(findobj('Tag','etiqueta2'),'String','')
   set(findobj('Tag','variable2'),'Visible','off')

   set(findobj('Tag','fijo3'),'Visible','off')
   set(findobj('Tag','etiqueta3'),'String','')
  	set(findobj('Tag','variable3'),'Visible','off')

   set(findobj('Tag','fijo4'),'Visible','off')
   set(findobj('Tag','etiqueta4'),'String','')
   set(findobj('Tag','variable4'),'Visible','off')
   
   set(findobj('Tag','fijo5'),'Visible','off')
   set(findobj('Tag','etiqueta5'),'String','')
   set(findobj('Tag','variable5'),'Visible','off')
   
   set(findobj('Tag','fijo6'),'Visible','off')
   set(findobj('Tag','etiqueta6'),'String','')
   set(findobj('Tag','variable6'),'Visible','off')

end