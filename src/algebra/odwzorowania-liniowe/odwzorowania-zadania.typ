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

