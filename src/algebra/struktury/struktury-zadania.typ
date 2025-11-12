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

+ #[działanie wewnętrzne: $forall x, y in RR: x + y + x y in RR$]

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

Element neutralny $e=0$ działa także dla $x=-1: x -1 - x= -1 = -1 + x -x$
]

+ #[element symetryczny: $forall x in RR: exists x' in RR: 
x co x' = 0 = x' co x$
$

x + x' + x x' = x' + x + x' x = 0 \
x'(1 + x) = -x \
x' = (-x)/(1+x)", jeśli" x != -1\
$
Dla $x=-1:$
$
1 + x' - x' = 0 \
1 = 0 \
"sprzeczność"
$
]

Czyli $(RR, co)$ nie jest grupą.

Żeby sprawdzić czy $(RR without {-1}, co)$ jest grupą, należy sprawdzić czy $co$
jest wewnętrzne w $RR without {-1}$ oraz czy elementem symetrycznym do żadnego
$x$ nie jest $-1$.

+ #[działanie wewnętrzne: $forall x, y in RR without {-1}:$
$
x + y + x y &!= -1 \
x + y + x y + 1 & != 0 \
(x + 1)(y + 1) &!= 0 \
x != -1 and y != -1
$
]

+ #[element symetryczny: $forall x in RR without {-1}:$
$
x' = (-x)/(1 + x) &!= -1 \
-x &!= -1 - x \
0 &!= -1
$
]
Wszystkie przekształcenia były równoważne, czyli $(RR without {-1}, co)$ jest
grupą.


#problem[
  W zbiorze liczb całkowitych określamy działanie $x co y := x + y + 2$. Czy
  $(ZZ, co)$ jest grupą?
]

+ #[działanie wewnętrzne: $forall x, y in ZZ: x + y + 2 in ZZ$]

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

$x, y, z in QQ$

+ #[ działanie wewnętrzne: $x = a/b, y = c/d, a,b,c,d in ZZ, b, c != 0$
$
x + y = a/b + c/d = (a d + c b)/(b d) in QQ \
x y = a / b dot c / d = (a c)/(b d) in QQ
$
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
  x dot 1/x = 1 = 1/x dot x, x != 0 \
  x = 0 => 0 dot x' = 1 "sprzeczność"
$
]

$(QQ, +)$ jest grupą, a $(QQ, dot)$ nie jest.

#subproblem[
  liczby niewymierne ze względu na dodawanie, mnożenie
]

+ #[ działanie wewnętrzne:

$forall x, y in II QQ: x + y in II QQ$ \ kontrprzykład: $sqrt(2) + (-sqrt(2)) =
0 in.not II QQ$

$forall x, y in II QQ: x dot y in II QQ$ \ kontrprzykład: $sqrt(2) dot sqrt(2) =
2 in.not II QQ$
]

$(QQ, +)$ i $(QQ, dot)$ nie są grupami.

#subproblem[
  liczby zespolone o module równym $1$ ze względu na mnożenie
]

+ #[ działanie wewnętrzne:$z_1, z_2 in CC, abs(z_1) = abs(z_2) = 1$
$
z_1 dot z_2 in CC \
abs(z_1 dot z_2) = abs(z_1) dot abs(z_2) = 1 dot 1 = 1
$
]

+ #[ łączność:
$
  (e^(i phi_x) dot e^(i phi_y)) dot e^(i phi_z) = e^(i(phi_x + phi_y + phi_z)) =
e^(i phi_x) dot (e^(i phi_y) dot e^(i phi_z))
$
]

+ #[ element neutralny:
$
forall z in CC: z dot 1 = z = 1 dot z
$
]

+ #[ element symetryczny: $z in CC, abs(z) = 1$
$
overline(z) in CC, abs(overline(z)) = 1 \
z dot overline(z) = abs(z)^2 = 1
$
]

$(X, dot)$ jest grupą.

