#import "../../template.typ": *
#show: template 
#let Dmir = [#scale(x: -100%)[$D$]]
#let co = $compose$

#problem[
  Dane są relacje $R= (NN, "gr"R, NN), S = (NN, "gr"S, NN)$,
  gdzie:

  $"gr"R = {(1, 1), (1, 2), (3, 2), (3, 4), (3, 7), (2, 9), (5, 3)},$
  $"gr"S = {(1, 2), (1, 7), (2, 5), (2, 4), (7, 9), (4, 10)}$.
]

#subproblem[
  Znajdź dziedziny i przeciwdziedziny tych relacji.
]

$D_R = {1, 3, 2, 5}, Dmir_R = {1, 2, 4, 7, 9, 3}\
D_S = {1, 2, 7, 4}, Dmir_S = {2, 7, 5, 4, 9, 10}
$

#subproblem[
  Utwórz relacje
  $R co S, S co R, S^(-1), R^(-1), S^(-1) co R^(-1), 
  (S co R)^(-1), S^-1 co R$.
]

$"gr"(R co S) = {(1, 9), (2, 3)}$

$"gr"(S co R) = {(1, 2), (1, 7), (1, 5),(1,4), (3, 5), (3, 4), (3, 10), (3, 9)}$

$"gr"S^(-1) = {(2, 1), (7, 1), (5, 2), (4, 2), (9, 7), (10, 4)}$

$"gr"R^(-1) = {(1, 1), (2, 1), (3, 2), (4, 3), (7, 3), (9, 2), (3, 5)}$

$"gr"(S^(-1) co R^(-1)) = {(3, 2), (9, 1)}$

$"gr"(S co R)^(-1) = {(2, 1), (7, 1), (5, 1), (4, 1), (5, 3), (10, 3), (9, 3)}$

$"gr"(S^(-1) co R) = {(1, 1), (3, 1), (3, 2), (3, 1), (2, 7)}$

#subproblem[
  Sprawdź, że $S^(-1) co R^(-1) = (R co S)^(-1)$.
]

$"gr"(S^(-1) co R^(-1)) = {(3, 2), (9, 1)}$

$"gr"(R co S)^(-1) = {(9, 1), (3, 2)}$

#pagebreak()
#problem[
  Udowodnij, że dla dowolnej relacji $R$ zachodzi implikacja:

  $"gr"R^(-1) subset "gr"R => "gr"R^(-1) = "gr"R$
]

$(x, y) in "gr"R => (y, x) in "gr"R^(-1) => (y, x) in "gr"R => 
(x, y) in"gr"R^(-1)$

Pierwsza i trzecia implikacja wynikają z definicji relacji odwrotnej, \
a druga z tego, że $"gr"R^(-1) subset "gr"R$.

Skoro $(x, y) in "gr"R => (x, y) in "gr"R^(-1)$ to $"gr"R subset "gr"R^(-1)$.

$"gr"R subset "gr"R^(-1) and "gr"R^(-1) subset "gr"R => "gr"R^(-1) = "gr"R$ 

#problem[
  Wykaż, że dla relacji zwrotnej $R$, równość $R co R = R$ jest równoważna
  "przechodności" relacji $R$.
]

$R = (X, "gr"R, X)$

$R$ jest zwrotna $=> forall x in X: x R x$

#text(red)[Do czego wykorzystujemy zwrotność $R$?]

$R co R = (X, "gr"(R co R), X), "gr"(R co R) = 
{(x, z) in X^2: exists y in X: x R y and y R z}$

$x R y and y R z => (x, z) in "gr"(R co R)$

Ale $"gr"(R co R) = "gr"R$, więc $(x R y and y R z => x R z) <=> R$ jest
przechodnia. 

#problem[
  Wykaż, że dla zbioru $X$ z relacją $R$:

  $R$ jest relacją równoważności $<=> R^(-1)$ jest relacją równoważności.
]

+ #[ zwrotność:

$forall x in X:  x R x <=> x R^(-1) x$
]

+ #[ symetryczność:

$forall x, y in X: x R y => y R x$

$x R y <=> y R^(-1) x, thick y R x => x R^(-1) y$

$forall x, y in X: y R^(-1) x => x R^(-1) y$
]

+ #[ przechodność:

  $forall x, y, z in X: x R y and y R z => x R z$

  $x R y <=> y R^(-1) x, thick y R z => z R^(-1) y, thick x R z <=> z R^(-1) x$

  $forall x, y, z in X: z R^(-1) y and y R^(-1) x => z R^(-1) x$
]

#problem[
  Wykaż, że jeżeli relacja $R$ określona w zbiorze $X$ jest zwrotna i
  przechodnia, to $R inter R^(-1)$ określa relację równoważności.
]

$R inter R^(-1) = (X, "gr"(R inter R^(-1)), X),
"gr"(R inter R^(-1)) = {(x, y) in X^2: x R y and x R^(-1) y}$

+ #[ zwrotność:

$R$ jest zwrotna $ => forall x in X: x R x => x R^(-1) x$

$(x R x and x R^(-1) x) => (x, x) in "gr"(R
inter R^(-1))$
]

+ #[ symetryczność:

$x R y <=> y R^(-1) x and x R^(-1) y <=> y R x$

$forall x, y in X: (x R y and x R^(-1) y) => (y R^(-1) x and y R x) \
<=> (x, y) in "gr"(R inter R^(-1)) => (y, x) in "gr"(R inter R^(-1)) $
]

+ #[ przechodność:

$x, y, z in X$

$R$ jest przechodnie $=> x R y and y R z => x R z$

