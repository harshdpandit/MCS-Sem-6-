%Calculating Lyapnov Function
%SISO
A1=[-1 -2 5;11 3 -21;5 10 -8];
B1=[1;2;-1];Q1=-eye(3);
K1=place(A1,B1,[-20;-25;-30]);
Acl1=(A1-B1*K1);
vQ1=[Q1(:,1);Q1(:,2);Q1(:,3)];
vP1=inv(kron(eye(3),Acl1')+kron(Acl1',eye(3)))*vQ1;
P1=[vP1(1:3,1) vP1(4:6,1) vP1(7:9,1)]
eig(P1)
%MIMO
A2=[1 -2 3 6 1;2 -3 16 2.3 -7;5 8 -1.1 1.7 9;12 -9 16 23 0;-8 7 4.3 23 11];
B2=[1 -2; 3 0; 1 1; -1 0; 0 2];Q2=-eye(5);
K2=place(A2,B2,[-20;-25;-30;-35;-40]);
Acl2=(A2-B2*K2);
vQ2=[Q2(:,1);Q2(:,2);Q2(:,3);Q2(:,4);Q2(:,5)];
vP2=inv(kron(eye(5),Acl2')+kron(Acl2',eye(5)))*vQ2;
P2=[vP2(1:5,1) vP2(6:10,1) vP2(11:15,1) vP2(16:20,1) vP2(21:25,1)];
eig(P2)