#subproblem[
  liczby zespolone o module równym $1$ ze względu na następujące działanie: $z_1
  co z_2 = abs(z_1) z_2$
]

$z_1, z_2, z_3 in CC, abs(z_1) = abs(z_2) = abs(z_3) = 1$ \
$z_1 co z_2 = abs(z_1) z_2 = 1 dot z_2 = z_2$

+ #[ działanie wewnętrzne: $abs(abs(z_1) z_2) = abs(1 dot z_2) = 1$]

+ #[ łączność: $abs(abs(z_1) z_2) z_3 = abs(z_2) z_3 = z_3 = 
abs(z_1) abs(z_2) z_3$ ]

+ #[ element neutralny: $|z|e = z => e = z$ \ Nie ma jednego elementu
  neutralnego. ]

Nie jest to grupa.

#subproblem[
  liczby całkowite ze względu na odejmowanie
]

+ #[ łączność: $(x - y) - z = x - (y - z)$ \ Kontrprzykład: $x=0,y=0,z=1:
(0 - 0) - 1 != 0 - (0 - 1)$
]

$(ZZ, -)$ nie jest grupą.

#problem[
  Niech $E_n$ będzie zbiorem wszystkich pierwiastków $n$-tego stopnia (w $CC$) z
  jedności. Udowodnij, że $(E_n, dot)$ jest grupą.
]

$E_n = {e^(i (2k pi)/n): k = 0, ..., n-1}$

+ #[ działanie wewnętrzne: 
$
z in E_n <=> z^n = 1 \
z_1, z_2 in E_n\
(z_1 dot z_2)^n = z_1^n dot z_2^n = 1 dot 1 = 1 \
z_1 dot z_2 in E_n
$]

+ #[ łączność: Mnożenie jest łączne w $CC$, a więc także w $E_n subset CC$.
]

+ #[ element neutralny: $z dot 1 = 1 dot z = z$
]

+ #[ element symetryczny: $e^(i (2 k pi)/n) dot e^(i (2 (n-k) pi)/n) = e^(i (2 n
  pi)/n) = e^(i dot 2pi) = e^(i dot 0) = 1$]

#problem[
  Niech $D$ będzie zbiorem wszystkich całkowitych potęg liczby $2$. Sprawdź (i
  uzasadnij) czy struktura $(D, co)$, gdzie $a co b := (a dot b)/2$, jest grupą.
]

$a, b, c in ZZ$

+ #[ działanie wewnętrzne: 
$
(2^a co 2^b) = (2^a dot 2^b)/2 = 2^(a + b)/2 = 2^(a+b-1) in D
$]
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

+ Oczywistym jest, że $triangle$ jest działaniem wewnętrznym w $2^X$.

+ #[łączność:

#columns(4)[
#image("images/im5.png")
#colbreak()
#image("images/im2.png")
#colbreak()
#image("images/im3.png")
#colbreak()
#image("images/im4.png")
#colbreak()
]

$(A triangle B) triangle C = ((a union e) union (b union d)) triangle (c union e
union d union g) = (a union b) union (c union g) = a union b union c union g$

$A triangle (B triangle C) = (a union e union f union g) triangle ((b union f)
union (c union e)) = (a union g) union (b union c) = a union b union c union g$
]

+ #[element neutralny: $emptyset in 2^X$
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

Musimy pokazać przemienność $*$, czyli $forall a, b in G: a * b = b * a$.

Ponieważ $(G, *)$ jest grupą, a $e$ elementem neutralnym, to
$forall a in G: exists a' in G: a * a' = e$

