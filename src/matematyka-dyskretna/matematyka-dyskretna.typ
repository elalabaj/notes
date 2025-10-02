#import "../template.typ": *
#show: template

#outline()
#outline(title: "Definicje", target: figure.where(kind: "definition"))
#outline(title: "Twierdzenia", target: figure.where(kind: "theorem"))
#pagebreak()

= Kombinatoryka

== Liczba wszystkich podzbiorów

Niech $X = {a_1, a_2, ..., a_n}$. Moc $|X|=n$ to ilość elementów w tym zbiorze.

Każdy podzbiór reprezentuje ciąg binarny długości $n$, gdzie 1 na pozycji $i$ oznacza, że $a_i$ znajduje się w podzbiorze. Z tego powodu liczba wszystkich podzbiorów to liczba ciągów bitowych o długości $n$.

#theorem(title: "Liczba wszystkich podzbiorów")[
  Liczba wszystkich podzbiorów zbioru $n$-elementowego to $ 2^n$.
]

== Kombinacja bez powtórzeń

#definition(title: "Kombinacja")[
  Kombinacja to każdy $k$-elementowy podzbiór $n$-elementowego zbioru.
]

Pierwszym elementem do podzbioru może być dowolny z $n$ elementów zbioru. Drugi możemy wybrać z pozostałych na $n-1$ sposobów, i tak dalej aż do $k$-tego elementu, który wybieramy z $n-k+1$ tych, które zostały. Otrzymujemy $n(n-1)...(n-k+1)$. Ponieważ kolejność w zbiorach nie ma znaczenia wynik dzielimy przez $k!$ co daje $n!/(k!(n-k)!) = binom(n, k)$, gdzie $binom(n, k)$ to dwumian Newtona.

#theorem(title: "Liczba kombinacji bez powtórzeń")[
  Liczba podzbiorów $k$-elementowych bez powtórzeń z $n$-elementowego zbioru to $binom(n, k)$.
]

=== Właności dwumianu Newtona

#property[
  $binom(n, k) = binom(n, n-k)$
]

_Uzasadnienie:_ Zamiast wybierać $k$ osób z $n$ osobowej grupy, które pójdą do kina, można wybrać $n-k$ osób które nie pójdą. 

#property[
  $binom(n, k) = binom(n-1, k-1) + binom(n-1, k)$
  ]

_Uzasadnienie:_ $k$ osób z $n$ osobowej klasy możemy wybrać na $binom(n, k)$ sposobów (lewa strona równania). 

Możemy też rozważyć dwa przypadki. 
W pierszym przewodniczący klasy znajduje się w wybranej grupie. Wtedy resztę grupy wybieramy z pozostałych uczniów na $binom(n-1, k-1)$ sposobów. W drugim przewodniczący nie znajduje się w wybranej grupie a wszystkich $k$ uczniów wybieramy z reszty klasy na $binom(n-1, k)$ sposobów (prawa strona równania).

== Kombinacja z powtórzeniami

#definition(title: "Multizbiór")[
  Multizbiór (wielozbiór) uogólnienie pojęcia zbioru, w którym w odróżnieniu od klasycznych zbiorów jeden element może występować wiele razy
]

#definition(title: "Kombinacja z powtórzeniami")[
  Kombinacja $k$-elementowa z powtórzeniami elementów zbioru $X$ to dowolny multizbiór złożony z elementów zbioru $X$.
]

Niech $X={1, 2, ..., n}$. Chcemy wybrać $k$ elementową kombinację z powtórzeniami. Tworzymy $n$ szufladek i $i$-tej szufladki wkładamy tyle kulek, ile razy wybieramy $i$-ty element. Mamy $k$ kulek, które oznaczymy $0$ i $n-1$ przegródek między szufladkami, które oznaczymy $1$.

_Przykład_: Ciąg $000101100$ oznacza 3 kulki w pierszej szufladzie, 1 kulkę w drugiej, 0 w trzeciej i 2 w czwartej.

Każdy taki ciąg długości odpowiada jednej kombinaji z powtórzeniami. Liczba tych kombinacji to liczba ciągów binarnych długości $k+n-1$ z $k$ jedynkami, czyli $binom(k+n-1, k)$.

#theorem(title: "Liczba kombinacji z powtórzeniami")[
  Liczba kombinacji $k$-elementowych z powtórzeniami z elementów zbioru $n$-elementowego to $binom(k+n-1, k)$.
]

== Wariacja z powtórzeniami

#definition(title: "Wariacja")[
  Wariacja to uporządkowany wybór elementów ze zbioru, gdzie kolejność ma znaczenie
]

Liczba wariacji $k$-elementowych z powtórzeniami zbioru $n$-elementowego jest równa liczbie funkcji postaci
$
  f: [k] -> X,
$
gdzie $[k]={1, 2, ..., k}$, a moc $X$ wynosi $|X|=n$.

Każdemu z $k$ elementów można przypisać dowolną z $n$ wartości.

#theorem(title: "Liczba wariacji z powtórzeniami")[
  Liczba wariacji $k$-elementowych z powtórzeniami zbioru $n$-elementowego wynosi $n^k$.
]

== Wariacja bez powtórzeń

Liczba $k$-elementowych wariacji bez powtórzeń zbioru $n$-elementowego jest równa liczbie _różnowartościowych_ funkcji postaci
$
  f:[k]->x, " gdzie" |X|=n.
$

Pierwszemu elementowi przypisujemy jedą z $n$ wartości, durgiemu jedną z $n-1$ pozostałych, i tak dalej. 

#theorem(title: "Liczba wariacji bez powtórzeń")[
  Liczba $k$-elementowych wariacji bez powtórzeń zbioru $n$-elementowego wynosi $ n(n-1)...(n-k+1)=n!/(n-k)! $
]

== Permutacja

#definition(title: "Suriekcja")[
  Suriekcja to funkcja przyjmująca jako swoje wartości wszystkie elementy przeciwdziedziny.
]

#definition(title: "Iniekcja")[
  Iniekcja to funkcja różnowartościowa
]

#definition(title: "Bijekcja")[
  Bijekcja to funkcja, która jest jednocześnie iniekcją i suriekcją. Każdy element z dziedziny jest w relacji z dokładnie jednym elementem przedziwniedziny i odwrotnie.
]

Liczba bijeckji zbioru $n$ elementowego 
$
  f: X->Y, " gdzie" |X|=|Y|=n
$
wynosi n!

Permutacja to szczególny przypadek bijeckji gdzie $X=Y$.

#theorem(title: "Liczba permutacji")[
  Liczba permutacji zbioru $n$-elementowego wynosi $n!$.
]

== Permutacja z powtórzeniami

Niech $X={x_1, x_2, ..., x_t}$ będzie multizbiorem o mocy $n$, który zawiera element $x_i$ o krotności $n_i$ dla każdego $i = 1, 2, ..., t$.

Wtedy
$
  sum_(i=1)^t n_i = n.
$

Jeżeli wszystkie wystąpienia elementu $x_i$ ponumerujemy, to staną się one rozróżnialne, a $X$ stanie się zbiorem. Liczba permutacji będzie wynosić $n!$. Wynik ten trzeba podzielić przez $n_i !$ aby z powrotem stały się nierozróżnialne.

#theorem(title: "Liczba permutacji z powtórzeniami")[
  Liczba permutacji z powtórzeniami $n$ elementowego zbioru, gdzie kolejne elementy mają krotności $n_1, n_2, ..., n_t$ wynosi
  $
    n!/(n_1 ! dot n_2 ! dot ... dot n_t !)
  $
]

#pagebreak()
== Podsumowanie
#theorion-restate()