$R^(-1)$ jest przechodnie (*Zadanie 4*) $=>x R^(-1) y and y R^(-1)z=>x R^(-1) z$

$(x R y and x R^(-1) y) and (y R z and y R^(-1) z) => (x R z and y R^(-1) z)$
]

#problem[
  W zbiorze $NN^2$ dana jest relacja $R = (NN^2, "gr"R, NN^2)$ taka, że 
  $(a, b)R(c, d) <=> a+d = b+c$. Wykaż, że $R$ jest relacją równoważności i
  znajdź zbiór ilorazowy.
]

$(a, b), (c, d), (e, f) in NN^2$

$a + b = b + a => (a, b)R(a, b) => R$ jest zwrotna

$(a+d = b+c <=> c+b = d+a) => ((a, b)R(c, d) => (c, d)R(a, b)) => R$ jest
symetryczna 

$
  a+d&=b+c\
  c+f&=d+e\
a+d+c+f &= b+c+d+e \
a+f&=b+e
$

$((a,b)R(c,d) and (c,d)R(e,f) => (a,b)R(e,f)) => R$ jest przejściowa

$R$ jest zwrotna, symetryczna i przejściowa $=> R$ jest relacją równoważności.

Zbiór ilorazowy $X slash R = {[(a, b)]: (a, b) in NN^2}$

$(a, b)R(c, d) <=> a+d=b+c <=> a-b = c-d$

$[(r, 0)] = {(a, b) in NN^2: a-b = r}, thick r in NN$

$[(0, r)] = {(a, b) in NN^2: a-b = -r}, thick r in NN$

$X slash R = {[(r, 0)]: r in NN} union {[(0, r)]: r in NN}$

$X slash R = {{(a, b) in NN^2: abs(a-b)=r}: r in NN}$

#problem[
  Niech $k in NN_+$. W zbiorze $ZZ$ wprowadzamy relację $m equiv n(mod k)
  <=> k|(m-n)$. Wykaż, że relacja ta jest równoważnością. Zbiór ilorazowy tej
  relacji będziey oznaczać przez $ZZ slash k$. 
]

+ #[ zwrotność:
  $forall x in ZZ: x equiv x (mod k)$

  $k|(x - x) <=> k|0$
]

+ #[ symetryczność:
  $forall x, y in ZZ: x equiv y (mod k) => y equiv x (mod k)$

  $k|(x - y) => k|-1 dot (x - y) => k|(y-x)$
]

+ #[ przechodność:
  $forall x, y, z in ZZ: (x equiv y (mod k) and y equiv z (mod k)) => x equiv z
(mod k)$

  $k|(x-y) and k|(y-z) => k|((x-y)+(y-z)) => k|(x-z)$
]

#subproblem[
  Przyjmując $k=7$ podaj: $[2], [5], [-5]$;
]

$[x] = {y in ZZ: x equiv y (mod 7)}$

$[2] = {7n + 2, n in ZZ}$

$[5] = {7n + 5, n in ZZ}$

$[-5] = {7n - 5, n in ZZ} = [2]$

#subproblem[
  Podaj $ZZ slash 7$.
]

$ZZ slash 7 = {{7n + m, n in NN}, m = 0, 1, ..., 6}$

#problem[
  Niech $p$ będzie elementem zbioru $X$. W zbiorze $2^X$ podzbiorów zbioru $X$
  określamy relację $R = (2^X, "gr"R, 2^X)$:

  $
    "gr"R := {(A, B) in 2^X times 2^X: (A = B) or (p in.not A union B)}
  $

  Czy $R$ jest relacją równoważności?
]

+ #[ zwrotność:

  $forall A in 2^X: A = A => A R A$
]

+ #[ symetryczność:

  $forall A, B in 2^X: (A = B) or (p in.not A union B) => 
(B = A) or (p in.not B union A)$
]

+ #[ przechodność:

$A, B, C in 2^X$

$((A = B) or (p in.not A union B)) and ((B = C) or (p in.not B union C))$

$
(A = B) &or (B = C) &=>& (A = C) &=> A R C \
(A = B) &or (p in.not B union C) &=>& (p in.not A union C) &=> A R C \
(p in.not A union B) &or (B = C) &=>& (p in.not A union C)&=>A R C \
(p in.not A union B) &or (p in.not B union C) &=>& (p in.not A union C)&=>A R C \
$
]

$R$ jest relacją równoważności.

#problem[
  Dane jest odwzorowanie $f : RR -> RR$ takie, że $f(x) = x^3 - 3x + 2$.

  Niech $S = (RR, "gr"S, RR)$ będzie relacją taką, że $"gr"S = {(x, y) : f(x) =
  f(y)}$.
]

#subproblem[
 Wykaż, że $S$ jest relacją równoważności.
]

+ #[ zwrotność:

$forall x in RR: f(x) = f(x)$
]

+ #[ symetryczność:

$forall x, y in RR: f(x) = f(y) => f(y) = f(x)$
]

+ #[ przechodność:

$forall x, y, z in RR: (f(x) = f(y) and f(y) = f(z)) => f(x) = f(z)$
]

#subproblem[
  Niech $a in RR$. Określ w zależności od $a$ liczebność klasy równoważności
  $[a]$.
]

$f'(x) = 3x^2 - 3 = 3(x-1)(x+1)$

$f(-1) = (-1)^3 - 3(-1) + 2 = 4$

$f(1) = 1^3 - 3 dot 1 + 2 = 0$

#image("images/im15.png", width: 30%)

$
a &in (-infinity, 1) union (4, +infinity) &<=> abs([a]) = 1 \
a &in {1, 4} &<=> abs([a]) = 2 \
a &in (1, 4) &<=> abs([a]) = 3 \
$