Ponadto, z faktu, że $a * a = e$ mamy:
$
e = a * a' &= a * a \
a' * (a * a') &= a' * (a * a) \
(a' * a) * a' &= (a' * a) * a " ("*"jest łączne)" \
e * a' &= e * a \
a' &= a
$

Z tego wynika, że:
$
  a*b = b*a <=> (a * b)' = b * a = b' * a'
$

Czyli wystarczy pokazać, że $(a * b)' = b' * a'$:
$
(a * b) * (a * b)' &= e\
(b' * a') * (a * b) * (a * b)' &= (b' * a') * e \
b' * (a' * a) * b * (a * b)' &= b' * (a' * e) \
b' * e * b * (a * b)' &= b' * a' \
b' * b * (a * b)' &= b' * a' \
e * (a * b)' &= b' * a' \
(a * b)' &= b' * a'
$

Co kończy dowód.

#problem[
  Czy następujące zbiory są ciałami ze względu na dodawanie i mnożenie:
]

#subproblem[
  $A={a + b root(3, 5): a, b in QQ}$
]

$(a_1 + b_1 root(3, 5))(a_2 + b_2 root(3, 5)) = a_1 a_2 + (a_1 b_2 + a_2 b_1)
root(3, 5) + b_1 b_2 root(3, 5)^2$

_Hipoteza:_ 
$
root(3, 5)^2 &= a + b root(3, 5), a, b in QQ \
a &= root(3, 5)^2 - b root(3, 5) \
a &= root(3, 5)(root(3, 5) - b) \
a (root(3, 5) + b) &= root(3, 5)(root(3, 5)^2 - b^2) \
a (root(3, 5) + b) &= 5 - b^2 root(3, 5) \
a root(3, 5) + a b &= 5 - b^2 root(3, 5) \
root(3, 5) (a + b^2) &= 5 - a b \
root(3, 5) &= (5 - a b)/(a + b^2) in QQ "sprzeczność"
$

Jeżeli $b_1 != 0 and b_2 != 0$ to $b_1 b_2 root(3, 5)^2 in.not A => (a_1 + b_1
root(3, 5))(a_2 + b_2 root(3, 5)) in.not A$

Mnożenie nie jest wewnętrzne w $A$, więc $(A, +, dot)$ nie może być ciałem.

#subproblem[
  liczby wymierne, które nie są całkowite
]

$1/2 + 1/2 = 1 in ZZ$

Dodawanie nie jest wewnętrzne, więc nie jest to ciało.

#subproblem[
  zbiór $A$ liczb zespolonych postaci $a + i b sqrt(2), a, b in QQ$
]

$a_1 + i b_1 sqrt(2) + a_2 + i b_2 sqrt(2) = (a_1 + b_2) + (b_1 + b_2) i
sqrt(2) in A$

$(a_1 + i b_1 sqrt(2))(a_2 + i b_2 sqrt(2)) = (a_1 a_2 -2 b_1 b_2) + (a_1 b_2 +
b_1 a_2) i sqrt(2) in A$

Dodawanie i mnożenie są działaniami wewnętrznymi w $A$. Ponieważ $A subset CC$,
to są też łączne \ i przemienne, a mnożenie jest rodzielne względem dodawania:
$(z_1 + z_2) dot z_3 = z_1 z_3 + z_2 z_3$.

Istnieją elementy neutralne względem dodawania ($0 = 0 + 0 sqrt(2)$) 
i mnożenia ($1 = 1 + 0 sqrt(2)$).

Dla każdego $z in A$ istnieje element przeciwny:

$a + i b sqrt(2) + z' = 0 => z' = -a - i b sqrt(2) in A$

Dla każdego $z in A\{0}$ istnieje element odwrotny:

$(a + i b sqrt(2)) dot z' = 1 => z' = 1/(a + i b sqrt(2)) 
= (a - i b sqrt(2))/(a^2 + 2b^2) = a/(a^2 + 2b^2) + i (-b)/(a^2 + 2b^2) sqrt(2) in
A$

$(A, +, dot)$ jest ciałem.

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

Dodawanie i mnożenie są wewnętrzne, łączne oraz przemienne w $ZZ slash 12$ co
jest oczywiste.

Elementami neutralnymi są $[0]$ i $[1]$: $[a] + [0] = [a + 0] = 0$, 
$[a] dot [1] = [a dot 1] = [a]$.

