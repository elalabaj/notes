#import "../../template.typ": *
#show: template

#problem[
  Na ile różnych sposobów można rozsadzić $n$ osób wokół okrągłego stołu z $n+w$ miejscami?
]

Zaczynamy numeracje miejsc od osoby 1. Pozostałe $n-1$ osób może usiąść na pozostałych $n+w-1$
miejscach na $ binom(n+w-1, n-1) dot (n-1)! = (n+w-1)!/w! $ sposobów.

#problem[
  Ile jest różnych naszyjników zrobionych z $n$ różnokolorowych korali? 
]

Zakładam, że naszyjniki symetryczne są nierozróżnialne.

Problem jest analogiczny do ludzi przy okrągłym stole. Dla naszyjników z więcej niż dwóch
koralików dwa razy liczymy symetryczne sytuacje. Gdy koralików jest dwa lub mniej istnieje tylko 1
możliwy naszyjnik.
$ cases((n-1)!/2 &" gdy " n > 2, 1 &" gdy " n<= 2) $

#problem[
  Ile jest różnych ciągów binarnych o $a$ zerach i $b$ jedynkach?
]

Z $a+b$ miejsc wybieramy $a$ zer lub $b$ jedynek.
$ binom(a+b, a) = binom(a+b, b) $

#pagebreak()
#problem[
  Ile jest różnych liczb $n$-cyfrowych podzielnych przez 9, w których żadna cyfra nie jest dziewiątką?
]

Niech $a_1, a_2, ..., a_n$ będą cyframi liczby. Ponieważ liczba jest podzielna
przez 9 to:
$
  a_1 + ... + a_n & equiv 0 thick (mod 9) \
  a_n & equiv - a_1 - ... - a_(n-1) thick (mod 9) \
  a_n & in {0, 1, ..., 8}
$

Ponieważ $a_n$ jest wybierane jednoznacznie to wynik jest równy ilości liczb $n-1$ cyfrowych.
Żadna cyfra nie może być 9, a pierwsza nie może być 0, więc wynik to $ 8 dot 9^(n-2) $.

#problem[
  Na ile różnych sposobów można ustawić w ciąg liczby $0, 1, ..., 9$, tak by między $1$ i $2$ było 
  dokładnie k innych liczb?
]

1 i 2 można wstawić w każdą permutację pozostałych cyfr w $10 - 2 - k + 1 = 9-k$ miejsc.
Kolejność 1 i 2 może być dowolna. $ 2 dot (9-k) dot 8! $.

#problem[
  Ile jest różnych permutacji zbioru ${1, 2, ..., 2n}$ takich, że żadne dwie liczby parzyste nie są 
  sąsiednie?
]

Liczby parzyste i nieparzyste muszą być ustawione naprzemiennie, zaczynając od parzystych lub na
odwrót. Parzyste i nieparzyste permutujemy osobno, więc wynik to
$ 2 (n!)^2 $

#problem[
  Ile jest różnych punktów przecięcia $n$ prostych, z których $k$ jest wzajemnie równoległych, jeśli wiadomo, że żadne inne nie są równoległe i żadne trzy nie przecinają się w tym samym punkcie.
]

Narysujmy najpierw $k$ równoległych prostych. Każda kolejna prosta przecina się z wszytkimi już
narysowanymi tylko raz. Wynik więc to 
$ k + (k+1) + (k+2) + ... + (n-1) $

#problem[
  Na ile różnych sposobów można podzielić $2n$ osób na pary?
]

Ponumerujmy wszystkie osoby na $(2n)!$ sposobów. 1 osoba jest w parze z 2, 3 z 4 itd. Kolejność par
oraz kolejność osób w każdej z $n$ par nie mają znaczenia. Wynik więc to
$ (2n)!/(n! dot 2^n) $

#problem[
  Ile jest różnych permutacji zbioru ${1, 2, ..., 8}$, w których każda liczba nieparzysta poprzedza 
  (niekoniecznie bezpośrednio) liczbę o 1 od niej większą?
]

Z wszystkich permutacji połowa ma dobrze ustawioną parę 1-2. Z tej połowy tylko połowa ma dobrze
ustawioną parę 3-4, itd, ponieważ pary te są od siebie niezależne. Wynik więc to
$ 8!/2^4 $

#problem[
  Na ile różnych sposobów można wybrać z $n$ osób komitet, a z komitetu jego zarząd, jeśli zarówno komitet, jak i zarząd mogą liczyć od 0 do $n$ osób?
]

Każda osoba ma 3 opcje: może być w komitecie, komitecie i zarządzie, lub w niczym. Wynik więc to
$ 3^n $
