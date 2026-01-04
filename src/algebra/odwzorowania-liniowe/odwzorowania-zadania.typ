#import "../../../template.typ": *
#show: template

#problem[Sprawdź, które z podanych odwzorowań są liniowe:]
#subproblem[$L : RR[x] → RR[x], (L p)(x) = x p' (x) + p(1); checkmark$]
Niech $p, q in RR[x], alpha, beta in RR$
$
L(alpha p + beta q) = x(alpha p + beta q)' + (alpha p + beta q)(1) = 
x(alpha p' + beta q') + alpha p(1) + beta q(1) = \
alpha (x p' + p(1)) + beta (x q' + q(1)) = alpha L(p) + beta L(q)
$

#subproblem[$L : RR[x] → RR[x], (L p)(x) = p(x)p'(x); crossmark$]
Niech $p in RR[x], alpha in RR$
$
L(alpha p) = (alpha p) (alpha p)' = alpha^2 p p' != alpha p p'
$

#subproblem[$L : RR^2 → RR^2, L(x, y) = (3x + 2y − 1, 2x − 3y); crossmark$]
Nie ma zachowania zera:
$
L(0, 0) = (-1, 0) != (0, 0)
$

#subproblem[$L : C(RR) → C(RR), (L f)(x) = sin f(x); crossmark$]
Kontrprzykład: $f(x) = pi/2, alpha = 2$
$
L(alpha f) = L(2 dot pi/2) = sin pi = 0 != 2 sin pi/2
$

#subproblem[$L : C([0, 1]) → C([0, 1]), (L f)(x) = 2f(x/2). checkmark$]
Niech $f, g in C([0, 1]), alpha, beta in RR$
$
(L(alpha f + beta g))(x) = 2(alpha f + beta g)(x/2) = 2 alpha f(x/2) + 2 beta
g(x/2) = alpha L(f) + beta L(g)
$

#problem[Dane są następujące odwzorowania $f : RR^3 → RR^2$ i $g : RR^2 →
RR^3:$ \ $f(x, y, z) = (−x + y + z, x − y + z), g(x, y) = (y, x, x + y)$.
]
#subproblem[Sprawdź, że są to odwzorowania liniowe i podaj $f(1, 2, −1)$, 
  $g(−1,3)$;]
Niech $x_1, y_1, z_1, x_2, y_2, z_2, alpha, beta in RR$
$
f(alpha (x_1,  y_1,  z_1) + beta (x_2,  y_2,  z_2)) = f(alpha x_1 + beta x_2, 
alpha y_1 + beta y_2, alpha z_1 + beta z_2) = \
(-alpha x_1 - beta x_2 + alpha y_1 + beta y_2 + alpha z_1 + beta z_2, 
alpha x_1 + beta x_2 - alpha y_1 - beta y_2 + alpha z_1 + beta z_2,) = \
alpha (-x_1+y_1+z_1, x_1 - y_1 + z_1) +beta (-x_2 + y_2 + z_2, x_2 -y_2+z_2) = \
alpha f(x_1, y_1, z_1) + beta f(x_2, y_2, z_2)
$
$f(1,2,-1) = (-1+2-1, 1-2-1) = (0,-2)$

Niech $x_1, y_1, x_2, y_2, alpha, beta in RR$
$
g(alpha (x_1, y_1)+beta (x_2,y_))=g(alpha x_1+beta x_2,alpha y_1 + beta y_2) = \
(alpha y_1+beta y_2,alpha x_1+beta x_2 ,alpha x_1+beta x_2+alpha y_1+beta y_2)=\
alpha (y_1, x_1, x_1 + y_1) + beta (y_2, x_2, x_2 + y_2) = 
alpha g(x_1, y_1) + beta g(x_2, y_2)
$
$g(-1,3)=(3,-1,2)$

