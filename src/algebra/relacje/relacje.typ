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

#problem[
  Wykaż, że jeżeli $R$ jest relacją porządkującą na zbiorze $X$, to relacja
  $R^(-1)$ jest również relacją porządkującą na zbiorze $X$.
]

+ #[ zwrotność:

$forall x in X:  x R x => x R^(-1) x$
]

+ #[ antysymetryczność:

$forall x, y in X: (x R^(-1) y and y R^(-1) x) => (y R x and x R y) => x = y$
]

+ #[ przechodność:

$forall x, y, z in X: (x R^(-1) y and y R^(-1) z) => (y R x and z R y)
=> (z R y and y R x) => z R x => x R^(-1) z$
]

#problem[
  Niech $(X, prec.eq)$ będzie zbiorem uporządkowanym, $A subset X$. Udowodnij,
  że jeżeli zbiór $A$ ma element najmniejszy (największy), to ten element jest
  również kresem dolnym (odp. górnym) zbioru $A$.
]

$overline(m)  in A$ jest elementem najmniejszym $A <=> forall x in A: overline(m)
prec.eq x$ \ 
$inf A$ to największa minoranta $m in X$ taka, że $ forall x in A: m prec.eq x$

_Dowód:_

Niech $m$ będzie dowolną minorantą zbioru $A$.\
$overline(m) in A => m prec.eq overline(m)$ \
Ale $overline(m)$ też jest minorantą, więc jest największą minorantą czyli $inf A$.

#problem[
  Niech $R=(RR^2, "gr"R, RR^2)$, gdzie: $(x,y)R(x', y') <=> x <= x' and y <=
  y'$.
]

#subproblem[
  Wykaż, że $R$ jest relacją porządku. Czy ten porządek jest liniowy?
]

+ #[ zwrotność:

$forall (x, y) in RR^2: x <= x and y <= y => (x, y)R(x, y)$
]

+ #[ antysymetryczność:

$forall (x, y), (x', y') in RR^2: (x, y)R(x', y') and (x', y')R(x, y) => \
(x <= x' and y <= y') and (x' <= x and y' <= y) => (x=x' and y=y') => (x,
y)=(x', y')$
]

+ #[ przechodność:

$forall (x, y), (x', y'), (x'', y'') in RR^2:
(x, y)R(x', y') and (x', y')R(x'', y'') => \
(x <= x' <= x'' and y <= y' <= y'') => (x <= x'') and (y <= y'') =>
(x, y)R(x'', y'')
$
]


#subproblem[
  Znajdź zbiory minorant i majorant oraz kresy zbiorów \
  $A = {(1, 2), (3, 1)}$, $B = {(x, y): x^2 + y^2 <= 9}$.
]

#columns()[
#image("images/im16.png")
Zbiór majorant $A = angle.l 3, +infinity) times angle.l 2, +infinity)$ \
Zbiór minorant $A = (-infinity, 1 angle.r times (-infinity, 1 angle.r$ \
$sup A = (3, 2)$ \
$inf A = (1, 1)$

#colbreak()
#image("images/im17.png", width: 88%)
Zbiór majorant $B = angle.l 3, +infinity) times angle.l 3, +infinity)$ \
Zbiór minorant $B = (-infinity, -3 angle.r times (-infinity, -3 angle.r$ \
$sup B = (3, 3)$ \
$inf B = (-3, -3)$
]

#subproblem[
  Czy zbiory $A$ i $B$ mają elementy największe i najmniejsze oraz minimalne i
  maksymalne?
]

Zbiory $A$ i $B$ nie mają elementów największych i najmniejszych.\
Oba elementy zbioru $A$ są minimalne i maksymalne. \
Elementy minimalne zbioru $B$ to łuk okręgu od $(-3,0)$ do $(0,-3)$
a maksymalne to łuk od $(3,0)$ do $(0,3)$.

#problem[
  Niech $S = (RR^2, "gr"S, RR^2)$, gdzie: $(x_1, y_1)S(x_2, y_2) <=>
  ln(1+ x_1^2 + y_1^2) = ln(1 + x_2^2 + y^2_2)$.

  Czy tak określona relacja $S$ jest porządkiem w $RR^2$? \
  Czy jest to relacja równoważności?
]

Łatwo zauważyć, że $S$ jest zwrotna, symetryczna i przechodnia, czyli jest to
relacja równoważności.

