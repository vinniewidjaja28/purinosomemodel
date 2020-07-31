%script to generate Figure S1
%CMJ 20160804
clear variables

figure('units','normalized','outerposition',[0 0 1 1])

M=25;
%Passing to sweep 
parameters=PduParams_MCP;
subplot(2,3,1)
sweep_params('kcA',-5,10,1,1,M,parameters);
%(paramToSweep, lowerBound,upperBound,equalPermSwitch,kcRatio,N,params)
%tells how the params should be categorized, defines a class

%Changed the bounds of Kca to -5 and 10, used to be -5 and 5 

parameters=PduParams_MCP;
subplot(2,3,2)
sweep_params('Pout',-5,5,1,1,M,parameters);
%selects specific params for this plot, defines a function

%Changed the bounds of Pout to -5 and 5 , used to be -5 and 2 

parameters=PduParams_MCP;
subplot(2,3,4)
sweep_params('kmA',-6,6,1,1,M,parameters);
%Km plot, chooses specific data to plot

%changed bounds from Kma to -6 and 6, used to be -6 and 3

parameters=PduParams_MCP;
subplot(2,3,5)
sweep_params('kmP',-6,6,1,1,M,parameters);
%Km plot, chooses specific data to plot 

%Changed the bounds of Kmp to -6 and 6, used to be -6 and 3 