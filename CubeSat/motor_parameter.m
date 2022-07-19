clear
clc

%parameters from datasheet
% R = 2; %Ohm
% Kt = 0.1; 
% Kb = Kt;
% L = 0.001; % Henry
% Tc = 0.053*Kt;
% D  = 0.00001;
% J = 0.0005;

% a = (Kt*Kb+Ra*D)/Ra/J0
% b = Kt/Ra/J0
% c = Tc/J0

%parameters from datasheet
R = 14.3;
Kt = 0.05;
Kb = Kt;
L = 0.001; % Henry
Tc = 0.053*Kt;
D  = 9.4e-5*Kt;
J = 1.94e-4*Kt;

wn = 2*pi*6
zeta = 1

% We want to choose kpi and kii in function of kpo
kpo = 10
kpi = -(D^2*R+J^2*R*wn^2+kpo*(Kt^2-2*J*R*wn*zeta)+D*(Kt^2+R*(kpo-2*J*wn*zeta))/(Kt*(D^2+kpo^2+J^2*wn^2-2*J*kpo*wn*zeta+2*D*(kpo-J*wn*zeta))))
kii = (J*(-Kt^2+kpo*R)*wn^2)/(Kt*(D^2+kpo^2+J^2*wn^2-2*J*kpo*wn*zeta+2*D*(kpo-J*wn*zeta)))

% We want to choose kpo and kii while giving kpi = 0
% kpi = 0
% kii = (2*zeta*wn*R*J-R*D-Kt^2)/(Kt*J)
% kpo = (wn^2*R*J)/(Kt*kii)-D
