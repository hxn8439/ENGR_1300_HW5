% Hamilton Nguyen Engr 1300.001 8/5/2018

%{
 Problem Statement:In a turbine, a device used for mixing, the power 
required depends on the size and shape of the impeller. In the lab, we 
have collected the following data, refer to textbook.

a. Create a proper plot of the power (P, ordinate) versus the diameter (D) 
assuming the data are experimental.

b. Use polyfit to determine a power relationship for the data set and graph
the resulting trendline along with the experimental data.

c. PROBLEM SKIPPED AS PER REQUEST FROM INSTRUCTOR. REFER TO SCHEDULE
SYLLABUS. 

 Known Variable: N/A
 Unknown Variable: N/A
 Assumption: N/A
 Equations: N/A
 Case Scenario: N/A

%}

clear; clc; close all;

%part A
Diameter=[0.5 0.75 1 1.5 2 2.25 2.5 2.75]; % (D)[ft]
Power=[0.004 0.04 0.13 0.65 3 8 18 22];%[hp]
figure('color','white'); %setting white background
a=plot(Diameter,Power,'s'); %setting a plot
set(a,'MarkerSize',12); %setting MarkerSize of plot
axis([0 3 0 24]); %setting axis of plot
grid; %setting grid
xlabel('Diameter (D)[ft]'); %declare x axis label
ylabel('Power (P) [hp]'); %declare y axis label
title('Data plot on relationship between turbine size impeller and Power'); %setting title for plot

%part B

b=polyfit(log10(Diameter),log10(Power),1); %polyfit data
fprintf('\nP=%0.2f*D^(%0.0f)\n',10^b(2),b(1));%Prints results

