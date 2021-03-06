function T = T_curve_angles_pw(in1)
%T_CURVE_ANGLES_PW
%    T = T_CURVE_ANGLES_PW(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.6.
%    06-Sep-2021 10:59:17

l = in1(:,1);
phi = in1(:,3);
psi = in1(:,4);
theta = in1(:,2);
t2 = abs(l);
t3 = cos(l);
t4 = cos(phi);
t5 = cos(psi);
t6 = sin(l);
t7 = sin(phi);
t8 = sin(psi);
t10 = 1.0./l;
t9 = t4.^2;
t11 = t3-1.0;
t13 = (1.0e-5 < t2);
t14 = (t2 <= 1.0e-5);
t12 = t9.*t11;
t15 = t4.*t5.*t7.*t11;
t17 = t4.*t7.*t8.*t11;
t16 = t12+1.0;
t18 = -t12;
t19 = t3+t18;
if (t13)
    t0 = t10.*theta.*t4.*t11;
elseif (t14)
    t0 = l.*theta.*t4.*(-1.0./2.0);
else
    t0 = NaN;
end
if (t13)
    t1 = t10.*theta.*t7.*t11;
elseif (t14)
    t1 = (l.*t7.*theta)./2.0;
else
    t1 = NaN;
end
if (t13)
    t2 = t10.*theta.*t6;
elseif (t14)
    t2 = theta;
else
    t2 = NaN;
end
T = reshape([t17+t5.*t16,t15+t8.*t19,t4.*t5.*t6+t6.*t7.*t8,0.0,t15-t8.*t16,-t17+t5.*t19,-t4.*t6.*t8+t5.*t6.*t7,0.0,-t4.*t6,-t6.*t7,t3,0.0,t0,t1,t2,1.0],[4,4]);
