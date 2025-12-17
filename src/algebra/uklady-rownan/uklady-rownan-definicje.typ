#import "../../../template.typ": *
#show: template 

#let hl(content) = box(
    content,
  
    fill: rgb("#fffe69"),
 )

#let h(it) = hl[*#it*]

= Układ równań liniowych

#set math.mat(delim: "[")

$
cases(
a_11 x_1 &+ a_12 x_2 &+ ... &+ a_(1 n) x_n &= b_1,
a_21 x_1 &+ a_22 x_2 &+ ... &+ a_(2 n) x_n &= b_2,
...,
a_(m 1) x_1 &+ a_(m 2) x_2 &+ ... &+ a_(m n) x_n &= b_m,
) <=>
mat(a_11,a_12,...,a_(1 n);a_21,a_22,...,a_(2 n);dots.v,dots.v,dots.down,dots.v;
a_(m 1),a_(m 2),...,a_(m n))
mat(x_1;x_2;dots.v;x_n)=mat(b_1;b_2;dots.v;b_m) <=> A dot X = B
$

$A$ - macierz współczynników (główna) \
$B$ - macierz (kolumna) wyrazów wolnych \
$X$ - macierz (kolumna) niewiadomych\
$[A|B]$ - #h[macierz uzupełniona układu]

#h[Układ jednorodny]: $B = overline(0) <=> b_1 = b_2 = ... = b_m = 0$. \ 
(zawsze ma przynajmniej jedno rozwiązanie: $x_1 = x_2 =  ... = x_n = 0$) \
#h[Układ niejednorodny]: przynajmniej jednej wyraz wolny $b_i != 0$.

Układ jest:
 - #h[oznaczony] gdy ma jedno rozwiązanie,
 - #h[nieoznaczony] gdy ma więcej niż jedno rozwiązanie,
 - #h[sprzeczny] gdy nie ma rozwiązań.

Układ jest #h[kwadratowy] jeśli liczba niewiadomych jest równa liczbie równań
($n=m$).

= Twierdzenie Cramera
Jeżeli układ jest kwadratowy i $det A != 0$ to układ jest #h[układem Cramera] i
ma dokładnie jedno rozwiązanie:
$
x_j = (det A)^(-1) dot D_(x_j)
$
$D_x_j$ - wyznacznik macierzy $A$ z macierzą $B$ zamiast $j$-tej kolumny

Jeżeli układ kwadratowy ma $det = 0$, to:
 - $D_x_1 = ... D_x_n = 0 => $ układ jest nieoznaczony lub sprzeczny
 - $D_x_i != 0$ dla jakiegoś $i => $ układ jest sprzeczny

= Twierdzenie Kroneckera-Cappellego

Układ $A X = B$:
 - ma conajmniej jedno rozwiązanie $<=>$ $r(A) = r([A|B])$
 - ma dokładnie jedno rozwiązanie $<=>$ $r(A) = r([A|B]) = n$
 - jest sprzeczny $<=> r(A) != R([A|B]) <=> r(A) = r([A|B])-1$

Jeśli $r(A) = r([A|B]) = r < n$ to układ jest nieoznaczony i ma rozwiązania
zależne od $n-r$ parametrów.
