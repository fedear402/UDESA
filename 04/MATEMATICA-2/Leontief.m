format rational
A = [2/3 1/2 1/6; 1/4 3/4 1/8; 1/12 1/3 5/6];
B = [10;15;30];
C = [A B];
C(1,:) = C(1,:) * 3/2;

C(2,:) = C(2,:) - C(1,:)*1/4;
C(3,:) = C(3,:) - C(1,:)*1/12;

C(2,:) = C(2,:) * 4/3;
C(2,:) = C(2,:) * 4/3; 

C(3,:) = C(3,:) - C(2,:) * 13/48;
C(1,:) = C(1,:) - C(2,:) * 3/4;

C(3,:) = C(3,:) * 16/13;
C(3,:) = C(3,:) * 27/26;

C(2,:) = C(2,:) - C(3,:) * 1/9;
C(1,:) = C(1,:) - C(3,:) * 1/6;
C