#problem[
  W zbiorze punktów płaszczyzny $RR^2$ określamy relację $prec.eq$:
  $
    [(x_1, y_1) prec.eq (x_2, y_2)] <=> (x_1 < x_2 or (x_1 = x_2 and y_1 <=
  y_2)).
  $
  Wykaż, że $prec.eq$ porządkuje zbiór $RR^2$. Czy jest to porządek totalny w
  $RR^2$?
]

+ #[
  zwrotność

$forall (x,y) in RR^2: (x = x and y <= y) => x prec.eq x$
]

+ #[
  antysymetryczność

$forall (x_1, y_1), (x_2, y_2) in RR^2: \ 
(x_1 < x_2 or (x_1 = x_2 and y_1 <= y_2)) and 
(x_2 < x_1 or (x_2 = x_1 and y_2 <= y_1) => \
x_1 = x_2 and y_1 <= y_2 and y_2 <= y_1 => (x_1, y_1) = (x_2, y_2)$
]

+ #[
przechodność

$forall (x_1, y_1), (x_2, y_2), (x_3, y_3) in RR^2: \
(x_1 < x_2 or (x_1 = x_2 and y_1 <= y_2)) and 
(x_2 < x_3 or (x_2 = x_3 and y_2 <= y_3) => \
(x_1 <= x_2 < x_3) or (x_1 < x_2 <= x_3) or (x_1 = x_2 = x_3 and y_1 <= y_2 <=
y_3) => \
x_1 < x_3 or (x_1 = x_3 and y_1 <= y_3) => (x_1, y_1) prec.eq (x_3, y_3)
$
]

$prec.eq$ jest porządkiem totalnym w $RR^2$, ponieważ dla każdych dwóch

$(x_1,y_1), (x_2, y_2): \
(x_1, y_1) prec.eq (x_2, y_2) or (x_2, y_2) prec.eq (x_1, y_1) or 
(x_1, y_1) = (x_2, y_2)$

#problem[
  Dany jest uporządkowany zbiór $(QQ, <=)$ oraz podzbiór $A={x: x = 1/n + 1/m,
  n, m in NN_+}$. Znajdź kresy zbioru $A$ oraz element największy i element
  najmniejszy (o ile istnieją). Czy zbiór $A$ stanowi łańcuch?
]

$0 < 1/n + 1/m <= 2$

$sup A = 2$, jest to też element największy

$inf A = 0$, elementu najmniejszego nie ma

$A$ jest łańcuchem, ponieważ $forall x, y in A: x <= y or y <= x or x = y$


#problem[
  Niech $X={1, ..., n} (n > 2)$. Rozważmy rodzinę $Y$ tych podzbiorów zbioru
  $X$, które są niepuste i mają co najwyżej $n-1$ elementów. Wyznacz elementy
  minimalne i maksymalne zbioru $Y$ względem relacji inkluzji. Czy $Y$ ma
  element największy lub element najmniejszy?
]

Elementy minimalne to podzbiory jednoelementowe, a elementy maksymalne\ to
podzbiory $n-1$ elementowe. Nie ma elementu najmniejszego i największego.

#problem[
  Niech będzie dany zbiór uporządkowany $(X, subset)$, gdzie \ 
  $X = {[x, x+a] times [y, y+a]: x, y, a in RR, a >= 0}$ oraz zbiór \
  $A = {[1, 4] times [1, 4]; [2, 5] times [2, 5]; [2, 5] times [3, 6]; [2, 6] 
  times [2, 6]} subset X$.

  Wyznacz (o ile istnieją) elementy najmniejsze, największe, minimalne,
  maksymalne, zbiory minorant, majorant oraz kres dolny i górny zbioru $A$
  względem zadanego porząku w $X$.
]

#image("images/im18.png", width: 40%)

Elementy maksymalne to $[1,4] times [1,4]$ i $[2, 6] times [2, 6]$. 
Kres górny to $[1,6] times [1,6]$, a zbiór majorant to wszystkie kwadraty, 
w których się on zawiera. Element najmniejszy nie istnieje.

Elementy minimalne to $[1,4]times[1,4]$, $[2,5]times[2,5]$ i $[2,5]times[3,6]$.
Zbiór minorant to wszystkie kwadraty, które zawierają się w $[2,4]times[3,4]$.
Element najmniejszy i kres dolny nie istnieją.