#subproblem[Znajdź Ker$f$, Im$f$, Ker$g$, Im$g$ i podaj ich wymiary;]
*1)* Ker$f = {(x, y, z) in RR^3: f(x, y, z) = (0, 0)}$ 
$
f(x, y, z) = (-x + y + z, x - y + z) = (0, 0) <=>\
cases(-x+y+z = 0, x-y+z = 0) \
z = 0 \
x = y
$
Ker$f = {(x, x, 0) in RR^3}$, $dim "Ker"f = 1$

*2)* Im$f = {(a, b) in RR^2 | exists (x, y, z) in RR^3: f(x, y, z) = (a,b)$

Niech $a, b in RR$
$
f(x, y, z) = (-x + y + z, x - y + z) = (a, b) <=>\
cases(-x+y+z = a, x-y+z = b) => z = (a+b)/2 \
x - y + (a+b)/2 = b => x - y = (b-a)/2 \
f((b-a)/2, 0, (a+b)/2) = (a, b)
$

Im$f = RR^2, dim "Im"f = 2$

*3)* Ker$g = {(x, y) in RR^2: g(x, y) = (0, 0, 0)}$ 
$
g(x, y) = (y, x, x+y) = (0, 0, 0) <=> x=y=0\
$
Ker$g = {(0, 0)}$, $dim "Ker"g = 0$

*4)* Im$g = {(x, y, z) in RR^3 | exists (a, b) in RR^2: g(a, b) = (x, y, z)$

Niech $x, y, z in RR$
$
g(a, b) = (b, a, a+b) = (x, y, z) <=>\
cases(a = y, b = x, z = x+y)\
$

Im$f = {(x, y, x+y) in RR^3}, dim "Im"f = 2$

#subproblem[Sprecyzuj $g compose f$ i $f compose g$.]

$
g compose f = f(g(x, y)) = f(y,x,x+y) = (-y+x+x+y, y-x+x+y) = (2x, 2y) \
f compose g = g(f(x, y, z)) = g(-x+y+z, x-y+z) = (x-y+z, -x+y+z, 2z)
$

#problem[Podaj wymiary jąder i obrazów następujących przekształceń liniowych:]
#subproblem[$L : RR^3 → RR^2, L(x, y, z) = (x + y, y + z);$]
$
cases(x+y = 0, y+z = 0) => cases(y=-x, z = x) => "Ker"L = {(x, -x, x): x in RR}
=> dim "Ker"L = 1 \
dim RR^3 = dim "Ker"L + dim "Im"L => dim "Im"L = 3-1 = 2
$

#subproblem[$L : RR^3 → RR^4, L(x, y, z) = (2x−y +z, x+ 2y −z, −x+ 3y −2z, 8x+y
+z);$]
#set math.mat(delim:"[")
$
cases(2x−y +z=0, x+ 2y −z=0, −x+ 3y −2z=0, 8x+y+z=0) <=>
mat(2,-1,1;1,2,-1;-1,3,-2;8,1,1) -> mat(1,2,-1;0,-5,3;0,5,-3;0,-15,9) \
y = 3/5 z\
x = -2y + z = -7/5 z \
"Ker"L = {(-7t, 3t, 5t), t in RR} => dim "Ker"L = 1 \
dim RR^3 = dim "Ker"L + dim "Im"L => dim "Im"L = 3-1 = 2
$

#subproblem[$L : R[x]_2 → R[x]_2, (L p)(x) = (x^2 + x)p(2) + (3x^2 − x)p(1).$]

Niech $p = a x^2 + b x + c$. Wtedy $
(L p)(x) = (x^2 + x)(4a+2b+c) + (3x^2 -x)(a+b+c) = 
(7a + 3b + 2c)x^2 + (3a + b)x\
cases(7a+3b+2c = 0, 3a+b = 0) => cases(b = -3a, c = a) \
"Ker"L = {(a x^2 -3a x + a), a in RR} => dim "Ker"L = 1\
dim R[x]_2 = dim "Ker"L + dim "Im"L => dim "Im"L = 3-1 = 2
$