Każdy element ma swój element przeciwny: $[a] + [12 - a] = [12] = [0]$.

Zachodzi rozdzielność mnożenia względem dodawania (obustronna, bo mnożenie jest
przemienne):

$([a] + [b]) dot [c] = [a + b] dot [c] = [(a+b)dot c] = [a dot c + b dot c] = \
[a dot c] + [b dot c] = ([a] dot [c]) + ([b] dot [c])$

Z tego wynika, że $(ZZ slash 12, +, dot)$ jest pierścieniem przemiennym z
jednością.

Dzielniki zera: $[3] dot [4] = [12] = [0]$, $[2] dot [6] = [12] = [0]$

#subproblem[
  Wykaż, że $(ZZ slash 7, plus, dot)$ jest pierścieniem całkowitym.]

W analogiczny sposób co w *10.a* pokazujemy, że $ZZ slash 7, +, dot)$ jest
pierścieniem przemiennym z jednością.

_Hipoteza:_  \
Istnieją dzielniki zera:
$[a], [b] in ZZ slash 7, [a], [b] != 0 and [a] dot [b] = [0]$ 

$a = 7k + r_1, k in ZZ, r_1 in {1, 2, 3, 4, 5, 6}$ \
$b = 7l + r_2, l in ZZ, r_2 in {1, 2, 3, 4, 5, 6}$

$[a] dot [b] = [a dot b] = [0] <=> a dot b = 7m, m in ZZ$

$(7k + r_1)(7l + r_2) =  underbrace(49 k l +7 k r_2 + 7 k r_1, 
  "podzielne przez 7") + r_1 r_2 => 7|r_1 r_2$ sprzeczność

Skoro nie ma dzielników zera to $(ZZ slash 7, +, dot)$ jest pierścieniem
całkowitym.

#problem[

]

#subproblem[
  Wykaż, że zbiór $A={x = a + b sqrt(3): a, b in ZZ}$ z działaniami dodawania i
  mnożenia jest pierścieniem.
]

Dodawanie i mnożenie są działaniami wewnętrznymi w $A$:

$(a_1 + b_1 sqrt(3)) + (a_2 + b_2 sqrt(3)) = (a_1 + a_2) + (b_1 + b_2) sqrt(3)$

$(a_1 + b_1 sqrt(3))(a_2 + b_2 sqrt(3)) = (a_1 a_2 + 3 b_1 b_2) + (a_1 b_2 +
a_2 b_1) sqrt(3)$

Dodawanie i mnożenie są łączne w $ZZ$, a także zachodzi obustronna rozdzielność
mnożenia względem dodawania. $A subset ZZ$, więc tam również.

Względem dodawania istnieją elementy neutralny ($0 = 0 + 0 sqrt(3)$) i
symetryczne ($-a - b sqrt(3)$).

Z tego wynika, że $(A, +, dot)$ jest pierścieniem.

#subproblem[
  Wykaż, że zbiór $B={x=a + b sqrt(3), a, b in QQ}$ z działaniami dodawania i
  mnożenia jest ciałem.
]

Analogicznie do *11.a* pokazujemy, ze $(B, +, dot)$ jest pierścieniem.

Istnieje element neutralny względem mnożenia ($1 = 1 + 0 sqrt(3)$).

Dla każdego $x=a + b sqrt(3) != 0$ istnieje element odwrotny $x'$: 

$(a + b sqrt(3)) dot x' = 1 => x' = 1/(a + b sqrt(3)) = (a - b sqrt(3))/(a^2 -
3b^2) = a/(a^2 - 3b^2) - b/(a^2 -3b^2) sqrt(3)$.


Z tego wynika, że $(B, +, dot)$ jest ciałem.

#subproblem[
  Udowodnij, że odwzorowanie $f: x = a + b sqrt(3) -> tilde(x) = a - b sqrt(3)$
  jest automorfizmem pierścienia $(A, +, dot)$ w siebie.
]

