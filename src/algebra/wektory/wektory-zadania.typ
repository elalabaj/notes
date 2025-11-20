#import "../../../template.typ": *
#show: template

// Helper function for "Zad X)"
#let zad(num) = {
  v(1em)
  text(weight: "bold")[Zad #num) ]
}

// Helper for sub-points (a, b, c...)
#let sub(body) = {
  pad(left: 1em, body)
}

#problem[
Niech $A = {0, 1}$. \
W zbiorze $A$ określamy działanie $plus.circle$ przyjmując:
$0 plus.circle 0 = 0$, $0 plus.circle 1 = 1 plus.circle 0 = 1$, $1 plus.circle 1
= 0$, oraz działanie $dot.circle$ przyjmując: $0 dot.circle 0 = 0 dot.circle 1 = 1
dot.circle 0 =
0$, $1 dot.circle 1 = 1$.
]

#subproblem[
  Sprawdź, że $(A, plus.circle, dot.circle)$ jest ciałem.\
]
#subproblem[
  W zbiorze $A^2$ określamy działanie dodawania jako: $(a, b) + (c, d) = (a
  plus.circle c, b plus.circle d)$, oraz mnożenie przez elementy z ciała $A$
  następująco: $alpha dot (a, b) = (alpha dot.circle a, alpha dot.circle b)$.\
  Sprawdź, czy $(A^2, +, dot)$ jest przestrzenią wektorową nad ciałem $A$.\
]
#subproblem[
  Wykaż, że przestrzeń $A^2$ posiada dokładnie pięć podprzestrzeni.
]

#problem[
Sprawdź, które z następujących zbiorów są podprzestrzeniami przestrzeni $RR^3$:
]
#subproblem[ $A = {(x, y, z) : x + y + z = a, a in RR}$]
#subproblem[ $B = {(x, y, z) : x >= 0}$]
#subproblem[ $C = {(x, y, 1) : x, y in RR}$]
#subproblem[ $D = {(x, y, z) : x^2 + y^2 + z^2 <= 1}$]
#subproblem[ $E = {(x, y, z) : x = 2y and z = 0}$]
#subproblem[ $F = {(x, y, z) : 3x + 2y - 8z = 0}$]

#problem[
Które z następujących podzbiorów przestrzeni wektorowej $F(RR, RR)$ są jej podprzestrzeniami:
]
#subproblem[$A = {f : f(2) = f(7)}$]
#subproblem[$B = {f : f(7) = 2 + f(1)}$]
#subproblem[$C = {f : f(x_0) = 3}$]

#problem[
Które z następujących podzbiorów przestrzeni wektorowej $RR[x]$ (przestrzeń wielomianów nad ciałem $RR$) są jej podprzestrzeniami:
]
#subproblem[$A = {w : w(0)w(1) = 0}$]
#subproblem[$B = {w : "stopień" w <= 6}$]
#subproblem[$C = {w : "stopień" w = 6}$]
#subproblem[$D = {w : w(x) "jest podzielne przez" x^2 + 1}$]

#problem[
Zbadaj, które z układów wektorów należących do $RR^3$ są liniowo niezależne:
]
#subproblem[$B_1 : (1, 4, 3), (-1, 2, 1), (0, 6, 4)$]
#subproblem[$B_2 : (2, 3, -1), (2, 0, 0), (0, 3, 1)$]
#subproblem[$B_3 : (2, -7, 2), (0, 2, 4), (2, -1, 5)$]
#subproblem[Znajdź współrzędne wektora $(1, 1, 1)$ względem tych $B_i$, które
stanowią bazę w $RR^3$.]

#problem[
Sprawdź liniową zależność wektorów $sqrt(2)$ i $2$ w przestrzeni $(RR, +, dot)$ nad ciałem $QQ$ oraz w przestrzeni $(RR, +, dot)$ nad ciałem $RR$.
]

#problem[
Dla jakiej wartości parametru $k$ wektor $v = (1, -2, k) in RR^3$ jest kombinacją liniową wektorów $u_1 = (1, 1, 1)$ i $u_2 = (1, 2, 3)$?
]

#problem[
Sprawdź, czy następujące funkcje są liniowo niezależne w przestrzeni $F(RR, RR)$:
]
#subproblem[$f = "Id", g(x) = sin x, h(x) = cos x$]
#subproblem[$f(x) = 1, g(x) = sin x, h(x) = cos x, p(x) = sin^2 x, q(x) = cos^2
x$]

#problem[
W $RR^3$ dane są trzy wektory: $u = (0, 1, -1)$, $v = (-1, 0, 1)$, $w = (1, -1, 0)$.
]
#subproblem[Wykaż, że wektory te są parami niezależne.]
#subproblem[Czy układ wektorów $u, v, w$ jest liniowo niezależny?]

