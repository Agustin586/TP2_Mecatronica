control_mot=get(findobj('Tag','popup_motor'),'Value');
if control_mot==1		%	Motor A
   control_sim=get(findobj('Tag','ListaSim_A'),'Value');
   if control_sim == 1
      db4_1
      Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      Tsigma=str2num(get(findobj('Tag','variable6'),'String'));
      Tfi=8e-3;
      Kti=1;
      Kpr=20;
      Tpr=1.67e-3;
      set_param('db4_1/Subsystem','Tfi','Tfi') 
      disp('Motor A - Sim 1')
   elseif control_sim == 2
     	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      db4_2
      Tpr=str2num(get(findobj('Tag','variable6'),'String'));
      Tfi=8e-3;
      Kpr=20;
      Kti=1;
      e=0;
      tfem=0;
   	disp('Motor A - Sim 2')
   elseif control_sim == 3
      db4_3
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      Tfi=8e-3;
      Kti=1;
      Tpr=str2num(get(findobj('Tag','variable6'),'String'));
      e=0;
      tfem=0;
  		Kpr=20;
      disp('Motor A - Sim 3')
   elseif control_sim == 4
      db4_3
      Tfi=8e-3;
      Kti=1;
      Kpr=20;
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      tfem=str2num(get(findobj('Tag','variable5'),'String'));
      e=str2num(get(findobj('Tag','variable4'),'String'));
      disp('Motor A - Sim 4')
  	elseif control_sim == 5
      db4_5
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
		TIi=str2num(get(findobj('Tag','variable3'),'String'));
      Tpr=1.67e-3;
      Tfi=8e-3;
      Tc=0;
      tTc=0;
      b=0;
      disp('Motor A - Sim 5')
   elseif control_sim == 6
      db4_5
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
		TIi=str2num(get(findobj('Tag','variable3'),'String'));
      Tpr=1.67e-3;
      Tfi=8e-3;
      b=str2num(get(findobj('Tag','variable4'),'String'));
      Tc=str2num(get(findobj('Tag','variable5'),'String'));
      tTc=str2num(get(findobj('Tag','variable6'),'String'));
      disp('Motor A - Sim 6')   
  	elseif control_sim == 7
      db4_6
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
		TIi=str2num(get(findobj('Tag','variable3'),'String'));
      Tpr=1.67e-3;
      Tfi=8e-3;
      Tc=0;
      tTc=0;
      b=0;
      disp('Motor A - Sim 6 Opcional')
      %<<<<<<<<<<<<<<<<
      %<<<<<<revisar   >>>>>>>>>>>>>>>>>><
      %>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><
   elseif control_sim == 8
      fcem=str2num(get(findobj('Tag','variable1'),'String')); 
      db4_8zzrb
     % set(findobj('Tag','botonStop'),'Visible','on','String','Stop','Callback','set_param(''db4_8zzrb'', ''SimulationCommand'', ''stop'')','Enable','on')

      TIi=str2num(get(findobj('Tag','variable3'),'String'));
      Tpr=1.67e-3;
      Tfi=8e-3;
      Kpr=20;
	  set_param('db4_8zzrb/Iaref','rep_seq_t','[0   0.2  0.21    0.35  0.351  0.45  0.451 1]')
      set_param('db4_8zzrb/Iaref','rep_seq_y','[Ian Ian  2*Ian 2*Ian  45    45    Ian  Ian]')
      set_param('db4_8zzrb/E','rep_seq_t','[0   0.6   0.61  0.75   .751   1 ]')
      set_param('db4_8zzrb/E','rep_seq_y','[0   0    fcem  fcem  -fcem -fcem]')
      Ld=La;
      Rd=Ra;
      Rs=0;
      Ls=0;
      disp('Motor A - Sim 4_8 Rotor Bloqueado(Zs=0)')   
   elseif control_sim == 9
      Tcarga=str2num(get(findobj('Tag','variable1'),'String'));
      db4_8zzmc
      TIi=str2num(get(findobj('Tag','variable3'),'String'));
      Tpr=1.67e-3;
      Tfi=8e-3;
      Kpr=20;
      Kpi=Kpr*str2num(get(findobj('Tag','variable3'),'String'));
      Ld=La;
      Rd=Ra;
      Rs=0;
      Ls=0;
	   set_param('db4_8zzmc/Iaref','rep_seq_t','[0   0.2  0.21    0.35  0.351  0.45  0.451 1]')
      set_param('db4_8zzmc/Iaref','rep_seq_y','[Ian Ian  2*Ian 2*Ian  45    45    Ian  Ian]')
      set_param('db4_8zzmc/Tc','rep_seq_t','[0   0.6   0.61      0.75   .751       1 ]')
      set_param('db4_8zzmc/Tc','rep_seq_y','[0   0     Tcarga  Tcarga -Tcarga  -Tcarga]')
      disp('Motor A - Sim 4_8 Modelo Completo (Zs=0)')   
   elseif control_sim == 10
      fcem=str2num(get(findobj('Tag','variable1'),'String'));
      db4_8znzrb
      TIi=str2num(get(findobj('Tag','variable3'),'String'));
      Tpr=1.67e-3;
      Kpr=20;
      Tfi=8e-3;
      Kpi=Kpr*str2num(get(findobj('Tag','variable3'),'String'));
      Ld=0.003;
      Rd=0.05;
      Rs=0.006;
      Ls=2e-4;
      set_param('db4_8znzrb/Iaref','rep_seq_t','[0   0.2  0.21    0.35  0.351  0.45  0.451 1]')
      set_param('db4_8znzrb/Iaref','rep_seq_y','[Ian Ian  2*Ian 2*Ian 45    45   Ian Ian]')
      set_param('db4_8znzrb/E','rep_seq_t','[0   0.6   0.61  0.75   .751   1 ]')
      set_param('db4_8znzrb/E','rep_seq_y','[0   0    fcem  fcem  -fcem -fcem]')
      disp('Motor A - Sim 4_8 Modelo Rotor Bloqueado(Zs no nula)')   
   elseif control_sim == 11
      Tsigma=9.67e-3;
      Kpr=20;
      Iaref=Ian;
      fcem=0;
      Ld=0.003;
      Rd=0.05;
      Rs=0.006;
      Ls=2e-4;
      Kti=1;

      db4_8znzrb
       	set_param('db4_8znzrb/Iaref','rep_seq_t','[0 0.4]')
        set_param('db4_8znzrb/Iaref','rep_seq_y','[Ian Ian]')
        set_param('db4_8znzrb/E','rep_seq_t','[0   0.4]')
     	set_param('db4_8znzrb/E','rep_seq_y','[10   10 ]')
   	  db4_9
	      set_param('db4_9/Transfer Fcn','Denominator','[4*Tsigma 1]')  
      disp('Motor A - Sim 4_9') 
  	elseif control_sim == 12
      db4_10
      Wref=Wn;
      Kci=1/Kti;
      Tci=4*(Tpr+Tfi);
      set_param('db4_10/Tc','rep_seq_t','[0  4]')
      set_param('db4_10/Tc','rep_seq_y','[0  0]')
      set_param('db4_10/wref','rep_seq_t','[0  4]')
      set_param('db4_10/wref','rep_seq_y','[Wref Wref]')
      disp('Motor A - Sim 4_10')    
  	elseif control_sim == 13
      db4_10
      Wref=Wn;
      Kci=1/Kti;
      set_param('db4_10/Tc','rep_seq_t','[0  12]')
      set_param('db4_10/Tc','rep_seq_y','[0  0]')
      set_param('db4_10/wref','rep_seq_t','[0  12]')
      set_param('db4_10/wref','rep_seq_y','[Wref Wref]')
      Tci=4*(Tpr+Tfi);
      disp('Motor A - Sim 4_11')
 	elseif control_sim == 14
      db4_10
      Wref=str2num(get(findobj('Tag','variable3'),'String'));
      Kci=1/Kti;
      Tc=str2num(get(findobj('Tag','variable4'),'String'));
      Tci=4*(Tpr+Tfi);
	  set_param('db4_10/Tc','rep_seq_t','[0 7.5 7.51 9 9.1 10 10.1 16]')
      set_param('db4_10/Tc','rep_seq_y','[0 0 -Tc -Tc -0.9*Tc -0.9*Tc Tc Tc]')
      set_param('db4_10/wref','rep_seq_t','[0 1.5 1.51 3 4.5 6 6.1 16]')
      set_param('db4_10/wref','rep_seq_y','[Wref Wref 0 0 Wref Wref -Wref -Wref]')
      disp('Motor A - Sim 4_12')    
     elseif control_sim == 15
      db4_11
      Wref=str2num(get(findobj('Tag','variable5'),'String'));
