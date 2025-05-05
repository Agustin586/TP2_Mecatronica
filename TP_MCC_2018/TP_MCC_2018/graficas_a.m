%gráficas para la simulaciones del motor A
NumeroSim=get(findobj('Tag','ListaSim_A'),'Value');
bdwidth = 20;
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
   TIi=str2num(get(findobj('Tag','variable3'),'String'));
   
   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_1/To Workspace','VariableName','Ia1_1')	
   set_param('db4_1/To Workspace1','VariableName','Iaref1_1')	
   set_param('db4_1/To Workspace2','VariableName','If1_1')	
   	
   %<<<<<simulación>>>>>>>>>>>>>
   [t1_1]=sim('db4_1');	
    
   %<<<<<segundo juego de parámetros>>>>>>>>>>>>>
   Kpi=str2num(get(findobj('Tag','variable4'),'String'));
   TIi=str2num(get(findobj('Tag','variable5'),'String'));

   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_1/To Workspace','VariableName','Ia1_2')
   set_param('db4_1/To Workspace1','VariableName','Iaref1_2')	
   set_param('db4_1/To Workspace2','VariableName','If1_2')

   %<<<<<simulación>>>>>>>>>>>>>
   [t1_2]=sim('db4_1');
   
   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_1/To Workspace','VariableName','Ia')	
   set_param('db4_1/To Workspace1','VariableName','Iaref')	
   set_param('db4_1/To Workspace2','VariableName','If')
   
   %		gráficas de la simulación 1-a
   figure('Tag','s1a','Name','Simulación 1 Motor A')
     	subplot(211);
			plot(t1_1(:,1),Ia1_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
         hold on
         plot(t1_1(:,1),If1_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
	      plot(t1_1(:,1),Iaref1_1(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			legend('Ia','Iaf','Iaref');
            h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
	      ylabel('Ia [A]','FontSize',8)
			xlabel('tiempo [s]','FontSize',8)
         grid
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
         title('1º Parámetro','FontWeight','Bold')
         
       
   	subplot(212);
			plot(t1_2(:,1),Ia1_2(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
         hold on
         plot(t1_2(:,1),If1_2(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
	      plot(t1_2(:,1),Iaref1_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			legend('Ia','Iaf','Iaref');
	         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
			ylabel('Ia [A]','FontSize',8)
			xlabel('tiempo [s]','FontSize',8)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
         title('2º Parámetro','FontWeight','Bold')
         grid
      zoom
  	figure('Tag','s1aconjunta','Name','Simulación 1 Superpuesta (Motor A)')
	  	plot(t1_1(:,1),Ia1_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on  
 		plot(t1_2(:,1),Ia1_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('1º Parámetro','2º Parámetro');
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      hold off	
		zoom
elseif NumeroSim == 2   
	%		simulación 2
   Kpi=str2num(get(findobj('Tag','variable2'),'String'));
   TIi=str2num(get(findobj('Tag','variable3'),'String'));
   
   %<<<parametros controlador>>>>>>>>
   set_param('db4_2/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))
   
   %<<<<<parámetros Rectificador>>>>>>>>  
   set_param('db4_2/Controlled Rectifier (PT1)','Kpr',num2str(Kpr),'Tpr',num2str(Tpr))

   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_2/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))

   %<<<<<parámetros workspaces>>>>>>>
   set_param('db4_2/To Workspace','VariableName','Ia2_1')	
   set_param('db4_2/To Workspace2','VariableName','Iaref2_1')	
   set_param('db4_2/To Workspace3','VariableName','If2_1')	
   
   %<<<<<simulación>>>>>>>>>>>>>
  	[t2_1]=sim('db4_2');	
   
    
   %<<<<<segundo juego de parámetros>>>>>>>>>>>>> 
   Kpi=str2num(get(findobj('Tag','variable4'),'String'));
   TIi=str2num(get(findobj('Tag','variable5'),'String'));
   
   %<<<parametros controlador>>>>>>>>
   set_param('db4_2/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))
    
   %<<<<<parámetros workspaces>>>>>>>
   set_param('db4_2/To Workspace','VariableName','Ia2_2')
   set_param('db4_2/To Workspace2','VariableName','Iaref2_2')	
   set_param('db4_2/To Workspace3','VariableName','If2_2')	
    
   %<<<<<simulación>>>>>>>>>>>>>
   	[t2_2]=sim('db4_2');
             
   %<<<<<parámetros workspaces>>>>>>>
   set_param('db4_2/To Workspace','VariableName','Ia')	
   set_param('db4_2/To Workspace2','VariableName','Iaref')	
   set_param('db4_2/To Workspace3','VariableName','If')	

   %		gráficas de la simulación 2-a
   figure('Tag','s2a','Name','Simulación 2 Motor A')
     	subplot(211);
			plot(t2_1(:,1),Ia2_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
		   hold on
         plot(t2_1(:,1),If2_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
	      plot(t2_1(:,1),Iaref2_1(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			legend('Ia','Iaf','Iaref');
	         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
			ylabel('Ia [A]','FontSize',8)
			xlabel('tiempo [s]','FontSize',8)
         grid
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
         title('1º Parámetro','FontWeight','Bold')
   	subplot(212);
			plot(t2_2(:,1),Ia2_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
         hold on
         plot(t2_2(:,1),If2_2(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
	      plot(t2_2(:,1),Iaref2_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			legend('Ia','Iaf','Iaref');
	         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
			ylabel('Ia [A]','FontSize',8)
			xlabel('tiempo [s]','FontSize',8)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
         title('2º Parámetro','FontWeight','Bold')
         grid
      zoom
  	figure('Tag','s2aconjunta','Name','Simulación 2 Superpuesta (Motor A)')
	  	plot(t2_1(:,1),Ia2_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on  
 		plot(t2_2(:,1),Ia2_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('1º Parámetro','2º Parámetro');
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      hold off	
		zoom
elseif NumeroSim == 3   
%	simulación 3
   Kpi=str2num(get(findobj('Tag','variable2'),'String'));
   TIi=str2num(get(findobj('Tag','variable3'),'String'));
%<<<parametros controlador>>>>>>>>
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))

   %<<<<<parámetros rectificador>>>>>>
   set_param('db4_3/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr),'Tpr',num2str(Tpr))
   
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_3/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))
   
   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_3/To Workspace','VariableName','Ia3_1')	
   set_param('db4_3/To Workspace1','VariableName','Iaref3_1')	
   set_param('db4_3/To Workspace2','VariableName','If3_1')	
   %<<<<<simulación>>>>>>>>>>>>>
   [t3_1]=sim('db4_3');	
   
   %<<<<<segundo juego de parámetros>>>>>>>>>>>>>
   Kpi=str2num(get(findobj('Tag','variable4'),'String'));
   TIi=str2num(get(findobj('Tag','variable5'),'String'));

   %<<<parametros controlador>>>>>>>>
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))
   
   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_3/To Workspace','VariableName','Ia3_2')
   set_param('db4_3/To Workspace1','VariableName','Iaref3_2')	
   set_param('db4_3/To Workspace2','VariableName','If3_2')	
   %<<<<<simulación>>>>>>>>>>>>>
   [t3_2]=sim('db4_3');
             
   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_3/To Workspace','VariableName','Ia')	
   set_param('db4_3/To Workspace1','VariableName','Iaref')	
   set_param('db4_3/To Workspace2','VariableName','Iaf')	

   %		gráficas de la simulación 4-3-a
   figure('Tag','s3a','Name','Simulación 3 Motor A')
     	subplot(211);
			plot(t3_1(:,1),Ia3_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
		   hold on
         plot(t3_1(:,1),If3_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
	      plot(t3_1(:,1),Iaref3_1(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			legend('Ia','Iaf','Iaref');
			ylabel('Ia [A]','FontSize',8)
			xlabel('tiempo [s]','FontSize',8)
         grid
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
         title('1º Parámetro','FontWeight','Bold')
   	subplot(212);
			plot(t3_2(:,1),Ia3_2(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
		   hold on
         plot(t3_2(:,1),If3_2(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
	      plot(t3_2(:,1),Iaref3_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
			legend('Ia','Iaf','Iaref');
			ylabel('Ia [A]','FontSize',8)
			xlabel('tiempo [s]','FontSize',8)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
         title('2º Parámetro','FontWeight','Bold')
         grid
      zoom
  	figure('Tag','s1aconjunta','Name','Simulación 3 Superpuesta (Motor A)')
	  	plot(t3_1(:,1),Ia3_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on  
 		plot(t3_2(:,1),Ia3_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('1º Parámetro','2º Parámetro');
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
	   hold off	
		zoom
elseif NumeroSim == 4   
%		simulación 4 
   Kpi=str2num(get(findobj('Tag','variable2'),'String'));
   TIi=str2num(get(findobj('Tag','variable3'),'String'));
    
   %<<<parametros controlador>>>>>>>>.
   set_param('db4_3/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))
   
   %<<<<<parámetros rectificador>>>>>>
   set_param('db4_3/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr),'Tpr',num2str(Tpr))
    
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_3/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))
   
   %<<<<<simulación>>>>>>>>>>>>>
    [tout]=sim('db4_3');	

   figure('Tag','s4aconjunta','Name','Simulación 4-4 (Motor A)')
		plot(tout(:,1),Ia(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
      hold on
      plot(tout(:,1),Iaf(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
      plot(tout(:,1),Iaref(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
		legend('Ia','Iaf','Iaref');
		   h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)     
	   ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
      zoom
   
elseif NumeroSim == 5   
%		simulación 5 - a
   Kpi=str2num(get(findobj('Tag','variable2'),'String'));
   TIi=str2num(get(findobj('Tag','variable3'),'String'));
   
   %<<<parametros controlador>>>>>>>>
   set_param('db4_5/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))	
  	
   %<<<<<parámetros rectificador>>>>>>
	set_param('db4_5/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr),'Tpr',num2str(Tpr))
    
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_5/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))
   
    %<<<<<parámetros carga mecánica>>>>>>>>>>>>>
   set_param('db4_5/First Order Mechanical System','J',num2str(15),'b',num2str(0),'wor',num2str(0))
   
   
   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_5/To Workspace','VariableName','Ia5_1');	
   set_param('db4_5/To Workspace1','VariableName','w5_1');
   set_param('db4_5/To Workspace2','VariableName','Ua5_1');
   set_param('db4_5/To Workspace3','VariableName','Iaf5_1');
   
%    set_param('db4_5/To Workspace','VariableName','Ia')	
%    set_param('db4_5/To Workspace1','VariableName','w')
%    set_param('db4_5/To Workspace2','VariableName','Ua')
%    set_param('db4_5/To Workspace3','VariableName','Iaf')
%    
   %<<<<<simulación>>>>>>>>>>>>>
   [t5_1]=sim('db4_5');	
         
   %<<<<<Gráficas>>>>>>>>>>>>>
   figure('Tag','s5Ia','Name','Simulación 5 Corriente de armadura (Motor A)','Position',pos1)
		plot(t5_1(:,1),Ia5_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
		   hold on
      plot(t5_1(:,1),Iaf5_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')   
      	hold on
      plot(t5_1(:,1),IarefKti(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
		ylabel('Ia [A]','FontSize',8)
      xlabel('tiempo [s]','FontSize',8)
         h=get(gcf,'CurrentAxes');
   	   set(h,'FontSize',8)
   	grid
      legend('Ia ','Iaf','Iaref');
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)     
     zoom
      
   figure('Tag','s5omegaa','Name','Simulación 5 Velocidad Angular(Motor A)','Position',pos2)
		plot(t5_1(:,1),w5_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
	   ylabel('\omega [rad/s]','FontSize',8)
      xlabel('tiempo [s]','FontSize',8)
         h=get(gcf,'CurrentAxes');
   	   set(h,'FontSize',8)
   	grid
      zoom
      
   figure('Tag','s5Uarma','Name','Simulación 5 Tensión de Armadura (Motor A)','Position',pos3)
   plot(t5_1(:,1),Ua5_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
	   ylabel('Ua [V]')
      xlabel('tiempo [s]','FontSize',8)
		   h=get(gcf,'CurrentAxes');
   		set(h,'FontSize',8)
   	grid
      zoom

	
   
elseif NumeroSim == 6   
%		simulación 6 - A
   Kpi=str2num(get(findobj('Tag','variable2'),'String'));
   TIi=str2num(get(findobj('Tag','variable3'),'String'));
   b=str2num(get(findobj('Tag','variable4'),'String'));
   Tc=str2num(get(findobj('Tag','variable5'),'String'));
   tTc=str2num(get(findobj('Tag','variable6'),'String'));
   
      %<<<parametros controlador>>>>>>>>
   set_param('db4_5/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))	
  	
   %<<<<<parámetros rectificador>>>>>>
	set_param('db4_5/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr),'Tpr',num2str(Tpr))
    
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_5/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))
   
    %<<<<<parámetros carga mecánica>>>>>>>>>>>>>
   set_param('db4_5/First Order Mechanical System','J',num2str(15),'b',num2str(b),'wor',num2str(0))
   

    %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_5/To Workspace','VariableName','Ia6_1');	
   set_param('db4_5/To Workspace1','VariableName','w6_1');	
   set_param('db4_5/To Workspace2','VariableName','Ua6_1');	
   
%    set_param('db4_5/To Workspace','VariableName','Ia')	
%    set_param('db4_5/To Workspace1','VariableName','w')
%    set_param('db4_5/To Workspace2','VariableName','Ua')
   
   %<<<<<simulación>>>>>>>>>>>>>
 	[t6_1]=sim('db4_5');	
              
   figure('Tag','s6Ia','Name','Simulación 4-6 Corriente de armadura (Motor A)','Position',pos1)
		plot(t6_1(:,1),Ia6_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
	   ylabel('Ia [A]','FontSize',8)
      xlabel('tiempo [s]','FontSize',8)
	      h=get(gcf,'CurrentAxes');
         set(h,'FontSize',8)
   	grid
      zoom
      
   figure('Tag','s6omegaa','Name','Simulación 4-6 Velocidad Angular (Motor A)','Position',pos2)
		plot(t6_1(:,1),w6_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
	   ylabel('\omega [rad/s]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
         h=get(gcf,'CurrentAxes');
  	      set(h,'FontSize',8)
   	grid
      zoom
      
   figure('Tag','s6Uarma','Name','Simulación 4-6 Tensión de Armadura (Motor A)','Position',pos3)
   plot(t6_1(:,1),Ua6_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
	   ylabel('Ua [V]')
	   xlabel('tiempo [s]','FontSize',8)
         h=get(gcf,'CurrentAxes');
  	      set(h,'FontSize',8)
   	grid
   	zoom

   
elseif NumeroSim == 7   
%		simulación 6 - Opcional
   
 	Kpi=str2num(get(findobj('Tag','variable2'),'String'));
    
   %<<<parametros controlador>>>>>>>>
   set_param('db4_6/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))	
  	
   %<<<<<parámetros rectificador>>>>>>
	set_param('db4_6/Controlled Rectifier (Delay Time)','Kpr',num2str(Kpr),'Tpr',num2str(Tpr))
    
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_6/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))
   
    %<<<<<parámetros carga mecánica>>>>>>>>>>>>>
   set_param('db4_6/First Order Mechanical System','J',num2str(15),'b',num2str(b),'wor',num2str(0))
  
    %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_6/To Workspace','VariableName','Ia6a_1');	
   set_param('db4_6/To Workspace1','VariableName','w6a_1');
   set_param('db4_6/To Workspace2','VariableName','Ua6a_1');
   set_param('db4_6/To Workspace3','VariableName','Iaf6a_1');
   
   %<<<<<simulación>>>>>>>>>>>>>
	   [t6a_1]=sim('db4_6');	
         
   figure('Tag','s6aIa','Name','Simulación 4-6 Opcional Corriente de armadura (Motor A)','Position',pos1)
		plot(t6a_1(:,1),Ia6a_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
		   hold on
      plot(t6a_1(:,1),Iaf6a_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')   
      	hold on
      plot(t6a_1(:,1),IarefKti(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
		ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
         h=get(gcf,'CurrentAxes');
  	      set(h,'FontSize',8)
   	grid
      legend('Ia ','Iaf','Iaref');
      zoom
      
   figure('Tag','s6aomegaa','Name','Simulación 4-6 Opcional Velocidad Angular(Motor A)','Position',pos2)
		plot(t6a_1(:,1),w6a_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
	   ylabel('\omega [rad/s]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
         h=get(gcf,'CurrentAxes');
  	      set(h,'FontSize',8)
   	grid
      zoom
      
   figure('Tag','s6aUarma','Name','Simulación 4-6 Opcional Tensión de Armadura (Motor A)','Position',pos3)
   plot(t6a_1(:,1),Ua6a_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)      
	   ylabel('Ua [V]')
	   xlabel('tiempo [s]','FontSize',8)
         h=get(gcf,'CurrentAxes');
  	      set(h,'FontSize',8)
   	grid
      zoom

	set_param('db4_6/To Workspace','VariableName','Ia')	
   set_param('db4_6/To Workspace1','VariableName','w')
   set_param('db4_6/To Workspace2','VariableName','Ua')
   set_param('db4_6/To Workspace3','VariableName','Iaf')
   
      
elseif NumeroSim==8 
	%		simulación 8ZZrb (Zs=0)
   Kpi=Kpr*str2num(get(findobj('Tag','variable2'),'String'));
   TIi=str2num(get(findobj('Tag','variable3'),'String'));
   
   %<<<parametros controlador>>>>>>>>
   set_param('db4_8zzrb/Current-Controller with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi),'VLL',num2str(380))	
  	
   %<<<parametros controlador>>>>>>>>
   set_param('db4_8zzrb/3-phase Full-bridge without line-impedance','Vph',num2str(220),'f',num2str(50))	
   
   
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_8zzrb/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))

  
    %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   
 
%    
   sim('db4_8zzrb',1);	
          
   %		gráficas de la simulación 4-8-ZZrb
    figure('Tag','s8ZZa','Name','Simulación 8-a Corriente de armadura (Rotor Bloqueado)/Zs=0 (Motor A)','Position',pos1)
     	plot(t(:,1),Ir(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
		plot(t(:,1),Ia(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on 
   	plot(t(:,1),Iaf(:,1),'color',[0 0 0.5],'LineWidth',1.2)
      	hold on  
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Iaref','Ia','Iaf');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off	
      zoom
   figure('Tag','s8ZZea','Name','Simulación 8-a Tensiones (Rotor Bloqueado)/Zs=0 (Motor A)','Position',pos2)
   	plot(t(:,1),Vp(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
   	plot(t(:,1),e(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on  
 	   ylabel('Tensiones [V]')
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Vp','e');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
  		      set(h,'FontSize',8)
      hold off	
      zoom
      %<<<<<<<<REVISAR      >>>>>>>>>>>>>>>>
      %<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>><<
elseif NumeroSim==9
	%		simulación 4_8 ZZmc(Zs=0)
	Kpi=Kpr*str2num(get(findobj('Tag','variable2'),'String'));
	TIi=str2num(get(findobj('Tag','variable3'),'String'));
	fcem=str2num(get(findobj('Tag','variable1'),'String'));
    
   %<<<parametros controlador>>>>>>>>
   set_param('db4_8zzmc/Current-Controller with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi),'VLL',num2str(380))	
  	
   %<<<parametros controlador>>>>>>>>
   set_param('db4_8zzmc/3-phase Full-bridge without line-impedance','Vph',num2str(220),'f',num2str(50))	
   
   
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_8zzmc/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))

   %<<<<<parámetros carga mecánica>>>>>>>>>>>>>
   set_param('db4_8zzmc/First Order Mechanical System','J',num2str(15),'b',num2str(b),'wor',num2str(0))
    
    
    
    
  		sim('db4_8zzmc',1);	
   %		gráficas de la simulación 4-8-a ZZmc
   figure('Tag','s9a','Name','Simulación 4-8-b Corriente de armadura (Modelo Completo)/Zs=0 (Motor A)','Position',pos1)
   	plot(t(:,1),Ir(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
		plot(t(:,1),Ia(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on 
   	plot(t(:,1),Iaf(:,1),'color',[0 0 0.5],'LineWidth',1.2)
      	hold on  
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Iaref','Ia','Iaf');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
	      h=get(gcf,'CurrentAxes');
  		      set(h,'FontSize',8)
      hold off	     
      zoom
   figure('Tag','s8ZZe1a','Name','Simulación 4-8-b Tensiones (Motor Completo)/Zs=0 (Motor A)','Position',pos2)
   	plot(t(:,1),Vp(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
   	plot(t(:,1),e(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	   ylabel('Tensiones [V]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Vp','e');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off
      zoom
      
 elseif NumeroSim==10
	%		simulación 4_8 ZNZrb(Zs!=0)
	Kpi=Kpr*str2num(get(findobj('Tag','variable2'),'String'));
	TIi=str2num(get(findobj('Tag','variable3'),'String'));
    fcem=str2num(get(findobj('Tag','variable1'),'String'));

   %<<<parametros controlador>>>>>>>>
   set_param('db4_8znzrb/Current-Controller with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi),'VLL',num2str(380))	
  	
   %<<<parametros PR>>>>>>>>
   set_param('db4_8znzrb/3-phase Full-bridge with line-impedance','Vph',num2str(220),'f',num2str(50),'Ld',num2str(Ld),'Rd',num2str(Rd),'Ls',num2str(Ls),'Rs',num2str(Rs))	
   
   
   %<<<<<parámetros motor>>>>>>>>>>>>>
   set_param('db4_8znzrb/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0),'Ls',num2str(Ls),'Rs',num2str(Rs))

  
   	sim('db4_8znzrb',1);	
   %		gráficas de la simulación 4-8-a
   figure('Tag','s8ZNZrb2','Name','Simulación 4-8-c Corriente de armadura (Rotor Bloqueado)/Zs no nula(Motor A)','Position',pos1)
   	plot(t(:,1),Ir(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
		plot(t(:,1),Ia(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on 
   	plot(t(:,1),Iaf(:,1),'color',[0 0 0.5],'LineWidth',1.2)
      	hold on  
	   ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Iaref','Ia','Iaf');
         h=findobj(gcf,'Type','text');
         	set(h,'fontUnits','points','FontSize',8)     
   		h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off	     
      zoom
      
   figure('Tag','s8ZNZea','Name','Simulación 4-8-c Tensiones (Motor Completo)/Zs no nula(Motor A)','Position',pos2)
   	plot(t(:,1),Vp(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
   	plot(t(:,1),e(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on  
 	   ylabel('Tensiones [V]')
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Vp','e');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
     		h=get(gcf,'CurrentAxes');
  	      	set(h,'FontSize',8)
      hold off	
      zoom
      
elseif NumeroSim==11 
      %		simulación 9 - a          
  	Kpi=Kpr*str2num(get(findobj('Tag','variable2'),'String'));
	TIi=str2num(get(findobj('Tag','variable3'),'String'));   
    
   sim('db4_8znzrb',0.25);	
   
   
  	figure('Tag','s9Ia','Name','Simulación 9 Corriente de armadura (Motor A)')
     	plot(t(:,1),Ir(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
      plot(t(:,1),Ia(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on  
 	   plot(t(:,1),Iaf(:,1),'color',[0 0 0.5],'LineWidth',1.2)
       	hold on        
   	tout=sim('db4_9',0.25);   
		plot(tout(:,1),Ia(:,1),'color',[1 0.6 0],'LineWidth',1.2)      
  	ylabel('Ia [A]','FontSize',8)
	xlabel('tiempo [s]','FontSize',8)
   grid
	legend('Iaref','Ia','Iaf','Ia (PT1)');
      h=findobj(gcf,'Type','text');
      set(h,'fontUnits','points','FontSize',8)     
   hold off	     
   zoom    
elseif NumeroSim==12 
	%		simulación 4_10			Velocidad
	Kpn=str2num(get(findobj('Tag','variable1'),'String'));
	TIn=str2num(get(findobj('Tag','variable2'),'String'));
    
    %<<<parametros controlador>>>>>>>>
   set_param('db4_10/Speed Control','Kpn',num2str(Kpn),'TIn',num2str(TIn),'Ktn',num2str(Ktn),'Tfn',num2str(Tfi),'Ian',num2str(Ian))	
  	
   %<<<<<parámetros carga mecánica>>>>>>>>>>>>>
   set_param('db4_10/First Order Mechanical System','J',num2str(15),'b',num2str(b),'wor',num2str(0))
  	
    %<<<<<parámetros To Workspace>>>>>>>>>>>>>
    set_param('db4_10/To Workspace','VariableName','Ia10_1')	
  	set_param('db4_10/To Workspace3','VariableName','Iaref10_1')	
  	set_param('db4_10/To Workspace4','VariableName','wref10_1')	
  	set_param('db4_10/To Workspace1','VariableName','w10_1')	
  	set_param('db4_10/To Workspace2','VariableName','wf10_1')	
       
    %<<<<<simulación>>>>>>>>>>>>>
    [t10_1]=sim('db4_10',5);	
   
    Kpn=str2num(get(findobj('Tag','variable3'),'String'));
	TIn=str2num(get(findobj('Tag','variable4'),'String'));
    
    %<<<parametros controlador>>>>>>>>
    set_param('db4_10/Speed Control','Kpn',num2str(Kpn),'TIn',num2str(TIn),'Ktn',num2str(Ktn),'Tfn',num2str(Tfi),'Ian',num2str(Ian))	
  
    %<<<<<parámetros To Workspace>>>>>>>>>>>>>
    set_param('db4_10/To Workspace','VariableName','Ia10_2')
  	set_param('db4_10/To Workspace3','VariableName','Iaref10_2')	
  	set_param('db4_10/To Workspace4','VariableName','wref10_2')	
  	set_param('db4_10/To Workspace1','VariableName','w10_2')	
  	set_param('db4_10/To Workspace2','VariableName','wf10_2')	
       
    %<<<<<simulación>>>>>>>>>>>>>
   	[t10_2]=sim('db4_10',5);
       
    Kpn=str2num(get(findobj('Tag','variable5'),'String'));
	TIn=str2num(get(findobj('Tag','variable6'),'String'));
    
   %<<<parametros controlador>>>>>>>>
   set_param('db4_10/Speed Control','Kpn',num2str(Kpn),'TIn',num2str(TIn),'Ktn',num2str(Ktn),'Tfn',num2str(Tfi),'Ian',num2str(Ian))	
  
        
   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
   set_param('db4_10/To Workspace','VariableName','Ia10_3')	    
   set_param('db4_10/To Workspace3','VariableName','Iaref10_3')
   set_param('db4_10/To Workspace4','VariableName','wref10_3')
   set_param('db4_10/To Workspace1','VariableName','w10_3')
   set_param('db4_10/To Workspace2','VariableName','wf10_3')	
	
   %<<<<<simulación>>>>>>>>>>>>>
   [t10_3]=sim('db4_10',5);
      
     
   %<<<<<parámetros To Workspace>>>>>>>>>>>>
   set_param('db4_10/To Workspace','VariableName','Ia')	
   set_param('db4_10/To Workspace3','VariableName','Iaref')
   set_param('db4_10/To Workspace4','VariableName','wref')
   set_param('db4_10/To Workspace1','VariableName','w')
   set_param('db4_10/To Workspace2','VariableName','wf')   
   
       
   %		gráficas de la simulación 4-10 Corriente
   figure('Tag','s10','Name','Simulación 4-10 Corriente (Motor A)')
     	subplot(311);
        	plot(t10_1(:,1),Ia10_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
        	hold on
			plot(t10_1(:,1),Iaref10_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
			ylabel('Ia [A]','FontSize',8)
		%	xlabel('tiempo [s]','FontSize',8)
         title('MØ = 30°')
         legend('Ia','Iaref');
         grid
   	subplot(312);
	      plot(t10_2(:,1),Ia10_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
        	hold on
			plot(t10_2(:,1),Iaref10_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2,'LineStyle',':')
			ylabel('Ia [A]','FontSize',8)
		%	xlabel('tiempo [s]','FontSize',8)
         title('MØ = 45°')
         legend('Ia','Iaref');
         grid
		subplot(313);
			plot(t10_3(:,1),Ia10_3(:,1),'color',[0.5 0.6 0.45],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			hold on
			plot(t10_3(:,1),Iaref10_3(:,1),'color',[0.5 0.6 0.45],'LineWidth',1.2,'LineStyle',':')
			ylabel('Ia [A]','FontSize',8)
       % xlabel('tiempo [s]','FontSize',8)
         title('MØ = 60°')
         legend('Ia','Iaref');
		grid
      zoom
   figure('Tag','s10conjunta','Name','Simulación 4-10 Corrientes Superpuestas (Motor A)','Position',pos1)
	  	plot(t10_1(:,1),Ia10_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on  
 		plot(t10_2(:,1),Ia10_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
      plot(t10_3(:,1),Ia10_3(:,1),'color',[0.5 0.6 0.45],'LineWidth',1.2)
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('MØ = 30°','MØ = 45°','MØ = 60°');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
  		      set(h,'FontSize',8)
    	hold off	
		zoom
   %		Graficas de la velocidad      
   figure('Tag','s10vel','Name','Simulación 4-10 Velocidad (Motor A)')
   subplot(311);
        	plot(t10_1(:,1),w10_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
	     	hold on
			plot(t10_1(:,1),wf10_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
			plot(t10_1(:,1),wref10_1(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
			ylabel('\omega [rad/s]','FontSize',8)
		%	xlabel('tiempo [s]','FontSize',8)
         legend('\omega','\omegaf','\omegaref');
	      title('MØ = 30°')
	         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
   		grid
   subplot(312);
	      plot(t10_2(:,1),w10_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
        	hold on
			plot(t10_2(:,1),wf10_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2,'LineStyle',':')
			plot(t10_2(:,1),wref10_2(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
			ylabel('\omega [rad/s]','FontSize',8)
	%		xlabel('tiempo [s]','FontSize',8)
         legend('\omega','\omegaf','\omegaref');
         title('MØ = 45°')
            h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
	      grid
		subplot(313);
			plot(t10_3(:,1),w10_3(:,1),'color',[0.5 0.6 0.45],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
			hold on
			plot(t10_3(:,1),wf10_3(:,1),'color',[0.5 0.6 0.45],'LineWidth',1.2,'LineStyle',':')
			plot(t10_3(:,1),wref10_3(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
			ylabel('\omega [rad/s]','FontSize',8)
      %   xlabel('tiempo [s]','FontSize',8)
         legend('\omega','\omegaf','\omegaref');
         title('MØ = 60°');
	         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
			grid
   	   zoom
  	figure('Tag','s10conjuntav','Name','Simulación 4-10 Velocidades Superpuestas (Motor A)','Position',pos3)
	  	plot(t10_1(:,1),w10_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on  
 		plot(t10_2(:,1),w10_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
      plot(t10_3(:,1),w10_3(:,1),'color',[0.5 0.6 0.45],'LineWidth',1.2)
      ylabel('\omega [rad/s]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('MØ = 30°','MØ = 45°','MØ = 60°');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
     	hold off	
		zoom
elseif NumeroSim==13 
	%		simulación 4_11
   
    
	Kpn=str2num(get(findobj('Tag','variable1'),'String'));
	TIn=str2num(get(findobj('Tag','variable2'),'String'));
     %<<<parametros controlador>>>>>>>>
    set_param('db4_10/Speed Control','Kpn',num2str(Kpn),'TIn',num2str(TIn),'Ktn',num2str(Ktn),'Tfn',num2str(Tfi),'Ian',num2str(Ian))	
  
        
   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
    
  	set_param('db4_10/To Workspace','VariableName','Ia11_1')	
  	set_param('db4_10/To Workspace3','VariableName','Iaref11_1')	
  	set_param('db4_10/To Workspace4','VariableName','wref11_1')	
  	set_param('db4_10/To Workspace1','VariableName','w11_1')	
  	set_param('db4_10/To Workspace2','VariableName','wf11_1')
    
    
		[t11_1]=sim('db4_10');	
   
   Kpn=str2num(get(findobj('Tag','variable3'),'String'));
   TIn=str2num(get(findobj('Tag','variable4'),'String'));
   
   %<<<parametros controlador>>>>>>>>
   set_param('db4_10/Speed Control','Kpn',num2str(Kpn),'TIn',num2str(TIn),'Ktn',num2str(Ktn),'Tfn',num2str(Tfi),'Ian',num2str(Ian))	
  
       
   %<<<<<parámetros To Workspace>>>>>>>>>>>>>
    
   set_param('db4_10/To Workspace','VariableName','Ia11_2')
  	set_param('db4_10/To Workspace3','VariableName','Iaref11_2')	
  	set_param('db4_10/To Workspace4','VariableName','wref11_2')	
  	set_param('db4_10/To Workspace1','VariableName','w11_2')	
  	set_param('db4_10/To Workspace2','VariableName','wf11_2')	
    
    
   	[t11_2]=sim('db4_10');
             
   set_param('db4_10/To Workspace','VariableName','Ia')	
   set_param('db4_10/To Workspace3','VariableName','Iaref')
   set_param('db4_10/To Workspace4','VariableName','wref')
   set_param('db4_10/To Workspace1','VariableName','w')
   set_param('db4_10/To Workspace2','VariableName','wf')   
   
   %		gráficas de la simulación 4-11 Corriente
   figure('Tag','s11','Name','Simulación 4-11 Corriente (Motor A)')
     	subplot(211);
        	plot(t11_1(:,1),Ia11_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
        	hold on
			plot(t11_1(:,1),Iaref11_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
			ylabel('Ia [A]','FontSize',8)
			xlabel('tiempo [s]','FontSize',8)
         title('Óptimo Simétrico','FontWeight','Bold')
         legend('Ia','Iaref');
            h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         grid
         zoom   
   	subplot(212);
	      plot(t11_2(:,1),Ia11_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
        	hold on
			plot(t11_2(:,1),Iaref11_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2,'LineStyle',':')
			ylabel('Ia [A]','FontSize',8)
         xlabel('tiempo[s]','FontSize',8)
         title('Ganancia Óptima','FontWeight','Bold')
         legend('Ia','Iaref');
            h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
	      grid
      	zoom
   figure('Tag','s11conjunta','Name','Simulación 4-11 Corrientes Superpuestas (Motor A)','Position',pos1)
	  	plot(t11_1(:,1),Ia11_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on  
 		plot(t11_2(:,1),Ia11_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Óptimo Simétrico','Ganancia Óptima');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
        	h=get(gcf,'CurrentAxes');
  	      	set(h,'FontSize',8)
      hold off	
		zoom
   %		Graficas de la velocidad      
   figure('Tag','s11vel','Name','Simulación 4-11 Velocidad (Motor A)')
   	subplot(211);
      	hold on
      	plot(t11_1(:,1),w11_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   	      set(h,'FontSize',8)
      	hold on
			plot(t11_1(:,1),wf11_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2,'LineStyle',':')
			plot(t11_1(:,1),wref11_1(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
         ylabel('\omega [rad/s]','FontSize',8)
			xlabel('tiempo [s]','FontSize',8)
        	legend('\omega','\omegaf','\omegaref');
         title('Óptimo Simétrico','FontWeight','Bold')
           	h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
      	grid
   	subplot(212);
	      plot(t11_2(:,1),w11_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	         h=get(gcf,'CurrentAxes');
   			set(h,'FontSize',8)
         hold on
			plot(t11_2(:,1),wf11_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2,'LineStyle',':')
			plot(t11_2(:,1),wref11_2(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
			ylabel('\omega [rad/s]','FontSize',8)
			xlabel('tiempo [s]','FontSize',8)
         legend('\omega','\omegaf','\omegaref');
         title('Ganancia Óptima','FontWeight','Bold')
	         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         grid
      zoom
  	figure('Tag','s11conjuntav','Name','Simulación 4-11 Velocidades Superpuestas (Motor A)','Position',pos2)
	  	plot(t11_1(:,1),w11_1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on  
 		plot(t11_2(:,1),w11_2(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      ylabel('\omega [rad/s]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Óptimo Simétrico','Ganancia Óptima');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off	
      zoom
elseif NumeroSim==14
	%		simulación 4_12
	Kpn=str2num(get(findobj('Tag','variable1'),'String'));
	TIn=str2num(get(findobj('Tag','variable2'),'String'));
    
    %<<<parametros controlador>>>>>>>>
    set_param('db4_10/Speed Control','Kpn',num2str(Kpn),'TIn',num2str(TIn),'Ktn',num2str(Ktn),'Tfn',num2str(Tfi),'Ian',num2str(Ian))	

    %<<<simulación>>>>>>>>
   		tout=sim('db4_10',20);	
 
        
   % gráficas de la simulación 4-12
   figure('Tag','s12a','Name','Simulación 4-12 Corriente de armadura (Motor A)','Position',pos1)
		plot(tout(:,1),Ia(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
%      plot(tout(:,1),Iaref(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2) 
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
%		legend('Ia')%,'Iaref',0);
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off	     
      zoom
   figure('Tag','s12a','Name','Simulación 4-12 Velocidad (Motor A)','Position',pos2)
   	plot(tout(:,1),w(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(tout(:,1),wref(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
   	plot(tout(:,1),wf(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
	   ylabel('Velocidad [rad/s]')
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('\omega','\omegaref','\omegaf');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off
      zoom
% % % % % % %    figure('Tag','s12a','Name','Simulación 4-12 Flujo (Motor A)','Position',pos2)
% % % % % % %    	plot(tout(:,1),flux(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
% % % % % % %       	hold on
% % % % % % %    	plot(tout(:,1),wf(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
% % % % % % % 	   ylabel('Flujo Excitación [rad/s]')
% % % % % % % 	   xlabel('tiempo [s]','FontSize',8)
% % % % % % %    	grid
% % % % % % % 		legend('\phiexc',1);
% % % % % % %          h=findobj(gcf,'Type','text');
% % % % % % % 	         set(h,'fontUnits','points','FontSize',8)     
% % % % % % %          h=get(gcf,'CurrentAxes');
% % % % % % % 	  	      set(h,'FontSize',8)
% % % % % % %       hold off
% % % % % % %       zoom
   figure('Tag','s12a','Name','Simulación 4-12 Torque (Motor A)','Position',pos3)
   	plot(tout(:,1),Tem(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
    	hold on
    plot(tout(:,1),Tcarga(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	   ylabel('\tau [Nm]')
	   xlabel('tiempo [s]','FontSize',8)
	  	grid
		legend('\tauem','\tauc');
        h=findobj(gcf,'Type','text');
        set(h,'fontUnits','points','FontSize',8)     
        h=get(gcf,'CurrentAxes');
	    set(h,'FontSize',8)
        hold off
        zoom
        elseif NumeroSim==15
	%		simulación 4_13
	Kpn=str2num(get(findobj('Tag','variable1'),'String'));
	TIn=str2num(get(findobj('Tag','variable2'),'String'));
    
	Kpi=str2num(get(findobj('Tag','variable3'),'String'));
	TIi=str2num(get(findobj('Tag','variable4'),'String'));
    ;
    
    %<<<parámetros controlador velocidad>>>>>>>>
    set_param('db4_11/Speed Control','Kpn',num2str(Kpn),'TIn',num2str(TIn),'Ktn',num2str(Ktn),'Tfn',num2str(Tfi),'Ian',num2str(Ian))	

    %<<<parámetros controlador corriente>>>>>>>>
    set_param('db4_11/Armature Current Controller (PI) with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi))	

    %<<<parámetros PR>>>>>>>>
    set_param('db4_11/Controlled Rectifier (Delay Time)','Tpr',num2str(Tpr),'Kpr',num2str(Kpr))
      
    %<<<<<parámetros motor>>>>>>>>>>>>>
    set_param('db4_11/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))

   %<<<<<parámetros carga mecánica>>>>>>>>>>>>>
   set_param('db4_11/First Order Mechanical System','J',num2str(J),'b',num2str(b),'wor',num2str(0))
    
   %<<<<<simulación>>>>>>>>>>>>>
   
  		sim('db4_11',15);	
        
   %		gráficas de la simulación 4-13
   figure('Tag','s13a','Name','Simulación 4-13 Corriente de armadura (Motor A)','Position',pos1)
		plot(t(:,1),Ia(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(t(:,1),Iaref(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2) 
      plot(t(:,1),Iaf(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)   
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Ia','Iaref','Iaf');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off	     
      zoom
   figure('Tag','s13a','Name','Simulación 4-13 Velocidad (Motor A)','Position',pos2)
   	plot(t(:,1),w(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(t(:,1),wref(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
   	plot(t(:,1),wf(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
	   ylabel('Velocidad [rad/s]')
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('\omega','\omegaref','\omegaf');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off
      zoom
   figure('Tag','s13a','Name','Simulación 4-13 Torque (Motor A)','Position',pos3)
   	plot(t(:,1),Tem(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(t(:,1),Tcarga(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	   ylabel('\tau [Nm]')
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('\tauem','\tauc');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off
      zoom
elseif NumeroSim==16
	%		simulación 4_13
	Kpn=str2num(get(findobj('Tag','variable1'),'String'));
	TIn=str2num(get(findobj('Tag','variable2'),'String'));
    
	Kpi=str2num(get(findobj('Tag','variable3'),'String'));
	TIi=str2num(get(findobj('Tag','variable4'),'String'));
    
    Wref=str2num(get(findobj('Tag','variable5'),'String'));
	Tc=str2num(get(findobj('Tag','variable6'),'String'));
    
	
    %<<<parámetros controlador velocidad>>>>>>>>
    set_param('db4_13/Speed Control','Kpn',num2str(Kpn),'TIn',num2str(TIn),'Ktn',num2str(Ktn),'Tfn',num2str(Tfi),'Ian',num2str(Ian))	

    %<<<parámetros controlador corriente>>>>>>>>
    set_param('db4_13/Current-Controller with Current-sensor','Kpi',num2str(Kpi),'TIi',num2str(TIi),'Kti',num2str(Kti),'Tfi',num2str(Tfi),'VLL',num2str(380))	

    %<<<parámetros PR>>>>>>>>
    set_param('db4_13/3-phase Full-bridge without line-impedance','Vph',num2str(220),'f',num2str(50))
      
    %<<<<<parámetros motor>>>>>>>>>>>>>
    set_param('db4_13/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0))

   %<<<<<parámetros carga mecánica>>>>>>>>>>>>>
   set_param('db4_13/First Order Mechanical System','J',num2str(J),'b',num2str(b),'wor',num2str(0))
    
   %<<<<<simulación>>>>>>>>>>>>>
   
  		sim('db4_13',12);	
        
   %		gráficas de la simulación 4-13
   figure('Tag','s13a','Name','Simulación 4-13 Corriente de armadura (Motor A)','Position',pos1)
		plot(t(:,1),Ia(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(t(:,1),Ir(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2) 
      plot(t(:,1),Ipf(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)   
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Ia','Iaref','Iaf');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off	     
      zoom
   figure('Tag','s13a','Name','Simulación 4-13 Velocidad (Motor A)','Position',pos2)
   	plot(t(:,1),w(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(t(:,1),wr(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
   	plot(t(:,1),wf(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
	   ylabel('Velocidad [rad/s]')
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('\omega','\omegaref','\omegaf');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off
      zoom
   figure('Tag','s13a','Name','Simulación 4-13 Torque (Motor A)','Position',pos3)
   	plot(t(:,1),Tem(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(t(:,1),Tcarga(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	   ylabel('\tau [Nm]')
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('\tauem','\tauc');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off
      zoom
elseif NumeroSim==17
	%		simulación 4_14 	Puente Con Cuatro Contactores
    
	Kpn=str2num(get(findobj('Tag','variable1'),'String'));
	TIn=str2num(get(findobj('Tag','variable2'),'String'));
    
	Kpi=str2num(get(findobj('Tag','variable3'),'String'));
	TIi=str2num(get(findobj('Tag','variable4'),'String'));
    
    Wref=str2num(get(findobj('Tag','variable5'),'String'));
	Tc=str2num(get(findobj('Tag','variable6'),'String'));
    
    %<<<parámetros controlador velocidad>>>>>>>>
    set_param('db4_14/Cascade Control for PMDCM Controlled Rectifier 4 quadrants ','Kpn',num2str(Kpn),'TIn',num2str(TIn),'Kpi',num2str(Kpi),'TIi',num2str(TIi),'Ktn',num2str(Ktn),'Tfn',num2str(Tfi),'Kti',num2str(Kti),'Tfi',num2str(Tfi),'k',num2str(Kn),'Ian',num2str(Ian))	

    %<<<parámetros PR>>>>>>>>
    set_param('db4_14/3-phase Full-bridge with line-impedance','Vph',num2str(220),'f',num2str(50),'Rd',num2str(Rd),'Ld',num2str(Ld),'Rs',num2str(Rs),'Ls',num2str(Ls))
      
    %<<<<<parámetros motor>>>>>>>>>>>>>
    set_param('db4_14/Permanent Magnet PMDCM','k',num2str(Kn),'Ra',num2str(Ra),'La',num2str(La),'ic',num2str(0),'Rs',num2str(Rs),'Ls',num2str(Ls))

   %<<<<<parámetros carga mecánica>>>>>>>>>>>>>
   set_param('db4_14/First Order Mechanical System','J',num2str(J),'b',num2str(b),'wor',num2str(0))
    
   %<<<<<simulación>>>>>>>>>>>>>
   	sim('db4_14');	
   
    
    %		gráficas de la simulación 4-14
   figure('Tag','s14a','Name','Simulación 4-14 Corriente de armadura (Motor A)','Position',pos1)
		plot(t(:,1),Ia(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(t(:,1),Ir(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2) 
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('Ia','Iaref');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off	     
      zoom
   figure('Tag','s14a','Name','Simulación 4-14 Velocidad (Motor A)','Position',pos2)
   	plot(t(:,1),w(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(t(:,1),wr(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
      	hold on
	   ylabel('Velocidad [rad/s]')
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('\omega','\omegaref','\omegaf');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off
      zoom
   figure('Tag','s14a','Name','Simulación 4-14 Torque (Motor A)','Position',pos3)
   	plot(t(:,1),Tem(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      plot(t(:,1),Tn(:,1),'color',[0.9 0.1 0.1],'LineWidth',1.2)
	   ylabel('\tau [Nm]')
	   xlabel('tiempo [s]','FontSize',8)
   	grid
		legend('\tauem','\tauc');
         h=findobj(gcf,'Type','text');
	         set(h,'fontUnits','points','FontSize',8)     
         h=get(gcf,'CurrentAxes');
	  	      set(h,'FontSize',8)
      hold off
      zoom
   end   
    
