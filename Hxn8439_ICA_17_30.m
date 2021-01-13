% Hamilton Nguyen Engr 1300.001 8/5/2018

%{
 Problem Statement:

If an object is heated, the temperature of the body will increase. The 
energy (Q) associated with a change in temperature  (T_delta) is a function of
the mass of the object (m) and the specific heat(Cp). In an experiment, 
heat is applied to the end of an object, and the temperature change at the
other end of the object is recorded. This leads to the following equation.

T_delta = Q/(m*Cp)
 
An unknown material with a mass of 5= kilograms is tested in the lab, 
yielding the following results. Use the polyfit function to determine the
specific heat of this material and store the final result in the variable Cp.

Create a proper plot of the data. Add a linear trendline, showing the
resulting trendline equation, on the graph for a change in temperature over 
a range of energy from 5 joules to 70 joules.

Known Variable: N/A
 Unknown Variable:N/A
 Assumption:N/A
 Equations: T_delta = Q/(m*Cp)
 Case Scenario: N/A

%}

clear; clc; close all;

Heat=[17 40 58]; %Heat Energy Applied (J)

T_delta=[2 5 7]; % Temperature change(K)



plot(T_delta,Heat,'-r'); %Plot Delta Temperature vs. Heat

C=polyfit(T_delta,Heat,1); %polynomial equation coefficients for linear model

m=C(1); %slope using T_delta data

B=C(2); %base using Heat data

Cp=m/5; %stored values of heat capacity of material

Heat1=[5:5:70]; %setting y-limit bounds for graph

Tdelta_1=(Heat1-B)/m; %setting x-intercept slope, set it in this form since the bounds are used for Y-axis 

hold on 

xlabel('Temperature Change (K)'); %setting abscissa label
ylabel('Heat energy applied (J)'); %setting ordinate label
plot(Tdelta_1,Heat1,'-k'); %plot trendline

legend('actual', 'trendline','location','west'); %setting legend

Trend_equation=sprintf('QHeat=%0.05f Tdelta + %0.05f',m,B); %setting trend equation as print string statment

text(1,50,Trend_equation); %setting text on the plot 

title('Trend Plot of an Unknown Material'); %setting title

grid on; %setting grid

fprintf('The specific heat capacity of the object is %0.4f J/(kg*K)\n',Cp); %printout specific heat capacity of the unknown object.



