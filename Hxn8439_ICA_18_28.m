% Hamilton Nguyen Engr 1300.001 8/5/2018

%{
 Problem Statement: The following input statement is part of a silly 
program designed to flummox freshmen. Refer to printout in textbook.

Write a short segment of MATLAB code that will accomplish the following task:

If the user typed either “true” or “false” with ANY combination of upper
 and lowercase characters, display the message “Surely you jest.” in the 
command window.

If the user typed anything other than the word “true” or the word “false,”
 an error message stating “INVALID ENTRY” should appear and the program should 
terminate.

 Known Variable: n/a
 Unknown Variable: n/a
 Assumption: n/a
 Equations: n/a 
 Case Scenario: 

BS=input('How long is a battleship? (Type "true" or "false"): ','s');

%}

clear; clc; close all;

BS=input('How long is a battleship? (Type "true" or "false"): ','s'); %declare user input

lowerinput=lower(BS); %obtain user input and convert to lowercase string

if isequal(lowerinput,'true') || isequal(lowerinput,'false') %if conditional statement to compare user input string
    
    fprintf('Surely you jest!\n'); % printout statement
   
else 
    
   error('INVALID ENTRY, PLEASE ENTER TRUE OR FALSE!\n'); %printout error statement
   
end %end program
    