#import "../../template.typ": *
#show: template

*1.f*

$
abs(abs(z_1)-abs(z_2)) <= abs(z_1 - z_2) <=>
-abs(z_1 - z_2) <= abs(z_1)-abs(z_2) <= abs(z_1 - z_2)
$

$
abs(z_1)-abs(z_2) &<= abs(z_1 - z_2)\
abs(z_1) &<= abs(z_1 - z_2)+abs(z_2)\
abs(z_1 - z_2 + z_2 ) &<= abs(z_1 - z_2)+abs(z_2)
$

Co zostało udowodnione w *1.e*. Analogicznie:
$
abs(z_2)-abs(z_1) &<= abs(z_2 - z_1) = abs(z_1 - z_2)\
-abs(z_1 - z_2) &<= abs(z_1) - abs(z_2)
$

*3.e*

$z = 1 + cos alpha + i sin alpha$

Założenia: $0 < alpha < pi/2$

$
abs(z) = sqrt((1 + cos alpha)^2 + sin^2 alpha) =
sqrt((1 + cos alpha)^2 + 1 - cos^2 alpha) = \
sqrt((1 + cos alpha)^2 + (1 + cos alpha)(1 - cos alpha)) =
sqrt((1 + cos alpha)(1 + cos alpha + 1 - cos alpha)) = \
sqrt(2(1 + cos alpha)) = sqrt(2(1 + 2cos^2 alpha/2 - 1)) = 
sqrt(4cos^2 alpha/2) = 2cos alpha/2
$

$cos alpha/2$ jest zawsze dodatni co wynika z założeń.

Niech $phi = arg(z)$. Wtedy:

$
cos phi = (1 + cos alpha)/(2 cos alpha/2) =
(1 + 2cos^2 alpha/2-1)/(2 cos alpha/2) = cos alpha/2
$

$
sin phi = (sin alpha) / (2cos alpha/2) = 
(2 sin alpha/2 cos alpha/2)/(2 cos alpha/2) = sin alpha/2
$

Więc:

$
z = 2cos alpha/2 (cos alpha/2 + i sin alpha/2)
$

*12*

$root(n, 1)$ to zbiór $z$ takich, że $z^n = 1$ czyli zbiór rozwiązań wielomianu
$z^n - 1 = 0$.

Z wzorów Viete'a wiemy że dla wielomianu postaci $a_n z^n + a_(n-1) z^(n-1) +
... + a_1 z + a_0$ suma pierwiastków $z_1 + z_2 + ... + z_n$ wynosi $(-a_(n-1))/a_n$.
 
Dla wielomianu $z^n - 1 thick$ $a_(n-1) = 0$ i $a_n = 1$, więc suma pierwiastków
wynosi $(-0)/1 = 0$.

#pagebreak()
*13*

$cos n phi = cos^n phi - binom(n, 2) cos^(n-2) phi sin^2 phi + binom(n, 4)
cos^(n-4) phi sin^4 phi - ...$

$sin n phi = binom(n, 1) cos^(n-1) phi sin phi - binom(n, 3)
cos^(n-3) phi sin^3 phi + ..., n = 1, 2, 3, ...$

_Dowód:_

$ 
(cos phi + i sin phi)^n = \
binom(n, 0) cos^n phi i^0 sin^0 phi + 
binom(n, 1) cos^(n-1) phi i sin phi + 
binom(n, 2) cos^(n-2) phi i^2 sin^2 phi + \
binom(n, 3) cos^(n-3) phi i^3 sin^3 phi +
binom(n, 4) cos^(n-4) phi i^4 sin^4 phi + 
binom(n, 5) cos^(n-5) phi i^5 sin^5 phi + ...
$

Kolejne potęgi $i$ przyjmują wartości $1, i, -1, -i$ w kółko, więc:

$ 
(cos phi + i sin phi)^n = \
binom(n, 0) cos^n phi sin^0 phi + 
binom(n, 1) cos^(n-1) phi i sin phi -
binom(n, 2) cos^(n-2) phi sin^2 phi - \
binom(n, 3) cos^(n-3) phi i sin^3 phi +
binom(n, 4) cos^(n-4) phi sin^4 phi + 
binom(n, 5) cos^(n-5) phi i sin^5 phi - ... \
$
Możemy wyciągnąć $i$ przed nawias:
$
(binom(n, 0) cos^n phi sin^0 phi -
binom(n, 2) cos^(n-2) phi sin^2 phi +
binom(n, 4) cos^(n-4) phi sin^4 phi - ... ) \
+ i (
binom(n, 1) cos^(n-1) phi  sin phi -
binom(n, 3) cos^(n-3) phi  sin^3 phi +
binom(n, 5) cos^(n-5) phi  sin^5 phi - ...) \
$

Ale $(cos phi + i sin phi)^n$ wynosi też, ze wzoru de Moivre'a $cos n phi + i
sin n phi$.

Dwie liczby zespolone są równe, gdy ich części urojne i rzeczywiste są równe,
więc:

$cos n phi = binom(n, 0) cos^n phi sin^0 phi -
binom(n, 2) cos^(n-2) phi sin^2 phi +
binom(n, 4) cos^(n-4) phi sin^4 phi - ... $

$sin n phi = binom(n, 1) cos^(n-1) phi  sin phi -
binom(n, 3) cos^(n-3) phi  sin^3 phi +
binom(n, 5) cos^(n-5) phi  sin^5 phi - ...$

.

Obliczmy $cos pi/5$ wykorzystując powyższą własność.

$
sin(5 dot pi/5) = sin pi = 0 = 
binom(5, 1) cos^4 pi/5 sin pi/5 -
binom(5, 3) cos^2 pi/5 sin^3 pi/5 +
binom(5, 5) sin^5 pi/5  
$

Podzielmy obustronnie przez $sin pi/5 != 0$, aby otrzymać parzyste potęgi przy
sinusie.

$
0 = binom(5, 1) cos^4 pi/5 - binom(5, 3) cos^2 pi/5 sin^2 pi/5 + binom(5, 5) sin^4 pi/5 \
$

Niech $t = cos pi/5$. Wtedy $sin^2 pi/5 = 1 - t^2$. Otrzymujemy:

$
0 &= 5 t^4 - 10 t^2 (1 - t^2) + (1 - t^2)^2\
0 &= 5 t^4 - 10 t^2 + 10t^4 + 1 - 2 t^2 + t^4\
0 &= 16 t^4 - 12 t^2 + 1\
Delta &= 12^2 - 4 dot 16 dot 1 = 144 - 64 = 80 = (4sqrt(5))^2\
t^2 &= (12 plus.minus 4 sqrt(5))/32 = (3 plus.minus sqrt(5))/8 > 0 \
t &= sqrt((3 plus.minus sqrt(5))/8 ) = sqrt(3 plus.minus sqrt(5))/(2sqrt(2)) = 
sqrt(6 plus.minus 2 sqrt(5))/4 = sqrt(5 plus.minus 2 sqrt(5) + 1)/4 = 
sqrt((sqrt(5) plus.minus 1)^2)/4 = (sqrt(5) plus.minus 1)/4 
$

 przedziale $(0, pi)$ $cos x$ jest funkcją malejącą, dlatego $cos pi/5 > cos pi/3 =
1/2$, więc pasującą wartością jest tylko $(sqrt(5) + 1)/4$

$
cos pi/5 = (1 + sqrt(5))/4
$