#problem[
Odwzorowanie liniowe $L : RR^3 → RR^2$ przeprowadza wektor $x =
(2, 1, 1)$ na wektor $u = (4, 5)$ oraz wektor $y = (1, −3, 2)$ na wektor 
$v = (−6, 1)$.
Znajdź obraz wektora $z = (5, 6, 1)$ względem tego odwzorowania. Czy przy
tych danych można jednoznacznie określić $L(4, 1, 5)$?
]

Znajdźmy kombinację liniową $x$ i $y$, która daje $z$.
$
alpha x + beta y = z \ alpha (2,1,1) + beta (1,-3,2) = (5, 6, 1)\
mat(2,1,5;1,-3,6;1,2,1;augment:#2)->mat(0,-3,3;0,-5,5;1,2,1;augment:#2)\
$$
-3 beta = 3 => beta = -1 \
alpha = 1 - 2beta = 3
$
W takim razie obraz wektora $z$ też będzie taką kombinacją: $
w=alpha u + beta v=3(4, 5) - (-6, 1) = (18, 14)
$
Analogicznie znajdźmy kobinację dla wektora $L$.
$
mat(2,1,4;1,-3,1;1,2,5;augment:#2) -> mat(0,-3,-6;0,-5,-4;1,2,5;augment:#2)\
-3 beta = -6 => beta = 2\
-5 beta = -4 => beta = 4/5
$
Dochodzimy do sprzeczności, czyli $x$, $y$ i $L$ są liniowo niezależne, więc nie
możemy znaleźć obrazu $L$.

#problem[
Wyznacz odwzorowanie liniowe $f : RR^3 → RR^2$
takie, że $f(1, 1, 0) =(1, 1), f(0, 2, −1) = (−1, 0), f(1, 2, −1) = (0, 2)$.
]
$
f(x,y,z) = (a x + b y + c z, d x + e y + f z) \
cases(
a + b = 1 => a = 1 - b, 
d + e = 1 => d = 1-e, 
2b - c = -1 => c = 2b + 1, 
2e - f = 0 => f = 2e, 
a + 2b - c = 0 => 1 - b + 2b - 2b - 1 = 0 => b = 0", " a=1", " c=1,
d + 2e - f = 2 => 1-e + 2e - 2e = 2 => e = -1", "d = 2", "f=-2
)\
f(x,y,z) = (x+z, 2x-y-2z)\
f(1,1,0) = (1,1) \
f(0,2,-1) = (-1,0) \
f(1,2,-1)=(0,2)
$

#problem[
Skonstruuj następujące endomorfizmy:
]

#subproblem[
$f : RR^4 → RR^4$ taki, że Ker$f = "Lin"{u_1, u_2}$ i Im$f = "Lin"{v_1, v_2}$, 
  gdzie $u_1 = (1, 1, −1, 0), u_2 = (1, 1, 0, 1), v_1 = (1, 1, 1, 1), 
  v_2 = (1, 0, 1, 0)$;
]

Wiemy, że Im$f="Lin"f(B)$, gdzie $B$ to baza $RR^4$. Musimy dobrać taką bazę,
żeby $"Lin"f(B) = "Lin"{v_1, v_2}$. Niech naszą bazą będzie $u_1, u_2$ (ponieważ
$f(u_1) = f(u_2) = overline(0)$) oraz dwa
inne wektory, $w_1$ i $w_2$ tak, że $f(w_1) := v_1, f(w_2) := v_2$.

Musimy znaleźć $w_1$ i $w_2$ niezależne od $u_1$ i $u_2$. $alpha u_1 + beta u_2
= (alpha + beta, alpha + beta, -alpha, beta)$, więc możemy wziać 
$w_1 = (1, 0, 0, 0)$ oraz $w_2 =(0,1,0,0)$.

