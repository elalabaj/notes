#import "../../../template.typ": *
#show: template

#let hl(content) = box(
    content,
  
    fill: rgb("#fffe69"),
 )

#let h(it) = hl[*#it*]

#let m(a) = [ $[#a _(i j)]_(m times n)$ ]

= Macierze

#h[Macierz] o elementach ze zbioru $K$ o wymiarach $m times n$:
$
{1, 2, ..., m} times {1, 2, ..., n} in.rev (i, j) -> a_(i j) in K \

mat(delim: "[",
  a_(1 1), a_(1 2), ..., a_(1 n);
  a_(2 1), a_(2 2), ..., a_(2 n);
  dots.v, dots.v, dots.down, dots.v;
  a_(m 1), a_(m 2), ..., a_(m n);
)
$

Oznaczenia: $A = [a_(i j)] = [a_(i j)]_(m times n)$

#h[Macierz transponowana] do macierzy $A = [a_(i j)]_(m times n)$ to $A^T =
[b_(i j)]_(n times m)$, gdzie $b_(i j) = a_(j i)$

#h[Macierz zerowa $bold(0)_(m times n)$]: $a_(i j) = bold(0)$

= Macierz kwadratowa

#h[Macierz kwadratowa]: $n = m, A = [a_(i, j)]_(n times n)$

#h[Przekątna główna]: $a_(i i), i = 1, 2, ..., n$.

#h[Macierz diagonalna] to macierz, w której wszystkie elementy poza przekątną
główną są $0$.

#h[Macierz jednostkowa $I_n$] to macierz diagonalna, w której na przekątnej
głównej są tylko $1$.

W #h[macierzy trójkątnej górnej] wszystkie elementy pod przekątną główną to 0. \
W #h[macierzy trójkątnej dolnej] wszystkie elementy nad przekątną główną to 0.

Macierz $A$ jest #h[symetryczna] $<=> A = A^T$.

= Działania na macierzach

#h[Równość macierzy]:\
$[a_(i j)]_(m times n) = [b_(i j)]_(l times p) <=> m = l and n = p and forall i in {1, ..., m} forall j in {1, ..., n}: a_(i j) = b_(i j)$

#h[Dodawanie macierzy]:\
$#m[a] = #m[b] := #m[c], c_(i j) = a_(i j) + b_(i j), i in {1, ..., m}, j in {1,
..., n}$

#h[Mnożenie macierzy przez skalar]:\
$A=[a_(i j)] => alpha A = [alpha a_(i j)]$

#h[Mnożenie dwóch macierzy]:\
Zał: $A = [a_(i, j)]_(m times p), B = [b_(i j)]_(p times n)$\
$
A dot B := #m[c], "gdzie" c_(i j) = sum_(k=1)^p a_(i k) b_(k j)
$

Mnożenie macierzy nie jest przemienne.

= Własności działań na macierzach

$M_(m times n) (K)$ - #h[zbiór macierzy $m times n$], o elementach z ciała
przemiennego  $K, |K| >= 2$

- $(M_(m times n) (K), K, plus, dot)$ to #h[przestrzeń wektorowa].

