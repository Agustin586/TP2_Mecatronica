%gráficas para las simulaciones del motor B
NumeroSim=get(findobj('Tag','ListaSim_B'),'Value');
bdwidth = 10;
topbdwidth = 40;
set(0,'Units','pixels')
scnsize = get(0,'ScreenSize');
pos1 = [bdwidth,...
2/4*scnsize(4) + bdwidth,...
scnsize(3)/2 - 2*bdwidth,...
scnsize(4)/2 - (topbdwidth + bdwidth)];
pos2 = [pos1(1) + scnsize(3)/2,...
pos1(2),...
pos1(3),...
pos1(4)];
pos3 = [pos1(1),...
15,...
pos1(3),...
pos1(4)];
pos4 = [pos1(1)+ scnsize(3)/2,...
15,...
pos1(3),...
pos1(4)];
if NumeroSim==1 
	%		simulación 1
	Kpi=str2num(get(findobj('Tag','variable2'),'String'));
	set_param('db4_1/To Workspace','VariableName','Ia1_1')	
   set_param('db4_1/To Workspace1','VariableName','Iaref1_1')	
   set_param('db4_1/To Workspace2','VariableName','If1_1')	
   	[t1_1]=sim('db4_1');	
   
   Kpi=str2num(get(findobj('Tag','variable3'),'String'));
   set_param('db4_1/To Workspace','VariableName','Ia1_2')
   set_param('db4_1/To Workspace1','VariableName','Iaref1_2')	
   set_param('db4_1/To Workspace2','VariableName','If1_2')
   	[t1_2]=sim('db4_1');
       
   Kpi=str2num(get(findobj('Tag','variable4'),'String'));
   set_param('db4_1/To Workspace','VariableName','Ia1_3')
   set_param('db4_1/To Workspace1','VariableName','Iaref1_3')	
   set_param('db4_1/To Workspace2','VariableName','If1_3')
		[t1_3]=sim('db4_1');
      
   set_param('db4_1/To Workspace','VariableName','Ia')	
   set_param('db4_1/To Workspace1','VariableName','Iaref')	
   set_param('db4_1/To Workspace2','VariableName','If')

   %		gráficas de la simulación 1-b
   figure('Tag','s1b','Name','Simulación 1 Motor B')
     	subplot(311);
			plot(t1_1(:,1),Ia1_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			ylabel('Ia [A]')
			xlabel('tiempo [s]')
         legend('MØ = 60°',4);
         grid
   	subplot(312);
			plot(t1_2(:,1),Ia1_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			ylabel('Ia [A]')
			xlabel('tiempo [s]')
         legend('MØ = 45°',4);
         grid
		subplot(313);
			plot(t1_3(:,1),Ia1_3(:,1),'color',[0.1 0.65 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			ylabel('Ia [A]')
         xlabel('tiempo [s]')
         legend('MØ = 60°',4);
			grid
      zoom
         
  	figure('Tag','s1bconjunta','Name','Simulación 1 Superpuesta (Motor B)')
	  	plot(t1_1(:,1),Ia1_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on  
 		plot(t1_2(:,1),Ia1_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
      plot(t1_3(:,1),Ia1_3(:,1),'color',[0.1 0.65 0.1],'LineWidth',1.2)
      ylabel('Ia [A]')
	   xlabel('tiempo [s]')
   	grid
		legend('MØ = 30°','MØ = 45°','MØ = 60°',0);
      hold off	
      zoom

elseif NumeroSim == 2   
	%		simulación 2
   %<<<parametros controlador>>>>>>>>
   set_param('db4_2/Armature Current Controller (PI) with Current-sensor','TIi',num2str(TIi))
  	set_param('db4_2/Armature Current Controller (PI) with Current-sensor','Kti',num2str(Kti))	
  	set_param('db4_2/Armature Current Controller (PI) with Current-sensor','Tfi',num2str(Tfi))	
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_2/Permanent Magnet PMDCM','k',num2str(Kn))
   set_param('db4_2/Permanent Magnet PMDCM','Ra',num2str(Ra))
   set_param('db4_2/Permanent Magnet PMDCM','La',num2str(La))
   %<<<<<parámetros Rectificador>>>>>>>>  
   set_param('db4_2/Controlled Rectifier (PT1)','Kpr',num2str(Kpr))
   set_param('db4_2/Controlled Rectifier (PT1)','Tpr',num2str(Tpr))
  
   Kpi=str2num(get(findobj('Tag','variable2'),'String'));  
   set_param('db4_2/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   set_param('db4_2/To Workspace','VariableName','Ia2_1')	
   set_param('db4_2/To Workspace2','VariableName','Iaref2_1')	
   set_param('db4_2/To Workspace3','VariableName','If2_1')	
     [t2_1]=sim('db4_2');
     
	Kpi=str2num(get(findobj('Tag','variable3'),'String'));
 	set_param('db4_2/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
	set_param('db4_2/To Workspace','VariableName','Ia2_2')
    set_param('db4_2/To Workspace2','VariableName','Iaref2_2')	
    set_param('db4_2/To Workspace3','VariableName','If2_2')	
     [t2_2]=sim('db4_2');
     
  	Kpi=str2num(get(findobj('Tag','variable4'),'String'));
 	set_param('db4_2/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
	set_param('db4_2/To Workspace','VariableName','Ia2_3')
   set_param('db4_2/To Workspace2','VariableName','Iaref2_3')	
   set_param('db4_2/To Workspace3','VariableName','If2_3')	
	   [t2_3]=sim('db4_2');
   
   set_param('db4_2/To Workspace','VariableName','Ia')	
   set_param('db4_2/To Workspace2','VariableName','Iaref')	
   set_param('db4_2/To Workspace3','VariableName','If')	
      
   %		gráficas de la simulsción 2-b
   figure('Tag','s2b','Name','Simulación 2 Motor B')
     	subplot(311);
			plot(t2_1(:,1),Ia2_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			ylabel('Ia [A]')
			xlabel('tiempo [s]')
         legend('MØ = 30°',4);
         grid
   	subplot(312);
			plot(t2_2(:,1),Ia2_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			ylabel('Ia [A]')
			xlabel('tiempo [s]')
	      legend('MØ = 45°',4);
			grid
		subplot(313);
			plot(t2_3(:,1),Ia2_3(:,1),'color',[0.1 0.65 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			ylabel('Ia [A]')
			xlabel('tiempo [s]')
         legend('MØ = 60°',4);
         grid
      zoom
         
  	figure('Tag','s2bconjunta','Name','Simulación 2 Superpuesta (Motor B)')
	 	plot(t2_1(:,1),Ia2_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on  
  		plot(t2_2(:,1),Ia2_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
      plot(t2_3(:,1),Ia2_3(:,1),'color',[0.1 0.65 0.1],'LineWidth',1.2)
      ylabel('Ia [A]')
	   xlabel('tiempo [s]')
   	grid
		legend('MØ = 30°','MØ = 45°','MØ = 60°',0);
      hold off   
      zoom
	      
elseif NumeroSim == 3   
%	simulación 4_3
  	Kpi=str2num(get(findobj('Tag','variable4'),'String'));

   %<<<parametros controlador>>>>>>>>
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'Kti',num2str(Kti),'Tfi',num2str(Tfi),'TIi',num2str(TIi))	
%   	set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Tfi',num2str(Tfi))	
%    set_param('db4_3/Armature Current Controller (PI) with Current-sensor','TIi',num2str(TIi))
	%<<<<<parámetros rectificador>>>>>>
	set_param('db4_3/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr),'Tpr',num2str(Tpr))
% 	set_param('db4_3/Controlled Rectifier (Delay Time)','Tpr',num2str(Tpr))
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_3/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))
%    set_param('db4_3/Permanent Magnet PMDCM','Ra',num2str(Ra))
%    set_param('db4_3/Permanent Magnet PMDCM','La',num2str(La))
   

  	Kpi=str2num(get(findobj('Tag','variable2'),'String'));
   %<<<parametros controlador>>>>>>>>
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   
   set_param('db4_3/To Workspace','VariableName','Ia3_1')	
   set_param('db4_3/To Workspace1','VariableName','Iaref3_1')	
   set_param('db4_3/To Workspace2','VariableName','If3_1')	
	  	[t3_1]=sim('db4_3');	
        
  	Kpi=str2num(get(findobj('Tag','variable3'),'String'));
   %<<<parametros controlador>>>>>>>>
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   
   set_param('db4_3/To Workspace','VariableName','Ia3_2')	
   set_param('db4_3/To Workspace1','VariableName','Iaref3_2')	
   set_param('db4_3/To Workspace2','VariableName','If3_2')	
	  	[t3_2]=sim('db4_3');	

  	Kpi=str2num(get(findobj('Tag','variable4'),'String'));
   %<<<parametros controlador>>>>>>>>
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   
   set_param('db4_3/To Workspace','VariableName','Ia3_3')	
   set_param('db4_3/To Workspace1','VariableName','Iaref3_3')	
   set_param('db4_3/To Workspace2','VariableName','If3_3')	
	  	[t3_3]=sim('db4_3');	
        
   set_param('db4_3/To Workspace','VariableName','Ia')	
   set_param('db4_3/To Workspace1','VariableName','Iaref')	
   set_param('db4_3/To Workspace2','VariableName','Iaf')	
        
   %		gráficas de la simulación 3-b
   figure('Tag','s3b','Name','Simulación 3 Motor B')
      subplot(311);
			plot(t3_1(:,1),Ia3_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			ylabel('Ia [A]')
			xlabel('tiempo [s]')
         legend('MØ = 30°',1);
         grid
   	subplot(312);
			plot(t3_2(:,1),Ia3_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			ylabel('Ia [A]')
         xlabel('tiempo [s]')
         legend('MØ = 45°',1);
			grid
		subplot(313);
			plot(t3_3(:,1),Ia3_3(:,1),'color',[0.1 0.65 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			ylabel('Ia [A]')
         xlabel('tiempo [s]')
         legend('MØ = 60°',1);
			grid
         zoom

  	figure('Tag','s3bconjunta','Name','Simulación 3 Superpuesta (Motor B)')
		plot(t3_1(:,1),Ia3_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
   		hold on
	   plot(t3_2(:,1),Ia3_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	   	hold on
   	plot(t3_3(:,1),Ia3_3(:,1),'color',[0.6 0.7 0.5],'LineWidth',1.2)
	   ylabel('Ia [A]')
	   xlabel('tiempo [s]')
   	grid
      legend('MØ = 30°','MØ = 45°','MØ = 60°',0);
      zoom
                  
elseif NumeroSim == 4   
%		simulación 4_4 
   %<<<parametros controlador>>>>>>>>
    set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kti',num2str(Kti),'Tfi',num2str(Tfi),'TIi',num2str(TIi))	
%   	set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Tfi',num2str(Tfi))	
%     set_param('db4_3/Armature Current Controller (PI) with Current-sensor','TIi',num2str(TIi))
	%<<<<<parámetros rectificador>>>>>>
	set_param('db4_3/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr))
	set_param('db4_3/Controlled Rectifier (Delay Time)','Tpr',num2str(Tpr))
   %<<<<<parámetros motor>>>>>>>>>>>>>
    set_param('db4_3/Permanent Magnet PMDCM','k',num2str(Kn))
    set_param('db4_3/Permanent Magnet PMDCM','Ra',num2str(Ra))
    set_param('db4_3/Permanent Magnet PMDCM','La',num2str(La))
   
  	Kpi=str2num(get(findobj('Tag','variable2'),'String'));
	%<<<parametros controlador>>>>>>>>
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   
   set_param('db4_3/To Workspace','VariableName','Ia4_1')	
   set_param('db4_3/To Workspace1','VariableName','Iaref4_1')	
   set_param('db4_3/To Workspace2','VariableName','If4_1')	
	  	[t4_1]=sim('db4_3');	
        
  	Kpi=str2num(get(findobj('Tag','variable3'),'String'));
  	%<<<parametros controlador>>>>>>>>
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   
   set_param('db4_3/To Workspace','VariableName','Ia4_2')	
   set_param('db4_3/To Workspace1','VariableName','Iaref4_2')	
   set_param('db4_3/To Workspace2','VariableName','If4_2')	
	  	[t4_2]=sim('db4_3');	
        
   set_param('db4_3/To Workspace','VariableName','Ia')	
   set_param('db4_3/To Workspace1','VariableName','Iaref')	
   set_param('db4_3/To Workspace2','VariableName','Iaf')	

   %		gráficas de la simulación 4-b
   figure('Tag','s4b','Name','Simulación 4 Motor B')
   	subplot(211);
			plot(t4_1(:,1),Ia4_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
			ylabel('Ia [A]')
			xlabel('tiempo [s]')
         legend('MØ = 63.53°',4);
         grid
   	subplot(212);
			plot(t4_2(:,1),Ia4_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			ylabel('Ia [A]')
	      xlabel('tiempo [s]')
   	   legend('MØ = 60°',4);
			grid	
	   zoom
         
   figure('Tag','s4conjunta','Name','Simulación 4 Superpuesta (Motor B)')
		plot(t4_1(:,1),Ia4_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
		   hold on
	   plot(t4_2(:,1),Ia4_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold off
      ylabel('Ia [A]')
	   xlabel('tiempo [s]')
   	grid
      legend('MØ = 63.53°','MØ = 60°',0);
      zoom
      
elseif NumeroSim == 5   
%		simulación 5 - b
   %<<<parametros controlador>>>>>>>>
   set_param('db4_5/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))	
%   	set_param('db4_5/Armature Current Controller (PI) with Current-sensor')	
% 	set_param('db4_5/Armature Current Controller (PI) with Current-sensor')	
%    set_param('db4_5/Armature Current Controller (PI) with Current-sensor')
	%<<<<<parámetros rectificador>>>>>>
	set_param('db4_5/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr),'Tpr',num2str(Tpr))
% 	set_param('db4_5/Controlled Rectifier (Delay Time)')
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_5/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))
%    set_param('db4_5/Permanent Magnet PMDCM','Ra',num2str(Ra))
%    set_param('db4_5/Permanent Magnet PMDCM','La',num2str(La))
 set_param('db4_5/First Order Mechanical System','J',num2str(J),'b',num2str(b),'wor',num2str(0))

   
        
 	Kpi=str2num(get(findobj('Tag','variable2'),'String'));
	set_param('db4_5/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   
   set_param('db4_5/To Workspace','VariableName','Ia5_1');	
   set_param('db4_5/To Workspace1','VariableName','w5_1');
   set_param('db4_5/To Workspace2','VariableName','Ua5_1');
   set_param('db4_5/To Workspace3','VariableName','Iaf5_1');
	   [t5_1]=sim('db4_5');	
      
   Kpi=str2num(get(findobj('Tag','variable3'),'String'));
  	set_param('db4_5/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
     
   set_param('db4_5/To Workspace','VariableName','Ia5_2');	
   set_param('db4_5/To Workspace1','VariableName','w5_2');	
   set_param('db4_5/To Workspace2','VariableName','Ua5_2');	
   set_param('db4_5/To Workspace3','VariableName','Iaf5_2');
   	[t5_2]=sim('db4_5');	
   
   figure('Tag','s5I','Name','Simulación 4-5 Corriente de armadura (Motor B)','Position',pos1)
		plot(t5_1(:,1),Ia5_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
		   hold on
      plot(t5_1(:,1),Iaf5_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')   
      	hold on
      plot(t5_2(:,1),Ia5_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)	
      	hold on
      plot(t5_2(:,1),Iaf5_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2,'LineStyle',':')
        	hold on
      plot(t5_2(:,1),IarefKti(:,1),'color',[0.3 0.6 0.4],'LineWidth',1.2)
		ylabel('Ia [A]')
	   xlabel('tiempo [s]')
   	grid
      legend('Ia (MØ = 63.53°)','Iaf(MØ = 63.53°)','Ia (MØ = 60°)','Iaf(MØ = 60°)','Iaref',0);
      zoom
      
   figure('Tag','s5omega','Name','Simulación 4-5 Velocidad Angular(Motor B)','Position',pos2)
		plot(t5_1(:,1),w5_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
		   hold on
	   plot(t5_2(:,1),w5_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			hold on
	   ylabel('w [rad/s]')
	   xlabel('tiempo [s]')
   	grid
      legend('MØ = 63.53°','MØ = 60°',0);
      zoom
      
   figure('Tag','s5Uarm','Name','Simulación 4-5 Tensión de Armadura (Motor B)','Position',pos3)
   plot(t5_1(:,1),Ua5_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
		   hold on
	   plot(t5_2(:,1),Ua5_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			hold on
	   ylabel('Ua [V]')
	   xlabel('tiempo [s]')
   	grid
      legend('MØ = 63.53°','MØ = 60°',0);
      zoom

	set_param('db4_5/To Workspace','VariableName','Ia')	
   set_param('db4_5/To Workspace1','VariableName','w')
   set_param('db4_5/To Workspace2','VariableName','Ua')
   set_param('db4_5/To Workspace3','VariableName','Iaf')
   
elseif NumeroSim == 6   
%		simulación 6 - b
   %<<<parametros controlador>>>>>>>>
   set_param('db4_5/Armature Current Controller (PI) with Current-sensor','Kti',num2str(Kti))	
  	set_param('db4_5/Armature Current Controller (PI) with Current-sensor','Tfi',num2str(Tfi))	
   set_param('db4_5/Armature Current Controller (PI) with Current-sensor','TIi',num2str(TIi))
	%<<<<<parámetros rectificador>>>>>>
	set_param('db4_5/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr))
	set_param('db4_5/Controlled Rectifier (Delay Time)','Tpr',num2str(Tpr))
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_5/Permanent Magnet PMDCM','k',num2str(Kn))
   set_param('db4_5/Permanent Magnet PMDCM','Ra',num2str(Ra))
   set_param('db4_5/Permanent Magnet PMDCM','La',num2str(La))
   
   Kpi=str2num(get(findobj('Tag','variable2'),'String'));
	set_param('db4_5/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   set_param('db4_5/To Workspace','VariableName','Ia6_1');	
   set_param('db4_5/To Workspace1','VariableName','w6_1');	
   set_param('db4_5/To Workspace2','VariableName','Ua6_1');	
 	  [t6_1]=sim('db4_5',50);	
        
 	Kpi=str2num(get(findobj('Tag','variable3'),'String'));
	set_param('db4_5/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   set_param('db4_5/To Workspace','VariableName','Ia6_2');	
   set_param('db4_5/To Workspace1','VariableName','w6_2');
   set_param('db4_5/To Workspace2','VariableName','Ua6_2');
	   [t6_2]=sim('db4_5',50);	
      
   figure('Tag','s6I','Name','Simulación 6 Corriente de armadura (Motor B)','Position',pos1)
		plot(t6_1(:,1),Ia6_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
		   hold on
	   plot(t6_2(:,1),Ia6_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
	   ylabel('Ia [A]')
	   xlabel('tiempo [s]')
   	grid
      legend('MØ = 63.53°','MØ = 60°',0);
      zoom
      
   figure('Tag','s6omega','Name','Simulación 6 Velocidad Angular (Motor B)','Position',pos2)
		plot(t6_1(:,1),w6_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
		   hold on
	   plot(t6_2(:,1),w6_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			hold on
	   ylabel('w [rad/s]')
	   xlabel('tiempo [s]')
   	grid
      legend('MØ = 63.53°','MØ = 60°',0);
      zoom
      
   figure('Tag','s6Uarm','Name','Simulación 6 Tensión de Armadura (Motor B)','Position',pos3)
   plot(t6_1(:,1),Ua6_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
		   hold on
	   plot(t6_2(:,1),Ua6_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			hold on
	   ylabel('Ua [V]')
	   xlabel('tiempo [s]')
   	grid
      legend('MØ = 63.53°','MØ = 60°',0);
   	zoom

	set_param('db4_5/To Workspace','VariableName','Ia')	
   set_param('db4_5/To Workspace1','VariableName','w')
   set_param('db4_5/To Workspace2','VariableName','Ua')
   
elseif NumeroSim == 9   
%		simulación 9 - B 
   %<<<parametros controlador>>>>>>>>
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kti',num2str(Kti))	
  	set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Tfi',num2str(Tfi))	
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','TIi',num2str(TIi))
	%<<<<<parámetros rectificador>>>>>>
	set_param('db4_3/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr))
	set_param('db4_3/Controlled Rectifier (Delay Time)','Tpr',num2str(Tpr))
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_3/Permanent Magnet PMDCM','k',num2str(Kn))
   set_param('db4_3/Permanent Magnet PMDCM','Ra',num2str(Ra))
   set_param('db4_3/Permanent Magnet PMDCM','La',num2str(La))
   
   Kpi=str2num(get(findobj('Tag','variable2'),'String'));
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   
   set_param('db4_3/To Workspace','VariableName','Ia9_1');	
   set_param('db4_3/To Workspace1','VariableName','Iaref9_1')	
   set_param('db4_3/To Workspace2','VariableName','If9_1')	
		[t9_1]=sim('db4_3',0.35);	
        
 	Kpi=str2num(get(findobj('Tag','variable3'),'String'));
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi))	
   
   set_param('db4_3/To Workspace','VariableName','Ia9_2');	
   set_param('db4_3/To Workspace1','VariableName','Iaref9_2')	
   set_param('db4_3/To Workspace2','VariableName','If9_2')	
 	   [t9_2]=sim('db4_3',.35);	
       
   figure('Tag','s9I','Name','Simulación 9 Corriente de armadura (Motor B)')
		plot(t9_1(:,1),Ia9_1(:,1),'color',[0 0 0.5],'LineWidth',1.2)      
		   hold on
	   plot(t9_2(:,1),Ia9_2(:,1),'color',[0.1 0.65 0.1],'LineWidth',1.2)
      	hold on
         
      [tout]=sim('db4_9',.35);   
		plot(tout(:,1),Ia(:,1),'color',[1 0.6 0],'LineWidth',1.2)      
  	ylabel('Ia [A]')
	xlabel('tiempo[s]')
   grid
	legend('MØ = 63.53°','MØ = 60°','Ia (PT1)',0);
   hold off	     
   zoom       
   set_param('db4_3/To Workspace','VariableName','Ia')
   set_param('db4_3/To Workspace1','VariableName','Iaref')	
   set_param('db4_3/To Workspace2','VariableName','If')	
end   
  