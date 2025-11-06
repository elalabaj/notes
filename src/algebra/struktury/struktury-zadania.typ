#import "../../../template.typ": *
#show: template

#let co = math.class("relation", $circle.small$)

#problem[
  Sprawdź jakie własności mają w $ZZ$ następujące działania:
]

$a, b, c in ZZ$

#subproblem[
  $a co b = a - b$
]

#set math.cases(reverse: true)

+ #strike[łączność]: $(a - b) - c != a - (b - c)$
+ #strike[element neutralny]: $exists e in ZZ: a - e = a = e - a => -e=0=e-2a$
  sprzeczność
+ #strike[element symetryczny]: nie ma elementu neutralnego
+ #strike[przemienność]: $a - b = b - a => a = b$

#subproblem[
  $a co b = a^2 + b^2$
]

+ łączność: $(a^2 + b^2) + c^2 = a^2 + (b^2 + c^2)$
+ #strike[element neutralny]: $exists e in ZZ: a^2 + e^2 = a = e^2 + a^2$
  sprzeczność
+ #strike[element symetryczny]: nie ma elementu neutralnego
+ przemienność: $a^2 + b^2 = b^2 + a^2$

#subproblem[
  $a co b = 2(a+b)$
]

+ #strike[łączność]: $2(2(a+b)+c) = 2(a + 2(b+c))$ \ $4a+4b+2c = 2a+4b+4c$ sprzeczność
+ #strike[element neutralny]: $exists e in ZZ: 2(a+e) = a = 2(e+a) => 2e=-a$
  sprzeczność
+ #strike[element symetryczny]: nie ma elementu neutralnego 
+ przemienność: $2(a + b) = 2(b+a)$

#subproblem[
  $a co b = - a-b$
]

+ #strike[łączność]: $-(-a - b)-c = -a - (-b -c)$ sprzeczność
+ #strike[element neutralny]: $exists e in ZZ: -a-e = a = -e-a => e = -2a$ sprzeczność
+ #strike[element symetryczny]: nie ma elementu neutralnego
+ przemienność: $-a-b = -b-a$

#problem[
  W zbiorze liczb rzeczywistych określamy działanie $x co y := x+y+x y$. Czy
  $(RR, co)$ jest grupą? Czy jest grupą para $(RR without {-1}, co)$?
]

+ #[łączność: $forall x, y, z in RR: (x co y) co z = x co (y co z)$
$
(x + y + x y) + z + (x + y + x y)z &= x + (y + z + y z) + x ( y + z + y z)\
x + y + x y + z + x z + y z + x y z &= x + y + z + y z + x y + x z + x y z\
$
]

+ #[element neutralny: $exists e in RR: forall x in RR: x co e = x = e co x$
$
x + e + x e &= x = e + x + e x\
e + x e &= 0 \
e (1 + x) &= 0 \
e = 0 &or x = -1
$
]
  W $(RR, co)$ nie ma elementu neutralnego, czyli nie jest to grupa, ale w $(RR
without {-1}, co)$ jest element neutralny ($e = 0$).

+ #[element symetryczny: $forall x in RR without {-1}: exists x' in RR without
  {-1}: x co x' = 0 = x' co x$
$
x + x' + x x' &= 0 &= x' + x + x' x \
x'(1 + x) &= -x \
x' &= (-x)/(1+x)\
$
]

$(RR without {-1}, co)$ jest grupą.

#problem[
  W zbiorze liczb całkowitych określamy działanie $x co y := x + y + 2$. Czy
  $(ZZ, co)$ jest grupą?
]

+ #[ łączność: $forall x, y, z in ZZ: (x co y) co z = x co (y co z)$
$
(x + y + 2) + z + 2 &= x + (y + z + 2) + 2
$
]

+ #[ element neutralny: $exists e in ZZ: forall x in ZZ: x co e = x = e co x$
$
x + e + 2 &= x = e + x + 2\
e &= -2
$
]

+ #[ element symetryczny: $forall x in ZZ: exists x' in ZZ: x co x' = -2 = x' co
  x$
$
  x + x' + 2 &= -2 = x' + x + 2 \
 x' &= -x - 4
$
]

$(ZZ, co)$ jest grupą.

#problem[
  Które z następujących zbiorów liczb są grupami:
]

#subproblem[
  liczby wymierne ze względu na dodawanie, mnożenie
]

+ #[ łączność:
$
  (x + y) + z = x + y + z = x + (y + z) \
  (x y) z = x y z = x (y z)