#problem[
Udowodnij, że zbiór: $A = {(x_1, x_2, x_3, x_4) in RR^4 : x_1 + x_2 - 3x_3 - 3x_4 = 0, x_1 - x_2 + 3x_3 + x_4 = 0}$ jest podprzestrzenią przestrzeni $RR^4$. Wyznacz bazę tej podprzestrzeni oraz bazy podprzestrzeni z zadania 2.
]

#problem[
Dane są dwa układy wektorów: $B_1 : (1, i, 1+i), (i, -1, 2-i), (0, 0, 3)$ i $B_2 : (2i, 1, 0), (2, -i, 1), (0, 1+i, 1-i)$.
]
#subproblem[Sprawdź, czy któryś z tych układów stanowi bazę przestrzeni
$CC^3(CC)$ lub $CC^3(RR)$.]
#subproblem[Jaki wymiar mają przestrzenie $CC^n(CC)$ i $CC^n(RR)$?]
#subproblem[Znajdź współrzędne wektora $(1, 0, 1)$ w bazie z podpunktu a).]

#problem[
Niech będzie dana następująca podprzestrzeń $U$ przestrzeni wektorowej $CC^2(RR)$ (tj. przestrzeni $CC^2$ nad ciałem liczb rzeczywistych $RR$), gdzie $p$ jest pewną liczbą rzeczywistą:
$ U := "Lin"{(p i, (p-1)i), (p-2-p i, p), (-1-p i, 2p)}. $
Zbadaj dla jakich wartości parametru rzeczywistego $p$, zachodzi:
$ (3-2p, p-1+(1-p)i) in U. $
Dla wszystkich takich wartości parametru $p in RR$, wyznacz $dim U$.
]

#problem[
Wyznacz bazę przestrzeni $(P_(2n), +, dot)$ nad ciałem $RR$, gdzie $P_(2n) := {w in RR[x]_(2n) : w(x) = w(-x)}$.
]

#problem[
W przestrzeni wielomianów $RR[x]_2$ dana jest baza $B_1 = (1, x, x^2)$. Wykaż, że układ $B_2 = (1, x-2, (x-2)^2)$ stanowi bazę $RR[x]_2$. Podaj współrzędne wielomianu $P(x) = 2x^2 + 3$ względem obu baz. Czy zbiór $A = {p in RR[x]_2 : p(1) = p'(0)}$ stanowi podprzestrzeń tej przestrzeni? Jeżeli tak, wyznacz jej bazę i wymiar.
]

#problem[
Wykaż, że zbiór liczb postaci ${a + b sqrt(2) + c sqrt(3) + d sqrt(6) + e sqrt(12) : a, b, c, d, e in QQ}$ tworzy przestrzeń wektorową nad ciałem liczb wymiernych. Znajdź bazę tej przestrzeni.
]

#problem[
Wiedząc, że wektory $u, v, w$ stanowią bazę przestrzeni liniowej $V$ (nad ciałem $RR$), zbadaj, który z poniższych układów także stanowi jej bazę:
]
#subproblem[$B_1 = (u - 2v + w, 3u + w, u + 4v - w)$]
#subproblem[$B_2 = (u, 2u + v, 3u - v + 4w)$]
#subproblem[
Wyznacz współrzędne wektora $a = 2u - 3v + 8w$ względem tej bazy.
]

#problem[
Wykaż, że dla dowolnych $x_0, x_1, ..., x_n in RR$ takich, że $x_i eq.not x_j$ dla $i eq.not j$, wielomiany $w_0, w_1, ..., w_n$, zdefiniowane jako:
$ w_i (x) = product_(j=0, j eq.not i)^n (x - x_j)/(x_i - x_j) quad "dla" i = 0, 1, ..., n, $
stanowią bazę przestrzeni $RR[x]_n$.
]

#problem[
Niech $V = F(RR, RR)$, a $V_1, V_2$ będą podzbiorami $V$ składającymi się, odp., z odwzorowań nieparzystych oraz parzystych. Wykaż, że $V_1, V_2$ są podprzestrzeniami przestrzeni wektorowej $V$ oraz, że $V = V_1 plus.circle V_2$.
]

#problem[
Niech $V = F(RR, RR)$. Oznaczmy przez $F_a$ zbiór odwzorowań zerujących się w punkcie $a$.
]
#subproblem[Wykaż, że $F_a$ jest podprzestrzenią przestrzeni $V$]
#subproblem[Udowodnij, że jeżeli $a eq.not b$, to $V = F_a + F_b$, ale suma ta
nie jest prosta.]

#problem[
Niech $X$ będzie przestrzenią wektorową nad ciałem $K$ oraz $U$ i $V$ jej podprzestrzeniami.
]
#subproblem[Wykaż, że $U union V$ jest podprzestrzenią $X$ wtedy i tylko wtedy,
gdy $U subset V$ lub $V subset U$.]
#subproblem[Sprawdź, czy $"Lin"(U union V) = U + V$.]
