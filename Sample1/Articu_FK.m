syms a1 a2 a3 Th_1 Th_2 Th_3 tn aln rn dn

%% FK long method
H = [cos(tn) -sin(tn)*cos(aln) sin(tn)*sin(aln) rn*cos(tn);sin(tn) cos(tn)*cos(aln) -cos(tn)*sin(aln) rn*sin(tn);0 sin(aln) cos(aln) dn;0 0 0 1];
H0_1 = subs(H,[tn aln rn dn],[Th_1 pi/2 0 a1]);
H1_2 = subs(H,[tn aln rn dn],[Th_2 0 a2 0]);
H2_3 = subs(H,[tn aln rn dn],[Th_3 0 a3 0]);
H0_3=H0_1*H1_2*H2_3

H0_3(1,4)
H0_3(2,4)
H0_3(3,4)