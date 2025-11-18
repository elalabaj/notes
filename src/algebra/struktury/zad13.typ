#import "../../../template.typ": *
#show: template

*13*

W zbiorze $RR^2$ wprowadzamy działania: $(x_1, y_1) + (x_2, y_2) = (x_1 + x_2,
y_1 + y_2)$, \ $(x_1, y_1) dot (x_2, y_2) = (x_1 x_2 + p y_1 y_2,
x_1 y_2 + x_2 y_1)$. Dla jakich $p in RR$ struktura $(RR^2, +, dot)$ jest
ciałem? 

Łatwo zauważyć, że $(0, 0) in RR^2$ jest zerem, czyli elementem neutralnym 
względem $+$, \ a $(1, 0) in RR^2$ jedynką, czyli elementem neutralnym względem 
$dot$, ponieważ $forall (x, y) in RR^2:$

$
(x, y) + (0, 0) = (x+0, y+0) = (x, y) \
(0, 0) + (x, y) = (0+x, 0+y) = (x, y) \
(x, y) dot (1, 0) = (x dot 1 + p dot y dot 0, x dot 0 + 1 dot y) = (x, y) \
(1, 0) dot (x, y) = (1 dot x + p dot 0 dot y, 1 dot y + x dot 0) = (x, y) \
$

Żeby struktura była ciałem, to każdy element oprócz zera musi mieć swój 
element odwrotny.
$forall (x, y) in RR^2: (x, y) != (0, 0) => exists (x', y') in RR^2: (x, y) dot
(x', y') = (1, 0) <=> $
$
x x' + p y y' = 1 and x y' + x' y = 0 \
y' = - (x' y)/x, "bo" x != 0 \
x x' + p y dot (- (x' y)/x) = 1 \
x' (x - (p y^2)/x) = 1
$

Jeżeli $x-(p y^2)/x = 0$, to dochodzimy do sprzeczności, czyli element odwrotny
nie istnieje.

Równanie $x-(p y^2)/x = 0 <=> x^2 = p y^2$ ma rozwiązania tylko dla $p >= 0$.
Wtedy $(RR^2, +, dot)$ na pewno nie jest ciałem. 
Pozostaje rozważyć $p<0$.

Rozważmy $h: RR^2 -> CC$ takie, że $ h((x, y)) = x + sqrt(-p) y i$. Wtedy
$forall (x_1, y_1), (x_2, y_2) in RR^2:$
$
h((x_1, y_1) + (x_2, y_2)) = h((x_1 + x_2, y_1 + y_2)) = (x_1 + x_2) +
sqrt(-p)(y_1 + y_2) i =  \ 
= x_1 + sqrt(-p) y_1 i + x_2 + sqrt(-p) y_2 i = h((x_1, y_1)) + h((x_2, y_2))
$

oraz
$
h((x_1, y_1) dot (x_2, y_2)) = h((x_1 x_2 + p y_1 y_2, x_1 y_2 + x_2 y_1)) = \
= (x_1 x_2 + p y_1 y_2) + sqrt(-p)(x_1 y_2 + x_2 y_1) i = \
= x_1 x_2 + i^2 sqrt(-p)^2 y_1 y_2 + sqrt(-p)x_1 y_2 i + sqrt(-p)x_2 y_1 i = \
= (x_1 + sqrt(-p) y_1 i)(x_2 + sqrt(-p) y_2 i) = h((x_1, y_1)) dot h((x_2, y_2))
$

Ponadto $h$ jest bijeckją, ponieważ jest różnowartościowa:
$
forall (x_1, y_1), (x_2, y_2) in RR^2:
h((x_1, y_1)) = h((x_2, y_2)) => x_1 + sqrt(-p) y_1 i = x_2 + sqrt(-p) y_2 i =>\
underbrace(x_1 - x_2, in RR) = underbrace((y_2 - y_1), in RR) underbrace(sqrt(-p) i, in CC) =>
x_1 - x_2 = y_2 - y_1 = 0 => (x_1, y_1) = (x_2, y_2)
$

oraz jest suriekcją:
$
forall z in CC: exists (x, y) in RR^2: h((x, y))=z
$
Niech $z = a + b i, a,b in RR$. Wtedy:
$
(x, y) = (a, b/sqrt(-p)) => h(x, y) = a + sqrt(-p) dot b/sqrt(-p) dot i = a + b
i = z
$

Z tego wynika, że dla $p<0$ struktura $(RR^2, +, dot)$ jest ciałem, ponieważ
jest izomorficzna do $(CC, +, dot)$, która też jest ciałem.
