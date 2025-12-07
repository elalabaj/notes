#import "../../../template.typ": *
#show: template
#set math.mat(delim: "[")

#problem[Zbadaj rzędy następujących macierzy:]

#subproblem[]
$ 
A=mat(2, 6, -1, 4, 3; 1, 4, 2, -1, 0; 0, -2, -5, 6, 3; 3, 10, 1, 3, 3)=
mat(1, 4, 2, -1, 0; 2, 6, -1, 4, 3; 0, -2, -5, 6, 3; 3, 10, 1, 3, 3)
mat(delim: #none, ; -2w_1; ; -3w_1)=
mat(1, 4, 2, -1, 0; 0, -2, -5, 6, 3; 0, -2, -5, 6, 3; 0, -2, -5, 6, 3) =
mat(1, 4, 2, -1, 0; 0, -2, -5, 6, 3; 0, 0, 0, 0, 0; 0, 0, 0, 0, 0)
$
$r(A)=2$

#subproblem[]
$
B=mat(3, 1, 2, -1, 7; -3, -1, -1, 4, 2; 0, 1, 0, 2, 1; 3, 2, 2, 1, 8; 0, 1, 1,
  5, 4) mat(delim: #none, ; +w_1; ; -w_1; ; )=
mat(3, 1, 2, -1, 7; 0, 0, 1, 3, 9; 0, 1, 0, 2, 1; 0, 1, 0, 2, 1; 0, 1, 1, 5, 4)
=mat(3, 1, 2, -1, 7; 0, 1, 0, 2, 1; 0, 0, 1, 3, 9; 0, 1, 0, 2, 1; 0, 1, 1, 5, 4)
mat(delim: #none, ; ; ; -w_2; -w_2) 
=mat(3, 1, 2, -1, 7; 0, 1, 0, 2, 1; 0, 0, 1, 3, 9; 0, 0, 0, 0, 0; 0, 0, 1, 3, 3)
mat(delim: #none, ; ; ; ; -w_3)\
=mat(3, 1,2, -1, 7; 0, 1, 0, 2, 1; 0, 0, 1, 3, 9; 0, 0, 0, 0, 0; 0, 0, 0, 0, -6)
=mat(3, 1,2, -1, 7; 0, 1, 0, 2, 1; 0, 0, 1, 3, 9; 0, 0, 0, 0, -6; 0, 0, 0, 0, 0)
$
$r(B)=4$

#subproblem[]
$
C = mat(2, 1, 1, 1; 1, 3, 1, 1; 1, 1, 4, 1; 1, 1, 1, 5; 1, 2, 3, 4; 1, 1, 1, 1)
= mat(1, 1, 1, 1; 1, 3, 1, 1; 1, 1, 4, 1; 1, 1, 1, 5; 1, 2, 3, 4;2, 1, 1, 1)
mat(delim: #none, ; -w_1; -w_1; -w_1; -w_1; -2w_1) = 
mat(1, 1, 1, 1; 0, 2, 0, 0; 0, 0, 3, 0; 0, 0, 0, 5; 0, 1, 2, 3; 0, -1, -1, -1)=
mat(1, 1, 1, 1; 0, 1, 2, 3; 0, 0, 3, 0; 0, 0, 0, 5;  0, 2, 0, 0;0, -1, -1, -1)
mat(delim: #none, ; ; ; ; -2w_2; +w_2)=\
mat(1, 1, 1, 1; 0, 1, 2, 3; 0, 0, 3, 0; 0, 0, 0, 5; 0, 0, -2, -2; 0, 0, 1, 2)=
mat(1, 1, 1, 1; 0, 1, 2, 3; 0, 0, 1, 2;  0, 0, 0, 5; 0, 0, -2, -2; 0, 0, 3, 0)
mat(delim: #none, ; ; ; ; +2w_3; -3w_3)=
mat(1, 1, 1, 1; 0, 1, 2, 3; 0, 0, 1, 2;  0, 0, 0, 5; 0, 0, 0, 2; 0, 0, 0, -6)
$
$r(C)=4$

#subproblem[]
$
D=mat(2, 1, 3, -1; 3, -1, 2, 0; 1, 3, 4, -2; 4, -3, 1, 1)=
mat(1, 3, 4, -2; 3, -1, 2, 0; 2, 1, 3, -1; 4, -3, 1, 1)
mat(delim: #none, ; -3w_1; -2w_1; -4w_1)=
mat(1, 3, 4, -2; 0, -10, -10, 6; 0, -5, -5, 3; 0, -15, -15, 9)
mat(delim: #none, ; -2w_3; ; -3w_3)= \
mat(1, 3, 4, -2; 0, 0, 0, 0; 0, -5, -5, 3; 0, 0, 0, 0)=
mat(1, 3, 4, -2; 0, -5, -5, 3; 0, 0, 0, 0; 0, 0, 0, 0)
$
$r(D)=2$

#problem[Wyznacz rzędy następujących macierzy w zależności od parametru
  rzeczywistego $p$:]

#subproblem[]
$
A=mat(1-p, 2, 1, p; 1, 2-p, 1, 0; 1, 2, 1-p, p)mat(delim: #none, ; -w_1; -w_1)=
mat(1-p, 2, 1, p; p, -p, 0, -p; p, 0, -p, 0)
$
Szukamy niezerowego minora o największym wymiarze.
#set math.mat(delim: "|")
$
W = mat(1-p, 2, 1; p, -p, 0; p, 0, -p) = p^2 mat(1-p, 2, 1; 1, -1, 0; 1, 0, -1)
=^"z tw. Laplace'a" \ p^2( (1-p) (-1)^(1+1) mat(-1, 0; 0,-1) 
+ 2 (-1)^(1+2) mat(1, 0; 1, -1) + (-1)^(1+3) mat(1, -1; 1, 0)) =  \
p^2((1-p)dot 1 - 2 dot (-1) + 1) = p^2(4 - p)
$
Jeżeli $p in.not {0, 4}$ to $W != 0$, czyli znaleźliśmy niezerowego minora, więc
$r(A)=3$.\
Jeżeli $p=0 =>$
$
A = mat(delim: "[", 1, 2, 1, 0; 1, 2, 1, 0; 1, 2, 1, 0) => r(A) = 1
$
Jeżeli $p = 4 => $
#set math.mat(delim: "[")
$
A = mat(-3, 2, 1, 4; 1, -2, 1, 0; 1, 2, -3, 4) =
mat(1, 2, -3, 4; 1, -2, 1, 0; -3, 2, 1, 4)mat(delim: #none, ; -w_1; +3w_1) =
mat(1, 2, -3, 4; 0, -4, 4, -4; 0, 8, -8, 16)mat(delim: #none, ;;+2w_2)=
mat(1, 2, -3, 4; 0, -4, 4, -4; 0, 0, 0, 8)
$
$r(A)=3$

Ostatecznie $r(A)=cases(3", gdy" p!=0, 1", gdy" p=0)$

#subproblem[]
$
B = mat(p-1, p-1, 1, 1;1, p^2-1, 1, p-1;1, p-1, p-1, 1)
$
#set math.mat(delim: "|")
$
W = mat(p-1, 1, 1; 1, 1, p-1; 1, p-1, 1)=3(p-1) - 1 - (p-1)^3 - 1
$
Niech $t=p-1$. Wtedy mamy:
$
3t - 1 - t^3 - 1 &= 0 \
t^3 - 3t + 2 &= 0 \
(t-1)(t^2+t-2) &= 0 \
(t-1)^2(t+2) &= 0\
t &= 1 or t = -2 \
p &= 2 or p = -1
$
#set math.mat(delim: "[")
$
p = 2 =>
B = mat(1, 1, 1, 1; 1, 3, 1, 1; 1, 1, 1, 1) => r(B) = 2 \
p = -1 =>
B = mat(-2, -2, 1, 1; 1, 0, 1, -2; 1, -2, -2, 1) = 
mat( 1, 0, 1, -2;-2, -2, 1, 1; 1, -2, -2, 1)mat(delim: #none,;+2w_1;-w_1)=
mat(1, 0, 1, -2; 0, -2, 3, -3; 0, -2, -3, -3)mat(delim:#none;;-w_2) = \
mat(1, 0, 1, -2; 0, -2, 3, -3; 0, 0, -6, 0) => r(B) = 3
$

Ostatecznie $r(B) = cases(3", gdy" p != 2, 2", gdy" p = 2)$

#problem[Dla jakich wartości parametru $a in RR$, rząd macierzy jest
  najmniejszy, a dla jakich najwiekszy?]

#subproblem[]
$
A = mat(-2, -1-a, 1; a, 0, -a; -1, a+a^2, 1) \
$
#set math.mat(delim:"|")
$
W = (-1-a)(-1)^(1+2) mat(a, -a; -1, 1) + 0 + (a+a^2)(-1)^(3+2) mat(-2, 1; a,
  -a)= \
 (1+a)(a - (-a)(-1)) - (a + a^2)(-2(-a) - a) = \
(1+a)dot 0 - (a+a^2)dot a = -a^2(a+1)
$
$a in.not {-1, 0} =>$ wyznacznik jest niezerowy, więc rząd to $3$.
$
a = 0 => A = mat(delim: "[", -2, -1, 1; 0, 0, 0; -1, 0, 1) \
W = mat(-1, 1; 0, 1) = -1 - 1 = -2 != 0 => "rząd to 2" \
a = -1 => A = mat(delim: "[", -2, 0, 1; -1, 0, 1; -1, 0, 1) \
W = mat(-2, 1; -1, 1) = -2 - (-1) = -1 != 0 => "rząd to 2"
$

Ostatecznie $r(A) = cases(3", gdy" a in.not {-1, 0}, 2", gdy" a in {-1, 0})$

#set math.mat(delim:"[")

#subproblem[]
$
B=mat(a, 1, 1, 1; 1, a, 1, 1; 1, 1, a, 1; 1, 1, 1, a)
$
#set math.mat(delim:"|")
$
W=mat(a, 1, 1, 1; 1, a, 1, 1; 1, 1, a, 1; 1, 1, 1, a)mat(delim: #none,
  +w_2+w_3+w_4;;;;) = mat(a+3, a+3, a+3, a+3; 1, a, 1, 1; 1, 1, a, 1; 1, 1, 1,a)
=  (a+3)mat(1, 1, 1, 1; 1, a, 1, 1; 1, 1, a, 1; 1, 1, 1, a)mat(delim: #none,
  ;-w_1;-w_1;-w_1)=\
mat(1, 1, 1, 1; 0, a-1, 0, 0; 0, 0, a-1, 1; 0, 0, 0, a-1) = (a-1)^3
$

Jeżeli $a != 1$ to całe $B$ jest minorem niezerowym stopnia $4$ czyli rząd $B$ 
to $4$.
$
a = 1 => B = mat(delim: "[", 1, 1, 1, 1; 1, 1, 1, 1; 1, 1, 1, 1; 1, 1, 1, 1) =>
r(B) = 1
$
Ostatecznie $r(B) = cases(4", gdy" a != 1, 1", gdy" a = 1)$

#problem[Oblicz wyznacznik macierzy i jeśli jest ona nieosobliwa, znajdź macierz
do niej odwrotną:]

#set math.mat(delim: "[")
#subproblem[]
$
A = mat(1, 0, 1; 1, 1, 2; 0, 1, 1) \
A = mat(delim: "|", 1, 0, 1; 1, 1, 2; 0, 1, 1)mat(delim: #none, 1, 0; 1, 1; 0,1
) = 1 + 0 + 1 - 0 - 2 - 0 = 0
$

#subproblem[]
$
B = mat(1+i, -1; 0, 2) \
W = mat(delim: "|", 1+i, -1; 0, 2) = 2(1+i)-0 = 2 + 2i != 0 \
$
Macierz nie jest osobliwa, więc możemy znaleźć jej macierz odwrotną.
$
mat(1+i, -1, 1, 0; 0, 2, 0, 1; augment: #2)mat(delim: #none, dot 1/(1+i); dot
1/2) = mat(1, (-1)/(1+i), 1/(1+i), 0; 0, 1, 0, 1/2; augment: #2)mat(delim:
  #none, +1/(1+i)w_2; ;) =
mat(1, 0, 1/(1+i), 1/(2+2i); 0, 1, 0, 1/2; augment: #2) \
B^(-1) = mat(1/(1+i), 1/(2+2i); 0, 1/2) = mat((1-i)/2, (2-2i)/(4+4); 0, 1/2) =
mat((1-i)/2, (1-i)/(4); 0, 1/2)
$


#subproblem[]
$
C = mat(1, 1, 0; 1, 0, 1; 1, -1, -1)\
det C = mat(delim: "|", 1, 1, 0; 1, 0, 1; 1, -1, -1)mat(delim: #none, 1, 1; 1, 0; 1,
-1) = 0 + 1 + 0 - 0 + 1 + 1 = 3\
$
Metoda Gaussa:
$
mat(1, 1, 0, 1, 0, 0; 1, 0, 1, 0, 1, 0; 1, -1, -1, 0, 0, 1; augment:
  #3)mat(delim: #none, ; -w_1; -w_1)=
mat(1, 1, 0, 1, 0, 0; 0, -1, 1, -1, 1, 0; 0, -2, -1, -1, 0, 1; augment:
  #3)mat(delim: #none, ; ; -2w_2) =
mat(1, 1, 0, 1, 0, 0; 0, -1, 1, -1, 1, 0; 0, 0, -3, 1, -2, 1; augment: #3)
mat(delim: #none, ;dot (-1); dot (-1/3)) = \
mat(1, 1, 0, 1, 0, 0; 0, 1, -1, 1, -1, 0; 0, 0, 1, -1/3, 2/3, -1/3; augment: #3)
mat(delim: #none, ;+w_3;;)=
mat(1, 1, 0, 1, 0, 0; 0,1,0,2/3,-1/3,-1/3; 0, 0, 1,-1/3, 2/3, -1/3; augment: #3)
mat(delim: #none, -w_2;;;)=
mat(1,0,0,1/3,1/3,1/3;0,1,0,2/3,-1/3,-1/3; 0, 0, 1,-1/3, 2/3, -1/3; augment: #3)
$

Metoda dopełnień algebraicznych:
#set math.mat(delim: "|")
$
C_11 = (-1)^(1+1) &mat(0, 1; -1, -1) = 1 dot (0 - (-1)) = 1\
C_12 = (-1)^(1+2) &mat(1, 1; 1, -1) = (-1)dot (-1 - 1) = 2\
C_13 = (-1)^(1+3) &mat(1, 0; 1, -1) = 1 dot (-1 - 0) = -1 \
C_21 = (-1)^(2+1) &mat(1, 0; -1, -1) = (-1) dot (-1 - 0) = 1\
C_22 = (-1)^(2+2) &mat(1, 0; 1, -1) = 1 dot (-1 - 0) = -1\
C_23 = (-1)^(2+3) &mat(1, 1; 1, -1) = (-1) dot (-1 - 1) = 2\
C_31 = (-1)^(3+1) &mat(1, 0; 0, 1) = 1 dot (1 - 0) = 1\
C_32 = (-1)^(3+2) &mat(1, 0; 1, 1) = (-1) dot (1 - 0) = -1\
C_33 = (-1)^(3+3) &mat(1, 1; 1, 0) = 1 dot (0 - 1) = -1\
$
$
C^(-1) = (det C)^(-1) (C^D)^T = 3^(-1) mat(delim: "[", 1, 2, -1; 1, -1, 2; 1,
  -1, -1)^T = 1/3 mat(delim: "[", 1, 1, 1; 2, -1, -1; -1, 2, -1) = 
mat(delim: "[", 1/3, 1/3, 1/3; 2/3, -1/3, -1/3; -1/3, 2/3, -1/3)
$
#set math.mat(delim: "[")
Metoda układem równań:
$
C = mat(1, 1, 0; 1, 0, 1; 1, -1, -1) --> 
cases(x_1+x_2+0=y_1, x_1+0+x_3=y_2, x_1-x_2-x_3=y_3) \
$$
3x_1 &= y_1 + y_2 + y_3 \
x_1 &= 1/3y_1 + 1/3y_2 + 1/3y_3 \
x_2 = y_1 - x_1 &= 2/3 y_1 - 1/3 y_2 - 1/3 y_3\
x_3 = y_2 - x_1 &= -1/3y_1 + 2/3 y_2 - 1/3 y_3 \
=> C^(-1) = &mat(1/3, 1/3, 1/3; 2/3, -1/3, -1/3; -1/3, 2/3, -1/3)
$

#subproblem[]
$
D = mat(1, 2, 3, 4; 5, 6, 7, 8; 9, 10, 11, 12; 13, 14, 15, 16) \
det D = mat(delim: "|", 1, 2, 3, 4; 5, 6, 7, 8; 9, 10, 11, 12; 13, 14, 15, 16)
mat(delim: #none, ;-w_1;-w_2;;) = 
mat(delim: "|", 1, 2, 3, 4; 4, 4, 4, 4; 4, 4, 4, 4; 13, 14, 15, 16) = 0 \
" bo są dwa takie same wiersze"
$

#subproblem[]
$
E = mat(4, 2, 1, 1; 1, -1, 0, 2; 3, 0, 1, 3; 2, 2, 0, 3)\
det E = 1 dot (-1)^(1+3)M_13 + 0 + 1 dot (-1)^(3+3)M_33 + 0 \
$
$
M_13 = mat(delim: "|", 1, -1, 2; 3, 0, 3; 2, 2, 3)mat(delim: #none, 1, -1; 3, 0;
2, 2) = 0 - 6 + 12 - 0 - 6 + 9 = 9\
M_33 = mat(delim: "|", 4, 2, 1; 1, -1, 2; 2, 2, 3)mat(delim: #none, 4, 2; 1, -1;
2, 2) = -12 + 8 + 2 + 2 - 16 - 6 = -22\
det E = 9-22 = -13 \
mat(4, 2, 1, 1, 1, 0, 0, 0; 1, -1, 0, 2, 0, 1, 0, 0; 3, 0, 1, 3, 0, 0, 1, 0;
  2, 2, 0, 3, 0, 0, 0, 1; augment: #4)mat(delim: #none, w_1 <-> w_2;;;;)=
mat(1, -1, 0, 2, 0, 1, 0, 0;4, 2, 1, 1, 1, 0, 0, 0; 3, 0, 1, 3, 0, 0, 1, 0;
  2, 2, 0, 3, 0, 0, 0, 1; augment: #4)mat(delim: #none, ;-4w_1;-3w_1;-2w_1;)=\
mat(1, -1, 0, 2, 0, 1, 0, 0;0,6,1,-7,1,-4,0,0; 0, 3,1,-3,0,-3,1,0;
  0,4,0,-1,0,-2,0,1; augment: #4)mat(delim: #none, ;;;-w_3;)=
mat(1, -1, 0, 2, 0, 1, 0, 0;0,6,1,-7,1,-4,0,0; 0, 3,1,-3,0,-3,1,0;
  0,1,-1,2,0,1,-1,1; augment: #4)mat(delim: #none, ;w_2 <-> w_4;;;)=\
mat(1, -1, 0, 2, 0, 1, 0, 0;0,1,-1,2,0,1,-1,1; 0, 3,1,-3,0,-3,1,0;
  0,6,1,-7,1,-4,0,0; augment: #4)mat(delim: #none, ;;-3w_2;-6w_2;)=
mat(1, -1, 0, 2, 0, 1, 0, 0;0,1,-1,2,0,1,-1,1; 0,0,4,-9,0,-6,4,-3;
0,0,7,-19,1,-10,6,-6; augment: #4)mat(delim: #none, ;;2w_3-w_4;;)=\
mat(1, -1, 0, 2, 0, 1, 0, 0;0,1,-1,2,0,1,-1,1; 0,0,1,1,-1,-2,2,0;
0,0,7,-19,1,-10,6,-6; augment: #4)mat(delim: #none, ;;;-7w_3;)=
mat(1, -1, 0, 2, 0, 1, 0, 0;0,1,-1,2,0,1,-1,1; 0,0,1,1,-1,-2,2,0;
0,0,0,-26,8,4,-8,-6; augment: #4)mat(delim: #none, 13w_1;13w_2;13w_2;1/2 w_4;)=\
mat(13, -13, 0, 26, 0, 13, 0, 0;0,13,-13,26,0,13,-13,13; 0,0,13,13,-13,-26,26,0;
0,0,0,-13,4,2,-4,-3; augment: #4)mat(delim: #none, +2w_4;+2w_4;+w_4;;)=
mat(13,-13,0,0,8,17,-8,-6;0,13,-13,0,8,17,-21,7;0,0,13,0,-9,-24,22,-3;0,0,0,-13,
4,2,-4,-3; augment: #4)mat(delim: #none, ;+w_3;;;)=\
mat(13,-13,0,0,8,17,-8,-6;0,13,0,0,-1,-7,1,4;0,0,13,0,-9,-24,22,-3;0,0,0,-13,
4,2,-4,-3; augment: #4)mat(delim: #none, +w_2;;;;)=
mat(13,0,0,0,7,10,-7,-2;0,13,0,0,-1,-7,1,4;0,0,13,0,-9,-24,22,-3;0,0,0,-13,
4,2,-4,-3; augment: #4)mat(delim:#none,1/13 w_1;1/13 w_2;1/13 w_3;(-1)/13 w_4)\
E^(-1)=1/13 mat(7,10,-7,2;-1,-7,1,4;-9,-24,22,-3;-4,-2,4,3)
$


#subproblem[]
$
F = mat(0, 2, 3, 4, -8; 1, 1, 3, 4, -8; 1, 2, 2, 4, -8; 1, 2, 3, 3, -8; 1, 2, 3,
4, -9)
$
#set math.mat(delim: "|")
$
det F = mat(0,2,3,4,-8;1, 1, 3, 4, -8; 1, 2, 2, 4, -8; 1, 2,3,3,-8;1,2,3, 4, -9)
mat(delim: #none, -w_5;-w_5;-w_5;-w_5;;)=
mat(-1,0,0,0,1;0,-1,0,0,1;0,0,-1,0,1;0,0,0,-1,1;1,2,3,4,-9)
mat(delim: #none, ;;;;+w_1+2w_2+3w_3+4w_4;)= \
mat(-1,0,0,0,1;0,-1,0,0,1;0,0,-1,0,1;0,0,0,-1,1;0,0,0,0,1) = 1
$
#set math.mat(delim: "[")

$
mat(0,2,3,4,-8,1,0,0,0,0;1, 1, 3, 4, -8,0,1,0,0,0; 1, 2, 2, 4, -8,0,0,1,0,0; 
1, 2,3,3,-8,0,0,0,1,0;1,2,3, 4, -9,0,0,0,0,1; augment: #5)
mat(delim: #none, -w_5;-w_5;-w_5;-w_5;;)=
mat(-1,0,0,0,1,1,0,0,0,-1;0,-1,0,0,1,0,1,0,0,-1;0,0,-1,0,1,0,0,1,0,-1;
0,0,0,-1,1,0,0,0,1,-1;1,2,3,4,-9,0,0,0,0,1; augment: #5)
mat(delim: #none, ;;;;+w_1+2w_2+3w_3+4w_4;)= \
mat(-1,0,0,0,1,1,0,0,0,-1;0,-1,0,0,1,0,1,0,0,-1;0,0,-1,0,1,0,0,1,0,-1;
0,0,0,-1,1,0,0,0,1,-1;0,0,0,0,1,1,2,3,4,-9; augment: #5)
mat(delim: #none, -w_5;-w_5;-w_5;-w_5;;)=
mat(-1,0,0,0,0,0,-2,-3,-4,8;0,-1,0,0,0,-1,-1,-3,-4,8;0,0,-1,0,0,-1,-2,-2,-4,8;
0,0,0,-1,0,-1,-2,-3,-3,8;0,0,0,0,1,1,2,3,4,-9; augment: #5)
mat(delim: #none, dot (-1);dot (-1);dot (-1);dot (-1);;)=\
mat(1,0,0,0,0,0,2,3,4,-8;0,1,0,0,0,1,1,3,4,-8;0,0,1,0,0,1,2,2,4,-8;
0,0,0,1,0,1,2,3,3,-8;0,0,0,0,1,1,2,3,4,-9; augment: #5) =>
F^(-1) = F
$

#subproblem[]
$
G_n = mat(0, 1, ..., 1; 1, 0, ..., 1; dots.v, dots.v, dots.down, dots.v; 1, 1,
  ..., 0)_(n times n)
$
#set math.mat(delim: "|")
$
det G_n = mat(0,1,...,1;1,0, ..., 1; dots.v,dots.v,dots.down,dots.v;1,1, ..., 0)
mat(delim: #none,-w_n;-w_n;dots.v;;)=
mat(-1,0,...,0,1;0,-1,...,0,1;dots.v,dots.v,dots.down,dots.v,dots.v;0,0,...,-1,1
;1,1,...,1,0)mat(delim: #none,;;;;+w_1+...+w_(n-1)) =\
mat(-1,0,...,0,1;0,-1,...,0,1;dots.v,dots.v,dots.down,dots.v,dots.v;0,0,...,-1,1
;0,0,...,0,n-1) = (-1)^(n-1) (n-1) != 0
$
#set math.mat(delim: "[")
$
mat(0,1,...,1,1,0,...,0;1,0,...,1,0,1,...,0;
dots.v,dots.v,dots.down,dots.v,dots.v,dots.v,dots.down,dots.v;
1,1,...,0,0,0,...,1;augment:#4) mat(delim: #none,-w_n;-w_n;dots.v;;)=
mat(-1,0,...,1,1,0,...,-1;0,-1,...,1,0,1,...,-1;
dots.v,dots.v,dots.down,dots.v,dots.v,dots.v,dots.down,dots.v;
1,1,...,0,0,0,...,1;augment:#4)mat(delim: #none,;;;;+w_1+...+w_(n-1))=\
mat(-1,0,...,1,1,0,...,-1;0,-1,...,1,0,1,...,-1;
dots.v,dots.v,dots.down,dots.v,dots.v,dots.v,dots.down,dots.v;
0,0,...,n-1,1,1,...,2-n;augment:#4)
mat(delim:#none,dot (1-n);dot (1-n);dots.v;;)=\
mat(n-1,0,...,1-n,1-n,0,...,n-1;0,n-1,...,1-n,0,1-n,...,n-1;
dots.v,dots.v,dots.down,dots.v,dots.v,dots.v,dots.down,dots.v;
0,0,...,n-1,1,1,...,2-n;augment:#4)mat(delim:#none,+w_n;+w_n;dots.v;;)=\
mat(n-1,0,...,0,2-n,1,...,1;0,n-1,...,0,1,2-n,...,1;
dots.v,dots.v,dots.down,dots.v,dots.v,dots.v,dots.down,dots.v;
0,0,...,n-1,1,1,...,2-n;augment:#4)mat(delim:#none,dot 1/(n-1);dot 1/(n-1);
  dots.v;dot 1/(n-1);)=\
mat(1,0,...,0,(2-n)/(n-1),1/(n-1),...,1/(n-1);0,1,...,0,1/(n-1),(2-n)/(n-1),...,1/(n-1);
dots.v,dots.v,dots.down,dots.v,dots.v,dots.v,dots.down,dots.v;
0,0,...,1,1/(n-1),1/(n-1),...,(2-n)/(n-1);augment:#4)
$

#problem[Niech $A$ będzie macierzą kwadratową. Udowodnij, że:]

#subproblem[jeżeli $A^2-A+I=0$, to $A$ jest nieosobliwa i $A^(-1)=I-A$;]

$
A^2-A+I&=0\
I &= A - A^2 \
I &= A dot I - A dot A &=& I dot A - A dot A \
I &= A dot (I - A) &=& (I - A) dot A \
$
$
=>A" jest odwracalna i" I-A = A^(-1) \
$

#subproblem[jeżeli $A^k=0$, to $(I-A)^(-1)=I+A+A^2+...+A^(k-1)$ (dla $k>=1$).]

Niech $B = I+A+A^2+...+A^(k-1)$. 
$
(I-A)^(-1) = B <=> (I-A) dot B = B dot (I-A) = I \
(I-A) dot B = (I-A) dot (I+A+A^2+...+A^(k-1)) = \
I^I + I dot A + I dot A^2 + ... + I dot A^(k-1) - A dot I - A dot A- A dot A^2 -
... - A dot A^(k-1) = I - A^k = I \

B dot (I-A) = (I+A+A^2+...+A^(k-1)) dot (I-A) = \
I^I + A dot I + A^2 dot I + ... + A^(k-1) dot I - A dot I - A dot A- A^2 dot A -
... - A^(k-1) dot A = I - A^k = I
$

#problem[Jakie są możliwe wartości wyznacznika macierzy rzeczywistej $A$ stopnia
$n$, jeżeli:]

#subproblem[$A^2=A^T$]
$
det A^2 &= det A^T \
(det A)^2 &= det A \
det A(det A - 1) &= 0 \
det A = 0 &or det A = 1
$
Sprawdźmy czy te wyznaczniki są osiągalne.
$
A = [0] => A^2 = [0] = A^T and det A = 0 \
A = [1] => A^2 = [1] = A^T and det A = 1
$

#subproblem[$A^T-A^(-1)=0$]
$A$ jest odwracalna, więc $det A != 0$.
$
A^T &= A^(-1) \
det A^T &= det A^(-1) \
det A &= (det A)^(-1) | dot det A \
(det A)^2 &= 1 \
det A = 1 &or det A = -1
$
Sprawdźmy czy te wyznaczniki są osiągalne.
$
A = [1] => A^T = [1] = A^(-1) and det A = 1\
A = [-1] => A^T = [-1] = A^(-1) and det A = -1
$

#subproblem[$A^2+A^(-1)=0$]
$
A^2 + A^(-1) &= 0 \
A^2 &= -A^(-1) \
det A^2 &= det -A^(-1) \
(det A)^2 &= -(det A)^(-1) | dot det A \
(det A)^3 &= -1 \
det A &= -1\
A = [-1] => A^2 + A^(-1) &= [1] + [-1] = [0]
$

#problem[Sprawdź dla jakich wartości parametru rzeczywistego $p$ macierz:
  $
  A=mat(1,p,p,p;p,1,p,p;p,p,1,p;p,p,p,1) "jest nieosobliwa."
  $
Wyznacz wymiar przestrzeni $ "Lin"{(1,p,p,p);(p,1,p,p);(p,p,1,p);(p,p,p,1)} $
w zależności od parametru $p$.
]
#set math.mat(delim: "|")
$
det A = mat(1,p,p,p;p,1,p,p;p,p,1,p;p,p,p,1)mat(delim:#none,;-w_1;-w_1;-w_1;)=
mat(1,p,p,p;p-1,1-p,0,0;p-1,0,1-p,0;p-1,0,0,1-p)=
(p-1)^3mat(1,p,p,p;1,-1,0,0;1,0,-1,0;1,0,0,-1)=\
(p-1)^3mat(1+3p,p,p,p;0,-1,0,0;0,0,-1,0;0,0,0,-1)=-(p-1)^3 (1+3p)\
"A jest nieosobliwa" <=> det A != 0 <=> p != 1 and p != -1/3
$
Rząd macierzy $A$ to liczba niezależnych wierszy $A$, więc jest to również
wymiar przestrzeni rozpiętej nad tymi wierszami. 

Jeżeli $p != 1 and p != -1/3$ to $det A != 0$, czyli wymiar to $r(A) = 4$.

Dla $p = 1$ mamy:
#set math.mat(delim: "[")
$
A = mat(1,1,1,1;1,1,1,1;1,1,1,1;1,1,1,1;)
$
Wszystkie wiersze są takie same, więc wymiar podprzestrzeni to $r(A) = 1$.

Dla $p = -1/3$:
$
A =
mat(1,-1/3,-1/3,-1/3;-1/3,1,-1/3,-1/3;-1/3,-1/3,1,-1/3;-1/3,-1/3,-1/3,1;)
$
$det A = 0$, więc $r(A) !=4$. Sprawdźmy wyznacznik podmacierzy $3 times 3$.
$
mat(delim: "|",1,-1/3,-1/3;-1/3,1,-1/3;-1/3,-1/3,1)
mat(delim: #none,1,-1/3;-1/3,1;-1/3,-1/3)=1 - 1/27-1/27-1/9-1/9-1/9=16/27 !=0 =>
r(A)=3
$
Więc wymar podprzestrzeni to $cases(1",gdy" p=1,3", gdy" p=-1/3, 
  4" w przeciwnym przypadku")$


#problem[Niech będzie dany następujący podzbiór $N$ zbioru $M_(2 times 2) (CC)$:
  $
  N = {mat(x, i x; -i x, x): x in RR without {0}}.
  $
  Sprawdź, czy para $(N, dot)$, gdzie "$dot$" oznacza mnożenie macierzy, jest
  grupą abelową.
]

Niech $A = mat(x, i x; -i x, x), B = mat(y, i y; -i y, y),
C = mat(z, i z; -i z, z) x, y, z in RR without
{0}$
$
&mat(y,,,,,,,, i y; -i y,,,,,,,, y) \
A dot B = mat(x, i x; -i x, x) 
&mat(x y - i^2 x y, i x y + i x y; -i x y -i x y, -i^2 x y + x y)=
mat(2x y, 2 i x y; -2 i x y, 2 x y) in N
$
$
A dot (B dot C) =mat(x, i x; -i x, x) dot mat(2x y, 2 i x y; -2 i x y, 2 x y) = 
mat(4 x y z, 4 i x y z; -4 i x y z, 4 x y z) = (A dot B) dot C
$
Działanie $dot$ jest wewnętrzne i łączne. Widać też, że jest przemienne.

$exists E in N: forall A in N: E dot A = A$ (?)

Niech $A = mat(x, i x; -i x, x), E = mat(e, i e; -i e, e), x, e in RR without
{0}$

$
A dot E = mat(2x e, 2 i x e; -2 i x e, 2 x e) = mat(x, i x; -i x, x) => e = 1/2
$
Istnieje element neutralny.

$forall A in N: exists A' in N: A dot A' = E$ (?)

Niech $A = mat(x, i x; -i x, x), A' = mat(x', i x'; -i x', x'), x, x' in RR without
{0}$

$
A dot A' = mat(2x x', 2 i x x'; -2 i x x', 2 x x') = mat(1/2, i/2; -i/2, 1/2)
=> x' = 1/(4x) != 0
$

Każdy element $N$ ma swój element odwrotny, więc $(N, dot)$ to grupa abelowa.

#problem[Zadana jest macierz ortogonalna $A in M_(n times n) (RR)$ 
  (tj. $A^T A = A A^T = I$). Rozwiąż równanie, gdzie $X$ jest niewiadomą
  macierzą, a $I$ jest macierzą jednostkową:]
$
  A X (A^T)^2 &= -I^3 | dot A\
  A X A^T A^T A &= -I A\
  A X A^T I &= -A | dot A \
  A X A^T A &= -A dot A \
  A X I &= -A^2 | A^T dot \
$$
  A^T A X I &= A^T dot (-A^2) \
  I X &= - A^T A dot A \
  X &= -A
$

#problem[Niech $A in M_(n times n) (RR)$. Sprawdź, czy $A^T A = I => A A^T =I$.]

Jeżeli $A$ jest odwracalna, to:
$
A^T A &= I | dot A^(-1) \
A^T A A^(-1) &= I A^(-1) \
A^T I &= A^(-1) \
A^T &= A^(-1) =>
A A^T = A A^(-1) = I
$
Jeżeli $A$ jest nieodwracalna to $det A = 0$, więc: 
$
det (A^T A) &= det I \
det A^T dot det A &= 1 \
0 = 1 \
"sprzeczność"
$

#problem[Wykaż, że $n$-ta potęga macierzy diagonalnej, $n >= 1$, jest macierzą
  diagonalną.]

$
&mat(a_11, 0, ..., 0; 0, a_22, ..., 0; dots.v, dots.v, dots.down, dots.v; 0, 0,
  ..., a_(n n)) \
mat(a_11, 0, ..., 0; 0, a_22, ..., 0; dots.v, dots.v, dots.down, dots.v; 0, 0,
  ..., a_(n n))
&mat(a_11^2, 0, ..., 0; 0, a_22^2, ..., 0; dots.v, dots.v, dots.down, dots.v; 0, 0,
  ..., a_(n n)^2)
$

Indukcyjnie dowodzimy tezę dla kolejnych potęg.

#problem[Uzasadnij, że wyznacznik macierzy $A in M_(n times n) (RR) thick (n > 1
)$ o wyrazach nieparzystych jest liczbą parzystą.]


$
det A = mat(delim: "|",
  a_(1 1), a_(1 2), ..., a_(1 n);
  a_(2 1), a_(2 2), ..., a_(2 n);
  dots.v, dots.v, dots.down, dots.v;
  a_(m 1), a_(m 2), ..., a_(m n);
) := sum_(sigma in S_n) epsilon(sigma) dot a_(1 sigma(1)) dot a_(2 sigma(2)) dot
... dot a_(n sigma(n))
$

$epsilon(sigma) = plus.minus 1$, więc nie wpływa na parzystość. Każde $a_(i j)$
jest nieparzyste, więc sumujemy iloczyny $n$ liczb nieparzystych, które też będą
nieparzyste. Sumujemy po wszystkich permutacjach, których jest $n!$. Dla $n >
1$, $n!$ jest parzyste, więc cała suma też będzie parzysta.
