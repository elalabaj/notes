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

Znamy $M_f (B,B) = mat(1,-1,0;0,1,-1;-1,0,1)$, musimy jeszcze wyznaczyć $P_(B ->
B_1)$ i $P_(B_2 -> B)$. Wtedy $
M_f (B_1, B_2) = P_(B_2 -> B) dot M_f (B, B) dot P_(B ->B_1)
$


$P_(B -> B_1)$ to wektory z $B_1$ zapisane w bazie kanonicznej $B$ jako kolumny,
czyli po prostu:
$
P_(B -> B_1) = mat(1,1,1;0,1,1;0,0,1)
$
Zauważmy, że $B_1 = B_2$, więc $P_(B_2 -> B) = P_(B_1 -> B) = (P_(B ->
B_1))^(-1).$
$
mat(1,1,1,1,0,0;0,1,1,0,1,0;0,0,1,0,0,1;augment:#3)mat(delim:#none,-w_2;-w_3;;)
->mat(1,0,0,1,-1,0;0,1,0,0,1,-1;0,0,1,0,0,1;augment:#3)\
P_(B_2 -> B) = mat(1,-1,0;0,1,-1;0,0,1) \
M_f (B_1, B_2) = P_(B_2 -> B) dot M_f (B, B) dot P_(B ->B_1) = \
mat(1,-1,0;0,1,-1;0,0,1) mat(1,-1,0;0,1,-1;-1,0,1)mat(1,1,1;0,1,1;0,0,1) = 
mat(1,-2,1;1,1,-2;-1,0,1)mat(1,1,1;0,1,1;0,0,1) = mat(1,-1,0;1,2,0;-1,-1,0)
$

#problem-box(title: "Zadanie 4")[
Wiedząc, że macierz endomorfizmu $f:RR^2 -> RR^2$ ma w bazach $B_1=(e_1,
  e_2)=((1,0),(1,1)), B_2=(l_1, l_2)=((1,1),(0,-1))$, postać $M_f (B_1,
  B_2)=mat(1,-2;1,-1)$, sprawdź, czy $f$ jest odwzorowaniem odwracalnym. Jeżeli
  tak, to wyznacz wzór na $f^(-1)$.
]
Odwzorowanie jest odwracalne jeśli macierz odwzorowania w dowolnych bazach jest
odwracalna, czyli jej wyznacznik jest różny od zera.
$
mat(delim:"|",1,-2;1,-1) = -1 + 2 = 1 != 0
$
Żeby wyznaczyć wzór potrzebujemy tego odwzorowania w bazie kanonicznej.
$
M_(f^(-1)) (B, B) = (M_f (B,B))^(-1) \
M_f (B, B) = P_(B -> B_2) dot M_f (B_1, B_2) dot P_(B_1 -> B) \
P_(B -> B_2) = mat(1,0;1,-1), P_(B -> B_1) = mat(1,1;0,1) \
mat(1,1,1,0;0,1,0,1;augment:#2)
mat(delim:#none,-w_2;;)->mat(1,0,1,-1;0,1,0,1;augment:#2) => P_(B_1 -> B) =
mat(1,-1;0,1) \
M_f (B, B) = mat(1,0;1,-1)mat(1,-2;1,-1)mat(1,-1;0,1) = 
mat(1,-2;0,-1)mat(1,-1;0,1)=mat(1,-3;0,-1)\
mat(1,-3,1,0;0,-1,0,1;augment:#2)mat(delim:#none,-3w_2;dot (-1))->
mat(1,0,1,-3;0,1,0,-1;augment:#2)\
M_(f^(-1)) (B, B) = mat(1,-3;0,-1)\
f^(-1) (x,y) = mat(1,-3;0,-1) mat(x;y) = mat(x-3y;-y) = (x-3y, -y)
$

#problem-box(title: "Zadanie 5")[
Niech $V$ będzie przestrzenią wektorową nad ciałem $RR$ i niech $B=(e_1, e_2,
  e_3)$ będzie jej bazą. Udowodnij, że $B'=(e'_1, e'_2, e'_3)$, gdzie 
  $e'_1=e_1, e'_2=e_1+e_2,e'_3=e_1+e_2+e_3$, jest bazą przestrzeni $V$, wyznacz
  $P = P_(B -> B')$ oraz współrzędne wektora $x=e_1 - 2e_2 + 3e_3$ w bazie $B'$.
]

Sprawdźmy, czy $e'_1 = (1,0,0)_B, e'_2 = (1,1,0)_B, e'_3=(1,1,1)_B$ są liniowo
niezależne.
$
mat(delim:"|",1,1,1;0,1,1;0,0,1) = 1 != 0
$
Są liniowo niezależne i jest ich tyle samo co w $B$, więc $B'$ również jest 
bazą $V$.

$P_(B -> B')$ to wektory z $B'$ zapisane w bazie $B$ czyli ta sama macierz
$P_(B -> B') = mat(1,1,1;0,1,1;0,0,1)$.

Wiemy, że $[x]_B = P_(B -> B') dot [x]_B'$. Niech $x = (a,b,c)_B'$. Wtedy
$
mat(1,1,1;0,1,1;0,0,1)mat(a;b;c) = mat(1;-2;3) =>
cases(c=3,b=-2-3=-5,a=1+5-3=3) \
x = (3,-5,3)_B'
$

#problem-box(title: "Zadanie 6")[
$P$ jest macierzą przejścia od pewnej bazy $B_1$ do danej bazy
  $B_2=(v_1,v_2,v_3)$,
  $
  P=mat(0,-1,0;2,0,-1;1,0,-1).
  $
]

#subproblem-box(title: "6.a)")[
Wyznacz wektory bazy  $B_1$.
]
Niech $B_1 = (u_1, u_2, u_3)$.
$
cases(v_1 = 2u_2 + u_3, v_2=-u_1, v_3=-u_2-u_3) => 
cases(u_1 = -v_2, u_2 = v_1+v_3, u_3 = v_1 - 2(v_1+v_3)=-v_1-2v_3)
$

#subproblem-box(title:"6.b)")[
Wektor $v$ ma w bazie $B_1$ współrzędne $[−2, 4, 2]^T$. Znajdź współczynniki
wektora $v$ w bazie $B_2$ (Wykorzystaj $P$!).
]

$
[v]_B_2 = P_(B_2 -> B_1) dot [v]_B_1 = (P_(B_1 -> B_2))^(-1) dot [v]_B_1\
mat(0,-1,0,1,0,0;2,0,-1,0,1,0;1,0,-1,0,0,1;augment:#3)->
mat(1,0,-1,0,0,1;0,-1,0,1,0,0;2,0,-1,0,1,0;augment:#3)
mat(delim:#none,;;-2w_1)->\
mat(1,0,-1,0,0,1;0,-1,0,1,0,0;0,0,1,0,1,-2;augment:#3)
mat(delim:#none,+w_3;dot (-1);)->
mat(1,0,0,0,1,-1;0,1,0,-1,0,0;0,0,1,0,1,-2;augment:#3) \
[v]_B_2 = mat(0,1,-1;-1,0,0;0,1,-2) mat(-2;4;2) = mat(2;2;0)
$

#problem-box(title: "Zadanie 8")[
Niech $A=M_f (B_1, B_2) = mat(3,0;2,1;1,-1)$ będzie macierzą odwzorowania
liniowego $f:U->V$,

a $C=M_g (B_3, B_1)=mat(1,-1,1;2,0,1)$ macierzą odwzorowania $g: V->U$.

]
#subproblem-box(title: "8.a)")[
Znajdź $M_(f compose g) (B_2, B_2)$, jeżeli wiadomo, że $B_1=(u_1,u_2),
  B_2=(v_1,v_2,v_3),B_3=(w_1,w_2,w_3)$, gdzie
$w_1=2v_2+v_3,w_2=-v_1,w_3=-v_2-v_3$.
]

Dostajemy wektor z $V$ w bazie $B_2$, tłumaczymy go na $B_3$, wrzucamy do $g$ i 
otrzymujemy odwzorowanie z $U$ w bazie $B_1$, a potem wrzucamy do $f$ i
otrzymujemy odwzorowanie z $V$ w bazie $B_2$.

$
M_(f compose g)(B_2,B_2)=M_f (B_1, B_2) dot M_g (B_3, B_1) dot P_(B_3 -> B_2)\
$
Wyznaczmy $P_(B_3 -> B_2)$. Są to wektory z $B_2$ zapisane przy pomocy $B_3$.
$
cases(w_1=2v_2+v_3,w_2=-v_1,w_3=-v_2-v_3) =>
cases(v_1=-w_2,v_2=w_1+w_3,v_3=-w_1-2w_3)\
P_(B_3 -> B_2) = mat(0,1,-1;-1,0,0;0,1,-2)\
M_(f compose
g)(B_2,B_2)=mat(3,0;2,1;1,-1)mat(1,-1,1;2,0,1)mat(0,1,-1;-1,0,0;0,1,-2)=
mat(3,0;2,1;1,-1)mat(1,2,-3;0,3,-4)=mat(3,6,-9;2,7,-10;1,-1,1)
$

#subproblem-box(title: "8.b)")[Wyznacz Ker$g$.]

Ker$g={v in V: g(v) = overline(0)}$. Niech $v=(x,y,z)_B_3$. Wtedy:
$
g(v) = overline(0) <=> M_g (B_3, B_1) dot [v]_B_3 = overline(0) <=>
mat(1,-1,1;2,0,1) mat(x;y;z) = mat(0;0)\
mat(x-y+z;2x+z)=mat(0;0) => cases(y=-x,z=-2x) \
v=x(1,-1,-2)_B_3 = x (2v_2+v_3 +v_1 + 2v_2 + 2v_3) = x(v_1+4v_2+3v_3)\
"Ker"g = "Lin"{v_1+4v_2+3v_3}
$