%       Kci=1/Kti;
      Tc=str2num(get(findobj('Tag','variable6'),'String'));
%       Kpi=Kpr*str2num(get(findobj('Tag','variable5'),'String'));
%       TIi=str2num(get(findobj('Tag','variable6'),'String'));
%       b=0;
%       Ld=La;
%       Rd=Ra;
%       Rs=0.006;
%       Ls=2e-4;
	  set_param('db4_11/Tc','rep_seq_t','[0 7.5 7.9 8 9 9.1 10 13.5 14]')
      set_param('db4_11/Tc','rep_seq_y','[0 0    0 -Tc -Tc -Tc -Tc -Tc 0]')
      set_param('db4_11/wref','rep_seq_t','[0     1.5  2.5  3 4.5   5    6     8    9    10 11   12 15]')
      set_param('db4_11/wref','rep_seq_y','[Wref Wref Wref  0  0    0   Wref   Wref Wref Wref  Wref   -Wref -Wref]')
      disp('Motor A - Sim 4_11')    
  	elseif control_sim == 16
      db4_13
%       Wref=str2num(get(findobj('Tag','variable5'),'String'));
%       Kci=1/Kti;
%       Tc=str2num(get(findobj('Tag','variable6'),'String'));
%       Kpi=Kpr*str2num(get(findobj('Tag','variable5'),'String'));
%       TIi=str2num(get(findobj('Tag','variable6'),'String'));
%       b=0;
%       Ld=La;
%       Rd=Ra;
%       Rs=0.006;
%       Ls=2e-4;
	  set_param('db4_13/Tc','rep_seq_t','[0 7.5 7.9 8 9 9.1 10 13.5 14]')
      set_param('db4_13/Tc','rep_seq_y','[0 0    0 -Tc -Tc -Tc -Tc -Tc 0]')
      set_param('db4_13/wref','rep_seq_t','[0     1.5  2.5  3 4.5   5    6     8    9    10 11   12 15]')
      set_param('db4_13/wref','rep_seq_y','[Wref Wref Wref  0  0    0   Wref   Wref Wref Wref  Wref   -Wref -Wref]')
      disp('Motor A - Sim 4_13')       
  	elseif control_sim == 17
      db4_14