Niech $x, y in A, x = a_1 + b_1 sqrt(3), y = a_2 + b_2 sqrt(3)$

$
f(x + y)&=^? f(x) + f(y) \
f(a_1 + b_1 sqrt(3) + a_2 + b_2 sqrt(3)) &= a_1 + a_2 - (b_1 + b_2) sqrt(3) \
f(a_1 + b_1 sqrt(3)) + f(a_2 + b_2 sqrt(3)) &= a_1 - b_1 sqrt(3) + a_2  - b_1 sqrt(3) \
$
$
f(x dot y)&=^? f(x) dot f(y) \
f((a_1 + b_1 sqrt(3))(a_2 + b_2 sqrt(3))) &= (a_1 a_2 + 3 b_1 b_2) - (a_1 b_2 +
a_2 b_1) sqrt(3) \
f(a_1 + b_1 sqrt(3)) dot f(a_2 + b_2 sqrt(3)) &= (a_1 - b_1 sqrt(3))(a_2  - b_1
sqrt(3)) \
&= (a_1 a_2 + 3 b_1 b_2) - (a_1 b_2 + a_2 b_1) sqrt(3)\
$

Z tego wynika, że $f$ jest homomorfizmem $(A, +, dot)$ w siebie.

$f: A -> A$ jest bijekcją, więc $f$ jest izomorfizmem.

Z tych dwóch faktów wynika, że $f$ jest automorfizmem.

#problem[
  Dla danego zbioru $X != emptyset$, definiujemy strukturę $(2^X, triangle,
  inter)$, gdzie "$triangle$" oznacza różnicę symetryczną a "$inter$" - 
  przecięcie zbiorów. Sprawdź czy ta struktura jest:
]

#subproblem[
  pierścieniem?
]

W zadaniu *7* pokazaliśmy, że $(2^X, triangle)$ to grupa abelowa.

#columns(4)[
#image("images/im5.png")
#colbreak()
#image("images/im6.png")
#colbreak()
#image("images/im7.png")
#colbreak()
#image("images/im8.png")
#colbreak()
]

$A, B, C in 2^X$ \

$inter$ jest łączne:

$(A inter B) inter C = (f union g) inter (c union d union e union g) = g$ \
$A inter (B inter C) = (a union e union f union g) inter (d union g) = g$

$inter$ jest rozdzielnie względem $triangle$:

$(A triangle B) inter C = (a union e union b union d) inter (c union d union e
union g) = d union e$

$(A inter C) triangle (B inter C) = (e union g) triangle (d union g) = e union d
= d union e$

Analogicznie pokazujemy rozdzielność lewostronną.

Z tego wynika, że $(2^X, triangle, inter)$ jest pierścieniem.

#subproblem[
  pierścieniem przemiennym?
]
Tak, ponieważ $inter$ jest
przemienne: $A inter B = B inter A$.

#subproblem[
  pierścieniem z jednością?
]

$A in 2^X$

$A inter bold(1) = bold(1) inter A = A => bold(1) = emptyset in 2^X$

#subproblem[
  pierścieniem z całkowitym?
]

Pierścień całkowity to pierścień przemienny, z jednością i bez dzielników zera.

$bold(0) = emptyset$, bo $A triangle emptyset = (A without emptyset)
union (emptyset without A) = A$

Dla dowolnych dwóch niepustych, rozłącznych $A in 2^X$ i $B in 2^X: A inter B =
emptyset$, czyli $A$ i $B$ są dzielnikami zera.

Gdy $X$ jest zbiorem jednoelementowym nie ma dzielników zera.

#subproblem[
  ciałem?
]

Dla dowolnego $A in 2^X, A != emptyset$ istnieje $A^(-1): A inter A^(-1) =
bold(1) = emptyset$

$A^(-1) = X without A$, bo $A inter A^(-1) = A inter (X without A) = emptyset$

$(2^X, triangle, inter)$ jest ciałem.

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
