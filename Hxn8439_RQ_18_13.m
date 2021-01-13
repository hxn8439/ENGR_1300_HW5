% Hamilton Nguyen Engr 1300.001 8/5/2018

%{
Problem Statement:
Humans can see electromagnetic radiation when the wavelength is within
the SPECTRUM WAVELENGTH of visible light. Create a program to determine if a user-specified 
wavelength [nanometer, nm] is one of the six spectral colors listed in the following chart.
Your program should ask the user to enter a wavelength, then indicate in which spectral 
color the given wavelength falls or state if it is not within the visible
SPECTRUM WAVELENGTH. Refer chart in textbook.

 Known Variable: N/A
 Unknown Variable: N/A
 Assumption: N/A
 Equations: N/A
 Case Scenario: N/A
%}

clear; clc; close all;

w=input('Enter the wavelength in [nm]. \n'); %user input
    
	%if, elseif, else conditional statements, refer below.
	
if w>=400 && w<450
        
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALLS WITHIN THE COLOR VIOLET. \n');    

elseif w==450
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALL WITHIN THE COLOR VIOLET AND BLUE. \n');
    
elseif w>450 && w<490
        
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALLS WITHIN THE COLOR BLUE. \n'); 
    
elseif w==490
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALL WITHIN THE COLOR BLUE AND GREEN. \n');
    
    elseif w>490 && w<560
        
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALLS WITHIN THE COLOR GREEN. \n');
    
    elseif w==560
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALL WITHIN THE COLOR GREEN AND YELLOW. \n');
    
    elseif w>560 && w<590
        
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALLS WITHIN THE COLOR YELLOW. \n');
    
    elseif w==590
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALL WITHIN THE COLOR YELLOW AND ORANGE. \n')
    
    elseif w>590 && w<635
        
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALLS WITHIN THE COLOR ORANGE. \n');
   
    elseif w==635
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALL WITHIN THE COLOR ORANGE AND RED. \n');
    
    elseif w>635 && w<=700
        
    fprintf('THE VISIBLE SPECTRUM WAVELENGTH FALLS WITHIN THE COLOR RED. \n');
    
else
    
    fprintf('NOT WITHIN THE VISIBLE SPECTRUM FROM A INPUT WAVELENGTH. \n');
    
end %terminate program