%       Wref=str2num(get(findobj('Tag','variable5'),'String'));
      Kci=1/Kti;
%       Tc=str2num(get(findobj('Tag','variable6'),'String'));
%       Kpi=Kpr*str2num(get(findobj('Tag','variable5'),'String'));
%       TIi=str2num(get(findobj('Tag','variable6'),'String'));
      b=1.1;
      Ld=La;
      Rd=Ra;
      Rs=0.00006;
      Ls=2e-5;
	  set_param('db4_14/Tc','rep_seq_t','[0 7.5 7.9 8 9 9.1 10 13.5 14]')
      set_param('db4_14/Tc','rep_seq_y','[0 0    0 -Tc -Tc -Tc -Tc -Tc 0]')
      set_param('db4_14/wref','rep_seq_t','[0     1.5  2.5  3 4.5   5    6     8    9    10 11   12 15]')
      set_param('db4_14/wref','rep_seq_y','[Wref Wref Wref  0  0    0   Wref   Wref Wref Wref  Wref   -Wref -Wref]')
      disp('Motor A - Sim 4_14')       
end 	 
elseif control_mot==2	%	Motor B	
   control_sim=get(findobj('Tag','ListaSim_B'),'Value');
   if control_sim == 1
      db4_1
      Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      TIi=Ta;
      Tsigma=13e-3;
 	  set_param('db4_1/Subsystem','Tfi','Tfi') 
      disp('Motor B - Sim 1')
   elseif control_sim == 2
     	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      db4_2
      TIi=Ta;
      Tpr=5e-3;
      Tfi=8e-3;
      e=0;
   	disp('Motor B - Sim 2')
   elseif control_sim == 3
	   db4_3
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      TIi=Ta;
      Tpr=10e-3;
      Tfi=8e-3;
      e=0;
      tfem=0;
      disp('Motor B - Sim 3')
   elseif control_sim == 4
      db4_3
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      TIi=Ta;
      Kpr=20;
      Tpr=10e-3;
      Tfi=8e-3;
      tfem=str2num(get(findobj('Tag','variable5'),'String'));
      e=str2num(get(findobj('Tag','variable4'),'String'));
      disp('Motor B - Sim 4')
   elseif control_sim == 5
      db4_5
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
		TIi=Ta;
      Tpr=10e-3;
      Tfi=8e-3;
      Tc=0;
      tTc=0;
      b=0;
      disp('Motor B - Sim 5')
   elseif control_sim == 6
      db4_5
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      TIi=Ta;
      Tpr=10e-3;
      Tfi=8e-3;
      b=str2num(get(findobj('Tag','variable4'),'String'));
      Tc=str2num(get(findobj('Tag','variable5'),'String'));
      tTc=str2num(get(findobj('Tag','variable6'),'String'));
      disp('Motor B - Sim 6')
   elseif control_sim == 9
      db4_3
      db4_9
      set_param('db4_9/Transfer Fcn','Denominator','[2*Tsigma 1]') 
   	Iaref=str2num(get(findobj('Tag','variable1'),'String'));
      Tsigma=13e-3;
      e=0;
      tfem=0;
      disp('Motor B - Sim 9')
   end 	 
      %<<<<<<<<<<<<<<<<
      %<<<<<<POR AHORA NO   >>>>>>>>>>>>>>>>>><
      %>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><
   
elseif control_mot==3		%	MI
   control_sim=get(findobj('Tag','ListaSim_MI'),'Value');
   if control_sim==1
      B=0.1;
      mi_sub
      disp('Motor Inducción - Sim 1')
   elseif control_sim==2
      B=0.1;
      mi_sub
      disp('Motor Inducción - Sim 2')      
   elseif control_sim==3
      B=0.1;
      Td=60e-6;
		Tst=10e-6;
      mi_subdel
      disp('Motor Inducción - Sim 3')      
   elseif control_sim==4
      B=0.1;
      Td=60e-6;
		Tst=10e-6;
      mi_subdel
      disp('Motor Inducción - Sim 4')      
   elseif control_sim==5
      B=0.1;
      Td=60e-6;
		Tst=10e-6;
      mi_subcomp
      disp('Motor Inducción - Sim 5')      
   else
      disp('no hay nada')
   end
end


   
