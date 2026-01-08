#import "../../../template.typ": *
#show: template
#set math.mat(delim:"[")
#show math.equation: set block(breakable: true)

#problem[Niech $f:RR^3 -> RR^3, f(x,y,z)=(x-y,y-z,z-x), B_1 = (u_1, u_2, u_3),
  B_2=(v_1, v_2, v_3)$, gdzie $u_1=v_1=(1,0,0), u_2=v_2=(1,1,0),
  u_3=v_3=(1,1,1)$ i $B$ - baza standardowa (kanoniczna) w $RR^3$.]

#subproblem[Wyznacz macierz odwzorowania $f$ w bazach standardowych;]
$
f(1,0,0) = (1,0,-1)\
f(0,1,0) = (-1,1,0)\
f(0,0,1) = (0,-1,1)\
M_f (B,B) = mat(1,-1,0;0,1,-1;-1,0,1)
$

#subproblem[Wykorzystując tę macierz, znajdź obraz wektora $v=(0,-1,-2)$;]
$
mat(1,-1,0;0,1,-1;-1,0,1)mat(0;-1;-2) =mat(0+1+0;0-1+2;0+0-2)=mat(1;1;-2) \
f(v) = (1,1,-2)
$

#subproblem[Wyznacz $M_f (B_1, B_2)$;]
Wyznaczmy obrazy wektorów z $B_1$ i przedstawmy je przy pomocy bazy $B_2$.

$
f(u_1) = f(1,0,0)=(1,0,-1) = alpha (1,0,0) + beta (1,1,0) + gamma (1,1,1)\
cases(alpha+beta+gamma=1,beta+gamma=0,gamma=-1)=>cases(alpha=1,beta=1,gamma=-1)\
f(u_2) = f(1,1,0)=(0,1,-1) = alpha (1,0,0) + beta (1,1,0) + gamma (1,1,1)\
cases(alpha+beta+gamma=0,beta+gamma=1,gamma=-1)=>cases(alpha=-1,beta=2,gamma=-1)\
f(u_3) = f(1,1,1)=(0,0,0) = 0 (1,0,0) +0 (1,1,0) + 0(1,1,1)\
M_f (B_1, B_2) = mat(1,-1,0;1,2,0;-1,-1,0)
$

#subproblem[Wyznacz obraz wektora $v$ wykorzystując nową macierz;]
Wyznaczmy współrzędne wektora $v$ w bazie $B_1$.
$
v = (0,-1,-2) = alpha (1,0,0) + beta (1,1,0) + gamma (1,1,1)\
cases(alpha+beta+gamma=0,beta+gamma=-1,gamma=-2)=>cases(alpha=1,beta=1,gamma=-2)\
v = (1,1,-2)_B_1\
f(v)_B_2 = mat(1,-1,0;1,2,0;-1,-1,0) mat(1;1;-2) =
mat(1-1+0;1+2+0;-1-1+0)=mat(0;3;-2)
$
Zamieńmy z powrotem na bazę kanoniczną.
$
(0,3,-2)_B_2 = 0 (1,0,0) + 3 (1,1,0)-2 (1,1,1) = (1,1,-2)\
$

#subproblem[Wyznacz jeszcze raz $M_f (B_1, B_2)$ wykorzystując macierze
  przejścia.]