- $exists I':forall A in M_(m times n) (K): #h[$I' dot A = A$] thick (I' = I_m)$ \
- $exists I'':forall A in M_(m times n) (K):#h[$A dot I'' = A$] thick (I'' = I_n)$

O ile działania są wykonalne: \
$A, B, C in M_(m times n) (K), alpha in K$ \

- $(A dot B) dot C = A dot (B dot C)$ \
- $A dot (B + C) = A dot B + A dot C$ \
- $(A + B) dot C = A dot C + B dot C$ \
- $(A + B)^T = A^T + B^T$ \
- $(alpha A)^T = alpha (A^T)$ \
- $(A dot B)^T = B^T dot A^T$

= Wyznacznik macierzy

#h[Wyznacznik macierzy $2 times 2$] \
$A = [a_(i, j)]_(2 times 2)$
$
det A = mat(delim: "|",
  #text(red)[$a_(1 1)$], #text(blue)[$a_(1 2)$] ;
  #text(blue)[$a_(2 1)$], #text(red)[$a_(2 2)$])
= #text(red)[$a_(1 1) a_(2 2)$] - #text(blue)[$a_(1 2) a_(2 1)$]
$

$abs(det A)$ - #h[pole równoległoboku] rozpiętego przez $(a_(1 1), a_(1 2)):
(a_(2 1), a_(2, 2))$

#h[Wyznacznik macierzy $3 times 3$ - metoda Sarrusa]

$A = [a_(i j)]_(3 times 3)$

$
det A = #text(red)[$a_11 a_22 a_33 + a_12 a_23 a_31 + a_13 a_21 a_32$]
#text(blue)[$- a_13 a_22 a_31 - a_11 a_23 a_32 - a_12 a_21 a_33$]
$

#image("images/sarrus.png", width: 40%)

$|det A|$ - #h[objętość równoległościanu] rozpiętego przez wektory tworzące wiersze
$A$.

#h[Permutacja] zbioru $n$-elementowego - każde bijektywne odwzorowanie tego
zbioru na siebie. \
$S_n$ - zbiór wszystkich permutacji zbioru $NN_n := {1, 2, ..., n}$

Dwa elementy permutacji $sigma$ tworzą #h[inwersję] $<=> i < j and sigma(i) >
sigma(j)$. \
#h[Znak permutacji]: $epsilon(sigma) := (-1)^[sigma]$, gdzie $[sigma]$ to liczba
inwersji w permutacji. \
Permutacji $sigma$ jest #h[parzysta] $<=> epsilon(sigma)=1$\
Permutacji $sigma$ jest #h[nieparzysta] $<=> epsilon(sigma)=-1$\

Każda #h[transpozycja] (zamiana miejscami) dwóch różnych elementów permutacji
zmienia znak permutacji.

#h[Wyznacznik macierzy kwadratowej]

$
det A = mat(delim: "|",
  a_(1 1), a_(1 2), ..., a_(1 n);
  a_(2 1), a_(2 2), ..., a_(2 n);
  dots.v, dots.v, dots.down, dots.v;
  a_(m 1), a_(m 2), ..., a_(m n);
) := sum_(sigma in S_n) epsilon(sigma) dot a_(1 sigma(1)) dot a_(2 sigma(2)) dot
... dot a_(n sigma(n))
$

= Własności wyznaczników macierzy

- #h[$det A^T = det A$]
- #h[$det I = 1$]
- $det [k_1, ..., #h[$k'_i+k''_i$], ..., k_n] = det [k_1, ..., #h[$k'_i$], ...,
k_n] #h[$+$] det [k_1, ..., #h[$k''_i$], ..., k_n]$, gdzie $k_i$ to $i$-ta 
 kolumna (analogicznie dla wierszy)
- $det [k_1, ..., #h[$alpha k_i$], ..., k_n] = #h[$alpha$] det [k_1, ...,
#h[$k_i$], ..., k_n]$ (analogicznie dla wierszy)
- Dla $A = #m[a]$, #h[$ det(alpha A) = alpha^n A$]
- #h[Przestawienie dwóch wierszy] (kolumn) macierzy #h[zmienia znak] wyznacznika na
  przeciwny
- Wartość wyznacznika #h[nie zmieni się] jeśli do jakiegoś wiersza (kolumny) dodamy #h[kombinację liniową] pozostałych

#h[$det A = 0$] jeśli ($arrow.l.double$ a nie $<=>$):
- jakiś wiersz lub kolumna jest zerowa
- macierz $A$ ma dwa jednakowe wiersze (kolumny)
- jakiś wiersz (kolumna) jest kombinacją liniową pozostałych

#h[Twierdzenie Cauchy'ego]: \ Dla dowolnych macierzy $A, B in M_(n times m) (K):
det(A dot B) = det A dot det B$

= Minory

#h[Minor stopnia $k$] macierzy $A_(m times n)$ to #h[wyznacznik] dowolnej \
#h[podmacierzy kwadratowej $k times k$] powstałej z macierzy $A$ poprzez
wykreślenie z niej $n-k$ kolumn i $m-k$ wierszy.

$A = [a_(i j)]_(n times n)$ - macierz kwadratowa \
Wyznacznik macierzy powstałej przez wykreślenie z $A$ $i$-tego wiersza i 
$j$-tej kolumny to #h[$M_(i j)$ - minor odpowiadający elementowi $a_(i j)$]
(stopnia $n-1$).

= Twierdzenie Laplace'a
#h[Dopełnienie algebraiczne] elementu $a_(i j)$ macierzy #h[kwadratowej]
$A=[a_(i j)]_(n times n)$ to: \ 
$ A_(i j) := (-1)^(i+j) M_(i j)$

#h[Twierdzenie Laplace'a]\
$A = [a_(i j)] in M_(n times n) (K)$
$
forall j in {1, ..., n}: det A = a_(1 j) A_(1 j) + a_(2 j) A_(2 j) + ... 
+ a_(n j) A_(n j) \

forall i in {1, ..., n}: det A = a_(i 1) A_(i 1) + a_(i 2) A_(i 2) + ... 
+ a_(i n) A_(i n) \
$
#h[Wyznacznik macierzy trójkątnej] jest równy iloczynowi elementów na przekatnej
głównej.

= Rząd macierzy

$A in M_(m times n) (K)$ \
#h[Rząd macierzy $r(A)$] - maksymalna liczba liniowo niezależnych kolumn (lub
wierszy), traktowanych jako wektory z $K^m$ (lub $K^n$).

- $r(A) <= min{m, n}$
- $r(A^T) = r(A)$

Rząd dowolnej macierzy jest równy #h[największemu ze stopni niezerowych minorów]
tej macierzy.

= Postać schodkowa macierzy

Macierz ma postać schodkową, jeżeli
- wszystkie niezerowe wiersze występują kolejno od początku
- pierwsze niezerowe elementy (#h[schodki]) znajdują się w kolumnach o rosnących
  numerach
- lub macierz jest zerowa

#h[Rząd macierzy schodkowej] jest równy jej liczbie schodków.

Przykład: $A = mat(delim: "[", 1, 2, 3, 4; 0, 0, 5, 6; 0, 0, 0, 7)$. Schodki to
$1, 5$ i $7 => r(A)=3$.

= Operacje elementarne

Operacje elementarne #h[nie zmieniają rzędu] macierzy:
- #h[zamiana wierszy (kolumn)] miejscami
- #h[dodanie kombinacji liniowej] pozostałych wierszy do wiersza (kolumny)
- #h[pomnożenie przez skalar $alpha !=0$] wiersza (kolumny)

= Algorytm Gaussa

Każdą macierz można doprowadzić do postaci schodkowej nie zmieniając rzędu.

+ Znajdź pierwszą niezerową kolumnę $j$ i pierwszy niezerowy w element $a_(i
  j)$.
+ Zamień wiersz $i$ z wierszem pierwszym.
+ Wyzeruj pozostałe elementy z kolumny $j$ dodając pierwszy wiersz przemnożony
  przez odpowiedni skalar do każdego wiersza.
+ Powtórz na macierzy od wiersza $2$ i kolumny $j+1$.

= Macierz odwrotna

#h[Macierz odwrotna] do macierzy kwadratowej $A$ to taka macierz
$A^(-1)$ (też kwadratowa), że \ 
$A dot A^(-1) = A^(-1) dot A = I$. 

Jeżeli istnieje to $A$ jest #h[macierzą odwracalną]. Wtedy:
- $A^(-1)$ jest jednoznacznie określona
- #h[$det A != 0 (<=>)$]
- $A^(-1)=(det A)^(-1) (A^D)^T$, gdzie $A^D$ to #h[macierz dopełnień
  algebraicznych] macierzy $A$.
$
A^D = mat(delim: "[", A_11, A_12, ..., A_(1 n); A_21, A_22, ..., A_(2 n); dots.v, dots.v,
  dots.down, dots.v; A_(n 1), A_(n 2), ..., A_(n n))
$

Macierz kwadratowa $A$ jest #h[nieosobliwa (odwracalna)], jeżeli #h[$det A != 0
  <=> r(A)=n$]. \
Macierz kwadratowa $A$ jest #h[osobliwa], jeżeli #h[$det A = 0$]. \

$A, B in M_(n times n) (K)$ - macierze nieosobliwe, $alpha in K, alpha != 0$.
- $A^(-1), A^T, alpha A, A B, A^n (n in NN_+)$ też są #h[nieosobliwe]
- $det (A^(-1)) = (det A)^(-1)$
- $(A^(-1))^(-1)=A$
- $(A^T)^(-1)=(A^(-1))^T$
- $(alpha A)^(-1) = alpha^(-1) A^(-1)$
- $(A B)^(-1) = B^(-1) A^(-1)$
- $(A^n)^(-1) = (A^(-1))^n$

Macierz odwrotną można znaleźć np. przez algorytm Gaussa lub przez rozwiązanie
układu równań.