$
]

+ #[ element neutralny:
$
  x + 0 = x = 0 + x \
  x dot 1 = x = 1 dot x
$
]

+ #[ element symetryczny:
$
  x + (-x) = 0 = (-x) + x \
  x dot 1/x = 1 = 1/x dot x, x != 0
$
]

$(QQ, +)$ jest grupą. $(QQ, dot)$ nie jest, ale $(QQ without{0}, dot)$ jest.

#subproblem[
  liczby niewymierne ze względu na dodawanie, mnożenie
]

+ #[ łączność: analogicznie do *4.a)*]

+ #[ element neutralny:
$
 x + e = x => e = 0 in.not II QQ \
 x dot e = x => x = 0 or e = 1 in.not II QQ
$
]

$(QQ, +)$ i $(QQ, dot)$ nie są grupami.

#subproblem[
  liczby zespolone o module równym $1$ ze względu na mnożenie
]

$(X, dot)$, gdzie $X = {e^(i phi): phi in angle.l 0, 2 pi)}$

+ #[ łączność:
$
  (e^(i phi_x) dot e^(i phi_y)) dot e^(i phi_z) = e^(i(phi_x + phi_y + phi_z)) =
e^(i phi_x) dot (e^(i phi_y) dot e^(i phi_z))
$
]

+ #[ element neutralny:
$
  e^(i phi) dot e^(i dot 0) &= dot e^(i phi) = e^(i dot 0) dot e^(i phi) \
$
]

+ #[ element symetryczny:
$
  e^(i phi) dot e^(- i phi) &= e^(i dot 0) = e^(- i phi) dot e^(i phi)
$
]

$(X, dot)$ jest grupą.

#subproblem[
  liczby zespolone o module równym $1$ ze względu na następujące działanie: $z_1
  co z_2 = abs(z_1) z_2$
]

$z_1 co z_2 = abs(z_1) z_2 = 1 dot z_2 = z_2$

+ #[ łączność: $(x co y) co z = y co z = z = x co (y co z)$ ]

+ #[ element neutralny: $x co e = e != e co x = x$ ]

$(X, co)$ nie jest grupą.

#subproblem[
  liczby całkowite ze względu na odejmowanie
]

+ #[ łączność: $(x - y) - z != x - (y - z)$]

$(ZZ, -)$ nie jest grupą.

#problem[
  Niech $E_n$ będzie zbiorem wszystkich pierwiastków $n$-tego stopnia (w $CC$) z
  jedności. Udowodnij, że $(E_n, dot)$ jest grupą.
]

$E_n = {e^(i (2k pi)/n): k = 0, ..., n-1}$

+ #[ łączność: $forall x, y, z in E_n: (x dot y) dot z = x dot y dot z = 
x dot (y dot z)$, bo $x, y, z in CC$
]

+ #[ element neutralny: $e^(i (2 k pi)/n) dot e^(i (2 dot 0 dot pi)/n) = e^(i (2 k
  pi)/n) dot 1 = e^(i (2 k pi)/n)$
]

+ #[ element symetryczny: $e^(i (2 k pi)/n) dot e^(i (2 (n-k) pi)/n) = e^(i (2 n
  pi)/n) = e^(i dot 2pi) = e^(i dot 0) = 1$]

#problem[
  Niech $D$ będzie zbiorem wszystkich całkowitych potęg liczby $2$. Sprawdź (i
  uzasadnij) czy struktura $(D, co)$, gdzie $a co b := (a dot b)/2$, jest grupą.
]

$a, b, c in ZZ$
+ #[ łączność: 
$
(2^a co 2^b) co 2^c = ((2^a dot 2^b)/2 dot 2^c)/2 = 2^(a+b+c-2) = 
(2^a dot (2^b dot 2^c)/2)/2 = 2^a co (2^b co 2^c)
$
]

+ #[ element neutralny:
$
2^a co 2^1 = (2^a dot 2^1)/2 = 2^a = (2^1 dot 2^a)/2 = 2^1 co 2^a
$
]

+ #[ element symetryczny:
$
  2^a co 2^(-a+2) = (2^a dot 2^(-a+2))/2 = (2^2)/2 = 2^1
$
]

#problem[
  Niech $triangle$ oznacza różnicę symetryczną, tj., dla dowolnych zbiorów $A$ i
  $B$, \ $A triangle B := (A without B) union (B without A)$. Sprawdź, czy dla
  dowolnie ustalonego zbioru $X != emptyset$, para $(2^X, triangle)$ jest grupą
  abelową.
]

