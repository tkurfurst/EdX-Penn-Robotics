function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters


% u = params.gravity * params.mass;

Zdes = 0.0;

Kp = 1000.0;
Kv = 100.0;

e = s_des(1) - s(1);
eprime = s_des(2) - s(2);



u = params.mass * (Zdes + Kp * e + Kv * eprime + params.gravity);

% FILL IN YOUR CODE HERE


end

