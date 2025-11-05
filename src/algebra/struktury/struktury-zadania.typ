#import "../../../template.typ": *
#show: template

#let co = math.class("relation", $circle.small$)

#problem[
  Sprawdź jakie własności mają w $ZZ$ następujące działania:
]

#subproblem[
  $a co b = a - b$
]

#subproblem[
  $a co b = a^2 + b^2$
]

#subproblem[
  $a co b = 2(a+b)$
]

#subproblem[
  $a co b = - a-b$
]

#problem[
  W zbiorze liczb rzeczywistych określamy działanie $x co y := x+y+x y$. Czy
  $(RR, co)$ jest grupą? Czy jest grupą para $(RR without {-1}, co)$?
]

#problem[
  W zbiorze liczb całkowitych określamy działanie $x co y := x + y + 2$. Czy
  $(ZZ, co)$ jest grupą?
]

#problem[
  Które z następujących zbiorów liczb są grupami:
]

#subproblem[
  liczby wymierne ze względu na dodawanie, mnożenie
]

#subproblem[
  liczby niewymierne ze względu na dodawanie, mnożenie
]

#subproblem[
  liczby zespolone o module równym $1$ ze względu na mnożenie
]

#subproblem[
  liczby zespolone o module równym $1$ ze względu na następujące działanie: $z_1
  co z_2 = abs(z_1) z_2$
]

#subproblem[
  liczby całkowite ze względu na odejmowanie
]

#problem[
  Niech $E_n$ będzie zbiorem wszystkich pierwiastków $n$-tego stopnia (w $CC$) z
  jedności. Udowodnij, że $(E_n, dot)$ jest grupą.
]

#problem[
  Niech $D$ będzie zbiorem wszystkich całkowitych potęg liczby $2$. Sprawdź (i
  uzasadnij) czy struktura $(D, co)$, gdzie $a co b := (a dot b)/2$, jest grupą.
]

#problem[
  Niech $triangle$ oznacza różnicę symetryczną, tj., dla dowolnych zbiorów $A$ i
  $B$, \ $A triangle B := (A without B) union (B without A)$. Sprawdź, czy dla
  dowolnie ustalonego zbioru $X != emptyset$, para $(2^X, triangle)$ jest grupą
  abelową.
]

#problem[
  Niech $(G, *)$ będzie grupą z elementem neutralnym $e$ taką, że: $a * a = e$
  dla każdego $a in G$. Wykaż, że $(G, *)$ jest grupą abelową.
]

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
  Wykaż, że $(ZZ slash 7, plus, dot)$ jest pierścieniem całkowitym.
]

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