Możemy zapisać dowolny wektor z 
$RR^4$ jako kombinacja liniowa wektorów z tej bazy.
$
(x, y, z, w) = alpha u_1 + beta u_2 + gamma w_1 + delta w_2 = 
(alpha + beta + gamma, alpha + beta + delta, -alpha, beta) \
cases(alpha = -z, beta = w, gamma = x + z - w, delta = y + z - w)\
$
Teraz możemy skonstruować takie $f$, że $f(u_1) = f(u_2) = overline(0), f(w_1) =
v_1, f(w_2) = v_2$.
$
f(x, y, z, w) = f(-z u_1 + w u_2 + (x + z - w)w_1 + (y + z - w) w_2) =  \
-z f(u_1) + w f(u_2) + (x + z - w) f(w_1) + (y + z - w) f(w_2) =  \
(0, 0, 0, 0) + (0, 0, 0, 0) + (x + z - w) v_1 + (y + z - w) v_2 =  \
(x + y + 2z - 2x, x + z - w, x + y + 2z - 2x, x + z - w)
$


#subproblem[ $f : RR^3 → RR^3 $
taki, że Im$f = "Lin"{v_1, v_2}$, gdzie $v_1 = (1, 3, 2), v_2 = (3, −1, 1)$;
]

Skoro $dim "Im"f=2$, a $dim RR^3 = 3$ to $dim "Ker"f = 1$. 

Możemy wybrać bazę
$B={(1,0,0), (0,1,0) (0,0,1)}$ oraz zdefiniować $f$ tak, że $f(1,0,0)=v_1,
f(0,1,0)=v_2, f(0,0,1)=overline(0)$.

$
f(x, y, z) = x f(1, 0, 0) + y f(0, 1, 0) + z f(0, 0, 1) =\
x(1, 3, 2) + y(3, -1,1) + z(0, 0, 0) = \
(x + 3y, 3x - y, 2x + y)
$

#subproblem[ $L : RR[x]_2 → RR[x]_2$ taki, że Ker$L = "Lin"{1 − x}$ i 
  Im$L = "Lin"{1 + x, 1 + x^2}$.
]

Wybierzmy bazę $B={x^2, 1-x, 1}$ oraz zdefiniujmy $f$ tak, że $f(x^2)=1+x^2,
f(1-x) = 0, f(1)=1+x$.
$
f(a x^2 + b x + c) = f(a x^2 -b (1-x) + b + c) = \
a f(x^2) -b f(1-x) + (b+c) f(1) = a(1 + x^2) + (b+c)(1+x) = \
a x^2 + (b+c)x + a + b + c
$

#problem[
Niech $f : U → V$ będzie odwzorowaniem liniowym, a $(u_1, u_2, u_3),
(v_1, v_2)$ będą bazami przestrzeni wektorowych, odpowiednio, $U$, $V$ 
(nad ciałem $RR$). Wiedząc, że $f(u_1) = 2v_1, f(u_2) = −v_2, f(u_1 + u_3) = v_1
+ v_2$ i $f(u_1 − u_3) = 3v_1 − v_2$, wyznacz Ker$f$.
]

$
2f(u_1 + u_3) - f(u_1) + 2f(u_2) = 2v_1 + 2v_2 -2v_1 - 2v_2 = 0 \
f(2u_1 + 2u_3 - u_1 + 2u_2) = f(u_1 + 2u_2 + 2u_3) = 0
$
Więc na pewno $"Lin"{u_1 + 2u_2 + 2u_3} subset "Ker"f$. Pozostaje pytanie czy 
to już całe jądro.

Zauważmy, że każdy wektor z $V$ da się otrzymać przekształceniem:
$
alpha v_1 + beta v_2 = alpha/2 f(u_1) - beta f(u_2) = f(alpha/2 u_1 - beta u_2)
$
czyli $"Im"f = V$. Z tego wynika, że $dim "Im"f = dim V = 2$, a $dim U = 3$,
więc $dim "Ker"f = 3-2 = 1$, czyli rzeczywiście $"Ker"f = "Lin"{u_1+2u_2+2u_3}$.
