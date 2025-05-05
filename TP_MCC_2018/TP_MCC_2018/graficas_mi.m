%gráficas para la simulaciones del motor de inducción
NumeroSim=get(findobj('Tag','ListaSim_MI'),'Value');
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
   f1=str2num(get(findobj('Tag','variable1'),'String'));
   fs=str2num(get(findobj('Tag','variable2'),'String'));
   Ud=str2num(get(findobj('Tag','variable3'),'String'));
   tiempo=str2num(get(findobj('Tag','variable4'),'String'));
   m=str2num(get(findobj('Tag','variable5'),'String'));
	   sim('mi_sub',tiempo);	
   
      %		gráficas de la simulación 1
      figure('Tag','smi1_1','Name','MI Sim1 - Corriente de estator','Position',pos1)
	  	plot(t(:,1),isa(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
	      h=get(gcf,'CurrentAxes');
   	   set(h,'FontSize',8)
      title('Sub Ideal ','FontWeight','Bold')
      str = num2str(fs/f1);
      legend('fs/f1=',str);
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
      grid
      hold off	
      zoom
      
    figure('Tag','smi1_2','Name','MI Sim1 - Tensiones de referencia','Position',pos2)
	  	plot(t(:,1),port(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),vaa(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
	  	plot(t(:,1),vbb(:,1),'color',[1 0.6 0],'LineWidth',1.2)
	  	plot(t(:,1),vcc(:,1),'color',[0.1 0.65 0.1],'LineWidth',1.2)
      legend('port','Va','Vb','Vc',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Tensiones [V]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub Ideal','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
       
   figure('Tag','smi1_3','Name','MI Sim1 - Tensiones','Position',pos2)
	  	plot(t(:,1),Vab(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),vsa(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
      legend('Vab (línea)','Vsa (fase)',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Tensiones [V]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub Ideal','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
      
   figure('Tag','smi1_4','Name','MI Sim1 - Componentes fundamentales de tensión y corriente','Position',pos4)
	  	plot(t(:,1),Ia1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),Vab1(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
        legend('Isa1','Vab1',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Fundamentales','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub Ideal','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
    
   figure('Tag','smi1_5','Name','MI Sim1- Vector Espacial Corriente','Position',pos3)   
   	polar([0 2*pi], [40 40]);     
	   	hold on
   	polar(tei(:,1),I(:,1),'k')
      ylabel('Isa [A]','FontSize',8)    
         h=findobj(gcf,'Type','line');
	      set(h,'Color',[0.1 0.1 0.5])   
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
         hold off
         zoom
         
figure('Tag','smi1_6','Name','MI Sim1 - Armónicos de corriente','Position',pos4)         
      arm(isa(:,1),t(:,1),1600)
elseif NumeroSim == 2    
	%		simulación 2
   f1=str2num(get(findobj('Tag','variable1'),'String'));
   fs=str2num(get(findobj('Tag','variable2'),'String'));
   Ud=str2num(get(findobj('Tag','variable3'),'String'));
   tiempo=str2num(get(findobj('Tag','variable4'),'String'));
   m=str2num(get(findobj('Tag','variable5'),'String'));
	   sim('mi_sub',tiempo);	
   
   %		gráficas de la simulación 2
   figure('Tag','smi2_1','Name','MI Sim2 - Corriente de estator','Position',pos3)
	  	plot(t(:,1),isa(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
	      h=get(gcf,'CurrentAxes');
   	   set(h,'FontSize',8)
      title('Sub Ideal','FontWeight','Bold')
    	str = num2str(fs/f1);
      legend('fs/f1=',str);
  	      h=findobj(gcf,'Type','text');
   	   set(h,'fontUnits','points','FontSize',8)  
		grid
      hold off	
		zoom
         
    figure('Tag','smi2_2','Name','MI Sim2 - Tensiones de referencia','Position',pos4)
	  	plot(t(:,1),port(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),vaa(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
	  	plot(t(:,1),vbb(:,1),'color',[1 0.6 0],'LineWidth',1.2)
	  	plot(t(:,1),vcc(:,1),'color',[0.1 0.65 0.1],'LineWidth',1.2)
      legend('port','Va','Vb','Vc',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Tensiones [V]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub Ideal','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
       
   figure('Tag','smi2_3','Name','MI Sim2 - Tensiones','Position',pos4)
	  	plot(t(:,1),Vab(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),vsa(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
      legend('Vab (línea)','Vsa (fase)',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Tensiones [V]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub Ideal','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
       
   figure('Tag','smi2_4','Name','MI Sim2- Vector Espacial Corriente','Position',pos1)   
   	polar([0 2*pi], [40 40]);     
	   	hold on
   	polar(tei(:,1),I(:,1),'r')
      ylabel('Isa [A]','FontSize',8)    
         h=findobj(gcf,'Type','line');
	      set(h,'Color',[0.1 0.1 0.5])   
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
         hold off
         zoom
         
   figure('Tag','smi2_5','Name','MI Sim2 - Componentes fundamentales de tensión y corriente','Position',pos2)
	  	plot(t(:,1),Ia1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),Vab1(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
        legend('Ia1','Vab1',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Fundamentales','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub Ideal','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
 
figure('Tag','smi2_6','Name','MI Sim2 - Armónicos de corriente','Position',pos2)         
      arm(isa(:,1),t(:,1),1600)
elseif NumeroSim == 3
      %		simulación 3
   f1=str2num(get(findobj('Tag','variable1'),'String'));
   fs=str2num(get(findobj('Tag','variable2'),'String'));
   Ud=str2num(get(findobj('Tag','variable3'),'String'));
   tiempo=str2num(get(findobj('Tag','variable4'),'String'));
   m=str2num(get(findobj('Tag','variable5'),'String'));
	   sim('mi_subdel',tiempo);	
   
   %		gráficas de la simulación 3
   figure('Tag','smi3_1','Name','MI Sim3 - Corriente de estator','Position',pos3)
	  	plot(t(:,1),isa(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
	      h=get(gcf,'CurrentAxes');
   	   set(h,'FontSize',8)
      title('Sub con delay','FontWeight','Bold')
      str = num2str(fs/f1);
      legend('fs/f1=',str);
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
   	grid
      hold off	
		zoom
         
   figure('Tag','smi3_2','Name','MI Sim3 - Tensiones','Position',pos4)
	  	plot(t(:,1),Vab(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),vsa(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
      legend('Vab (línea)','Vsa (fase)',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Tensiones [V]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub con Delay','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
       
   figure('Tag','smi4_3','Name','MI Sim3- Vector Espacial Flujo Rotórico','Position',pos1)   
   	polar([0 2*pi], [2.5 2.5]);     
		   hold on
	   polar(tef(:,1),f(:,1),'k')
      ylabel('Flujo Rotórico','FontSize',8)    
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
         hold off
         zoom

   figure('Tag','smi3_3','Name','MI Sim3- Vector Espacial Corriente','Position',pos1)   
   	polar([0 2*pi], [40 40]);     
		   hold on
	   polar(tei(:,1),I(:,1),'r')
      ylabel('Isa [A]','FontSize',8)    
	      h=findobj(gcf,'Type','line');
	      set(h,'Color',[0.1 0.1 0.5])   
   	   h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
         hold off
         zoom
   figure('Tag','smi3_4','Name','MI Sim3 - Componentes fundamentales de tensión y corriente','Position',pos2)
	  	plot(t(:,1),Ia1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),Vab1(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
        legend('Isa1','Vab1',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Fundamentales','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub con Delay','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
      
	figure('Tag','smi3_5','Name','MI Sim3 - Armónicos de corriente','Position',pos2)         
      arm(isa(:,1),t(:,1),1600)
      
elseif NumeroSim == 4
      %		simulación 4
   f1=str2num(get(findobj('Tag','variable1'),'String'));
   fs=str2num(get(findobj('Tag','variable2'),'String'));
   Ud=str2num(get(findobj('Tag','variable3'),'String'));
   tiempo=str2num(get(findobj('Tag','variable4'),'String'));
   m=str2num(get(findobj('Tag','variable5'),'String'));
	   sim('mi_subdel',tiempo);	
   
   %		gráficas de la simulación 3
   figure('Tag','smi4_1','Name','MI Sim4 - Corriente de estator','Position',pos1)
	  	plot(t(:,1),isa(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
	      h=get(gcf,'CurrentAxes');
   	   set(h,'FontSize',8)
      title('Sub con delay','FontWeight','Bold')
      str = num2str(fs/f1);
      legend('fs/f1=',str);
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
   	grid
      hold off	
		zoom
         
   figure('Tag','smi4_2','Name','MI Sim4 - Tensiones','Position',pos2)
	  	plot(t(:,1),Vab(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),vsa(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
      legend('Vab (línea)','Vsa (fase)',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Tensiones [V]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub con Delay','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
      
   figure('Tag','smi4_3','Name','MI Sim4- Vector Espacial Corriente','Position',pos3)   
   	polar([0 2*pi], [40 40]);     
		   hold on
	   polar(tei(:,1),I(:,1),'r')
      ylabel('Isa [A]','FontSize',8)       
	      h=findobj(gcf,'Type','line');
	      set(h,'Color',[0.1 0.1 0.5])   
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
         hold off
         zoom
         
    figure('Tag','smi4_4','Name','MI Sim4 - Componentes fundamentales de tensión y corriente','Position',pos4)
	  	plot(t(:,1),Ia1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),Vab1(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
        legend('Ia1','Vab1',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Fundamentales','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub con Delay','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
      
   figure('Tag','smi4_5','Name','MI Sim4 - Armónicos de corriente','Position',pos4)         
      arm(isa(:,1),t(:,1),1600)
      
elseif NumeroSim == 5
      %		simulación 5
   f1=str2num(get(findobj('Tag','variable1'),'String'));
   fs=str2num(get(findobj('Tag','variable2'),'String'));
   Ud=str2num(get(findobj('Tag','variable3'),'String'));
   tiempo=str2num(get(findobj('Tag','variable4'),'String'));
   m=str2num(get(findobj('Tag','variable5'),'String'));
	   sim('mi_subcomp',tiempo);	
   
   %		gráficas de la simulación 3
   figure('Tag','smi5_1','Name','MI Sim5 - Corriente de estator','Position',pos2)
	  	plot(t(:,1),isa(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
      ylabel('Ia [A]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
	      h=get(gcf,'CurrentAxes');
   	   set(h,'FontSize',8)
      title('Sub compensado','FontWeight','Bold')
      str = num2str(fs/f1);
      legend('fs/f1=',str);
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
   	grid
      hold off	
		zoom
         
   figure('Tag','smi5_2','Name','MI Sim5 - Tensiones','Position',pos1)
	  	plot(t(:,1),Vab(:,1),'color',[0.6 0.6 0.6],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),vsa(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
      legend('Vab (línea)','Vsa (fase)',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Tensiones [V]','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub compensado','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
       
   figure('Tag','smi5_3','Name','MI Sim5- Vector Espacial Corriente','Position',pos4)   
   	polar([0 2*pi], [40 40]);     
		   hold on
	   polar(tei(:,1),I(:,1),'r')
      ylabel('Isa [A]','FontSize',8)       
 	      h=findobj(gcf,'Type','line');
	      set(h,'Color',[0.1 0.1 0.5])   
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
         hold off
         zoom
      
   figure('Tag','smi5_4','Name','MI Sim5- Vector Espacial Flujo Rotórico','Position',pos4)   
   	polar([0 2*pi], [2.5 2.5]);     
		   hold on
	   polar(tef(:,1),f(:,1),'k')
      ylabel('Flujo','FontSize',8)    
         h=findobj(gcf,'Type','text');
	      set(h,'fontUnits','points','FontSize',8)   
         hold off
         zoom
         
   figure('Tag','smi5_6','Name','MI Sim5 - Componentes fundamentales de tensión y corriente','Position',pos3)
	  	plot(t(:,1),Ia1(:,1),'color',[0.1 0.1 0.5],'LineWidth',1.2)
      	hold on
	  	plot(t(:,1),Vab1(:,1),'color',[0.9 0.1 0],'LineWidth',1.2)
        legend('Ia1','Vab1',1);
         h=findobj(gcf,'Type','text');
         set(h,'fontUnits','points','FontSize',8)     
      ylabel('Fundamentales','FontSize',8)
	   xlabel('tiempo [s]','FontSize',8)
      	h=get(gcf,'CurrentAxes');
      	set(h,'FontSize',8)
   	title('Sub compensado','FontWeight','Bold','FontSize',8)
   	grid
     	hold off	
	 	zoom
   
   figure('Tag','smi5_3','Name','MI Sim5 - Armónicos de corriente','Position',pos3)         
      arm(isa(:,1),t(:,1),1600)
end