+ #[łączność:
#image("images/im1.png")
]

+ #[element neutralny: ${} in 2^X$
$
  forall A in 2^X: A triangle emptyset = (A without emptyset) union (emptyset without A) = A union
emptyset = A = emptyset triangle A
$ 
]

+ #[ element symetryczny do $A in 2^X$: $A$
$
A triangle A = (A without A) union (A without A) = emptyset union emptyset = emptyset
$
]

+ #[ przemienność:
$
  A triangle B = (A without B) union (B without A) = (B without A) union (A
without B) = B triangle A
$
]


#problem[
  Niech $(G, *)$ będzie grupą z elementem neutralnym $e$ taką, że: $a * a = e$
  dla każdego $a in G$. Wykaż, że $(G, *)$ jest grupą abelową.
]

Niech $a, b in G$

$
(a * b) * (a * b)' &= e \
a' * (a * b) * (a * b)'&= a' * e \
(a' * a) * b * (a * b)' &= a' \
e * b * (a * b)' &= a' \
b * (a * b)' &= a' \
b' * b * (a * b)' &= b' * a' \
e * (a * b)' &= b' * a' \
(a * b)' &= b' * a' \
$

Ponadto, z faktu, że $a * a = e$ mamy:
$
e = a * a' &= a * a \
a' * a * a' &= a' * a * a \
e * a' &= e * a \
a' &= a
$

Czyli: $(a * b)' = a * b = b' * a' = b * a$

#problem[
  Czy następujące zbiory są ciałami ze względu na dodawanie i mnożenie:
]

#subproblem[
  ${a + b root(3, 5): a, b in QQ}$
]

#subproblem[
  liczby wymierne, które nie są całkowite
]

#subproblem[
  zbiór liczb zespolonych postaci $a + i b sqrt(2), a, b in QQ$
]

#problem[
  W zbiorze $ZZ slash k$ (tj. zbiorze ilorazowym ze względu na relację
  przystawania modulo $k$) określamy działania $+$, $dot$ następująco:
  $
    [a] + [b] = [a + b], thick [a] dot [b] = [a dot b].
  $
]

#subproblem[
  Sprawdź, czy $(ZZ slash 12, +, dot)$ jest pierścieniem przemiennym z jedynką
  ale z dzielnikami zera.
]

#subproblem[
  Wykaż, że $(ZZ slash 7, plus, dot)$ jest pierścieniem całkowitym.]

#problem[

]

#subproblem[
  Wykaż, że zbiór $A={x = a + b sqrt(3): a, b in ZZ}$ z działaniami dodawania i
  mnożenia jest pierścieniem.
]

#subproblem[
  Wykaż, że zbiór $B={x=a + b sqrt(3), a, b in QQ}$ z działaniami dodawania i
  mnożenia jest ciałem.
]

#subproblem[
  Udowodnij, że odwzorowanie $f: x = a + b sqrt(3) -> tilde(x) = a - b sqrt(3)$
  jest automorfizmem pierścienia $(A, +, dot)$ w siebie.
]

#problem[
  Dla danego zbioru $X != emptyset$, definiujemy strukturę $(2^X, triangle,
  inter)$, gdzie "$triangle$" oznacza różnicę symetryczną a "$inter$" - 
  przecięcie zbiorów. Sprawdź czy ta struktura jest:
]

#subproblem[
  pierścieniem?
]

#subproblem[
  pierścieniem przemiennym?
]

#subproblem[
  pierścieniem z jednością?
]

#subproblem[
  pierścieniem z całkowitym?
]

#subproblem[
  ciałem?
]

#problem[
  W zbiorze $RR^2$ wprowadzamy działania: $(x_1, y_1) + (x_2, y_2) = (x_1 + x_2,
  y_1 + y_2)$, \ $(x_1, y_1) dot (x_2, y_2) = (x_1 x_2 + p y_1 y_2,
  x_1 y_2 + x_2 y_1)$. Dla jakich $p in RR$ struktura $(RR^2, +, dot)$ jest
  ciałem? 
]

#problem[

]

#subproblem[
  Wykaż, że zbiór $A={x=m+n i: m, n in ZZ}$ jest grupą ze względu na dodawanie.
]

#subproblem[
  Wykaż, że zbiór $B={x = 2^n 3^m: m, n in ZZ}$ jest grupą ze względu na
  mnożenie.
]

#subproblem[
  Udowodnij, że $A$ i $B$ są izomorficzne.
]
