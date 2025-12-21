#import "../../../template.typ": *
#show: template 

#set math.mat(delim: "[")

#problem[
  Rozwiąż układy równań:
]

#subproblem[
  $ cases(
    x_1 &+ x_2 &+ x_3 &+ x_4 &+ x_5 &= 8,
    x_1 &- x_2 &- x_3 &+ x_4 &+ x_5 &= 0,
    2x_1 &- x_2 &+ 2x_3 &- x_4 &+ 2x_5 &= 7,
    x_1 &- 4x_2 &+ x_3 &- 2x_4 &- x_5 &= -9,
    -x_1 &+ x_2 &- x_3 &+ x_4 &+ x_5 &= 2
  ) $
]

$
&mat(1, 1, 1, 1, 1, 8; 1, -1, -1, 1, 1, 0; 2, -1, 2, -1, 2, 7; 1, -4, 1, -2, -1,
-9; -1,1,-1,1,1,2; augment: #5) mat(delim: #none, ;-w_1;-2w_1;-w_1;+w_1;) &->& 
mat(1,1,1,1,1,8;0,-2,-2,0,0,-8;0,-3,0,-3,0,-9;0,-5,0,-3,-2,-17;0,2,0,2,2,10;
  augment: #5)mat(delim: #none, ; :(-2);:3;;;)->\
&mat(1,1,1,1,1,8;0,1,1,0,0,4;0,-1,0,-1,0,-3;0,-5,0,-3,-2,-17;0,2,0,2,2,10;
augment: #5)mat(delim: #none, ;;+w_2;+5w_2;-2w_2;)&->&
mat(1,1,1,1,1,8;0,1,1,0,0,4;0,0,1,-1,0,1;0,0,5,-3,-2,3;0,0,-2,2,2,2;
augment: #5)mat(delim: #none, ;;;-5w_3;+2w_2;)->\
&mat(1,1,1,1,1,8;0,1,1,0,0,4;0,0,1,-1,0,1;0,0,0,2,-2,-2;0,0,0,0,2,4;
augment: #5)  mat(delim: #none, ;;;:(-2);:2;) &->&
mat(1,1,1,1,1,8;0,1,1,0,0,4;0,0,1,-1,0,1;0,0,0,1,-1,-1;0,0,0,0,1,2;
augment: #5)
$
$
& x_5=2 \
x_4-2=-1 =>& x_4 = 1 \
x_3 - 1 = 1 =>& x_3 = 2 \
x_2 + 2 = 4 =>& x_2 = 2 \
x_1 + 2 + 2 + 1 + 2 = 8 =>& x_1 = 1
$

#subproblem[
  $ cases(
    x_1 &+ x_2 &+ x_3 &+ x_4 &+ x_5 &= 8,
    x_1 &- x_2 &- x_3 &+ x_4 &+ x_5 &= 0,
    2x_1 &- x_2 &+ 2x_3 &- x_4 &+ 2x_5 &= 7,
    x_1 &- 4x_2 &+ x_3 &- 2x_4 &- x_5 &= -9,
    -x_1 &+ x_2 &- x_3 &+ x_4 &- x_5 &= -2
  ) $
]

$
&mat(1, 1, 1, 1, 1, 8; 1, -1, -1, 1, 1, 0; 2, -1, 2, -1, 2, 7; 1, -4, 1, -2, -1,
-9; -1,1,-1,1,-1,-2; augment: #5) mat(delim: #none, ;-w_1;-2w_1;-w_1;+w_1;) &->&
mat(1,1,1,1,1,8;0,-2,-2,0,0,-8;0,-3,0,-3,0,-9;0,-5,0,-3,-2,-17;0,2,0,2,0,6;
  augment: #5)mat(delim: #none, ; :(-2);:3;;;)->\
&mat(1,1,1,1,1,8;0,1,1,0,0,4;0,-1,0,-1,0,-3;0,-5,0,-3,-2,-17;0,2,0,2,0,6;
augment: #5)mat(delim: #none, ;;+w_2;+5w_2;-2w_2;)&->&
mat(1,1,1,1,1,8;0,1,1,0,0,4;0,0,1,-1,0,1;0,0,5,-3,-2,3;0,0,-2,2,0,-2;
augment: #5)mat(delim: #none, ;;;-5w_3;+2w_2;)->\
&mat(1,1,1,1,1,8;0,1,1,0,0,4;0,0,1,-1,0,1;0,0,0,2,-2,-2;0,0,0,0,0,0;
augment: #5)  mat(delim: #none, ;;;:(-2);;) &->&
mat(1,1,1,1,1,8;0,1,1,0,0,4;0,0,1,-1,0,1;0,0,0,1,-1,-1;0,0,0,0,0,0;
augment: #5)
$

$
& x_5=t in RR \
x_4-t=-1 =>& x_4 = t-1 \
x_3 - t+1 = 1 =>& x_3 = t \
x_2 + t = 4 =>& x_2 = 4-t \
x_1 + 4-t+t+t-1+t = 8 =>& x_1 = 5-2t
$

#subproblem[
    $ cases(
      -3x &+ 6y &- 3z &= 2,
      x &- 2y &+ z &= -1
    ) $
  ]

$
mat(-3,+6,-3,2;1,-2,1,-1; augment: #3)mat(delim: #none, +3w_2;;)->
mat(0,0,0,1;1,-2,1,-1; augment: #3) => 0=1 "sprzeczność"
$

#problem[
  Znajdź bazę podprzestrzeni wektorowej przestrzeni $RR^3$ rozwiązań następującego układu:
  $ cases(
    x &+ 2y &- z &= 0,
    2x &+ 7y &- 2z &= 0,
    -x &+ 3y &+ z &= 0
  ) $
]

$
mat(1,2,-1,0;2,7,-2,0;-1,3,1,0;augment: #3)mat(delim:#none;;-2w_1;+w_1)->
mat(1,2,-1,0;0,3,0,0;0,5,0,0;augment: #3)mat(delim:#none;;:3;-5/3 w_2)->
mat(1,2,-1,0;0,1,0,0;0,0,0,0;augment: #3)
$
$
x_3&=t in RR \
x_2&=0\
x_1+2 dot 0 - t = 0 => x_1&=t
$
Rozwiązania są postaci $(t, 0, t) = t(1, 0, 1)$, więc podprzestrzeń to
$V="Lin"{(1,0,1)}$. Wektor $(1,0,1)$ jest liniowo niezależny, więc baza to $B =
{(1,0,1)}$.

#problem[
  Zbadaj w zależności od parametru $k$ ilość rozwiązań układu równań:
  $ cases(
    k x &+ y &+ z &= 1,
    x &+ k y &+ z &= k,
    x &+ y &+ k z &= k^2
  ) $
  W przypadku, gdy układ ma dokładnie jedno rozwiązanie, znajdź je stosując:
]

$
A = mat(k,1,1;1,k,1;1,1,k) \
det A = k^3 + 1 + 1 - k - k - k = k^3 - 3k + 2 = (k-1)(k^2 +3k - 2) = (k-1)^2
(k+2)
$

Z twierdzenia Cramera, gdy $k in.not {1, -2}$, $det A != 0 => $ układ ma
dokładnie jedno rozwiązanie.

Dla $k=1$, $[A|B] = mat(1,1,1,1;1,1,1,1;1,1,1,1;augment:#3)$, co sprowadza się
do równania $x+y+z=1$, więc jest nieskończenie wiele rozwiązań.

Dla $k=-2$, $[A|B] = mat(-2,1,1,1;1,-2,1,1;1,1,-2,1;augment:#3)$. Po dodaniu
$w_2$ i $w_3$ do $w_1$ dostajemy $0=3$, więc układ jest sprzeczny i nie ma
rozwiązań.

#subproblem[
  metodę Gaussa;
]
$
mat(k,1,1,1;1,k,1,k;1,1,k,k^2;augment:#3)-->^(w_1 <-> w_3)
mat(1,1,k,k^2;1,k,1,k;k,1,1,1;augment:#3)mat(delim:#none;;-w_1;-k w_1)->
mat(1,1,k,k^2;0,k-1,1-k,k-k^2;0,1-k,1-k^2,1-k^3;augment:#3)
mat(delim:#none;;:(k-1);:(1-k))-> \
mat(1,1,k,k^2;0,1,-1,-k;0,1,1+k,1+k+k^2;augment:#3)
mat(delim:#none;;;-w_2)-> 
mat(1,1,k,k^2;0,1,-1,-k;0,0,2+k,1+2k+k^2;augment:#3)
$
$
(2+k)x_3 = 1+2k+k^2 =>&
x_3 = (k+1)^2 / (k+2) \
x_2 - (k+1)^2 / (k+2) = -k  =>& 
x_2 = (-k^2-2k + k^2 + 2k + 1)/(k+2) = 1/(k+2) \
x_1 + 1/(k+2) + (k(k+1)^2)/(k+2) = k^2 =>&
x_1=(k^3+2k^2-1-k^3-2k^2-k)/(k+2) = (-k-1)/(k+2)
$
#subproblem[
wzory Cramera;
]

$
x_1 = (det A)^(-1) mat(delim: "|", 1,1,1;k,k,1;k^2,1,k) = (k^2 + k + k^2 - k^3
-1 -k^2)/((k-1)^2 (k+2)) = (-k^3+k^2+k-1)/((k-1)^2 (k+2)) = \
= ((k-1)(-k^2 + 1))/((k-1)^2 (k+2)) = (-(k-1)^2(k+1))/((k-1)^2 (k+2)) =
(-k-1)/(k+2)\
x_2 = (det A)^(-1) mat(delim: "|", k,1,1;1,k,1;1,k^2,k) =
(k^3+k^2+1-k-k^3-k)/((k-1)^2 (k+2)) = (k^2-2k+1)/((k-1)^2(k+2)) = 1/(k+2) \
x_3 = (det A)^(-1) mat(delim: "|", k,1,1;1,k,k;1,1,k^2) = (k^4+1+k-k-k^2-k^2)
/ ((k-1)^2 (k+2)) = (k^4-2k^2+1)/((k-1)^2 (k+2)) = \
((k^2-1)^2)/((k-1)^2 (k+2)) = (k+1)^2 / (k+2)
$

#subproblem[
metodę macierzy odwrotnej.
]

$
A = mat(k,1,1;1,k,1;1,1,k) \
A^D = mat(+(k^2-1),-(k-1),+(1-k);-(k-1),+(k^2-1),-(k-1);+(1-k),-(k-1),+(k^2-1))=
(k-1)mat(k+1,-1,-1;-1,k+1,-1;-1,-1,k+1)\
A^(-1)=1/(det A) (A^D)^T=(k-1)/((k-1)^2 (k+2))mat(k+1,-1,-1;-1,k+1,-1;-1,-1,k+1)
$
$
A dot X = B <=> X = A^(-1) dot B
$
$
1/((k-1)(k+2))mat(k+1,-1,-1;-1,k+1,-1;-1,-1,k+1)mat(1;k;k^2) = 
1/((k-1)(k+2))mat(k+1-k-k^2; -1+k^2+k-k^2; -1-k+k^3+k^2) = \
1/((k-1)(k+2))mat(1-k^2; k-1; (k-1)(k+1)^2) = mat((-k-1)/(k+2);1/(k+2);(k+1)^2 /
(k+2))
$

#problem[
  Zbadaj rząd macierzy uzupełnionej następującego (rzeczywistego) układu równań w zależności od parametru rzeczywistego $p$ oraz rozwiąż ten układ dla każdej wartości parametru $p in RR$:
  $ cases(
    (p + 1)x &- y &- p z &= 2p,
    x &+ p y &+ 2p z &= 1,
    x & &+ p z &= 1,
    p x &+ y & &= 1
  ) $
]

$
&mat(p+1,-1,-p,2p;1,p,2p,1;1,0,p,1;p,1,0,1;augment:#3)&-->^(w_1 <-> w_3)&
mat(1,0,p,1;1,p,2p,1;p+1,-1,-p,2p;p,1,0,1;augment:#3)
mat(delim:#none;;-w_1;-(p+1)w_1;-p w_1) -> \
&mat(1,0,p,1;0,p,p,0;0,-1,-p^2-2p,p-1;0,1,-p^2,1-p;augment:#3)&-->^(w_2<-> w_4)&
mat(1,0,p,1;0,1,-p^2,1-p;0,-1,-p^2-2p,p-1;0,p,p,0;augment:#3)
mat(delim:#none;;;+w_2;-p w_2) -> \
&mat(1,0,p,1;0,1,-p^2,1-p;0,0,-2p^2-2p,0;0,0,p^3+p,p^2-p;augment:#3) &=& 
mat(1,0,p,1;0,1,-p^2,1-p;0,0,-2p(p+1),0;0,0,p(p^2+1),p(p-1);augment:#3)
$
Jeśli $p in.not {0,-1,1}$ to dwa ostatnie wiersze są sprzeczne, bo 
$
-2p(p+1) x_3 = 0 =>& x_3 = 0\
p(p^2+1) x_3 = p(p-1) =>& x_3 = (p(p-1))/(p(p^2+1)) != 0
$
czyli układ nie ma rozwiązań.

Dla $p=0$ mamy:
$
mat(1,0,0,1;0,1,0,1;0,0,0,0;0,0,0,0;augment:#3) => 
cases(x_1 = 1, x_2 = 1, x_3 = t in RR)
$
Dla $p=-1$:
$
mat(1,0,-1,1;0,1,-1,2;0,0,0,0;0,0,-2,2;augment:#3) =>
cases(x_3 = 2/(-2)=-1, x_2 = 2 + (-1) = 1, x_1 = 1 + (-1) = 0)
$
Dla $p=1$:
$
mat(1,0,1,1;0,1,-1,0;0,0,-4,0;0,0,2,0;augment:#3) =>
cases(x_3 = 0, x_2 = 0, x_1 = 1)
$


#problem[
  Wyznacz wszystkie wartości parametru zespolonego $p$ ($p in CC$), dla którego poniższa macierz zespolona $U$ jest osobliwa. Rozwiąż poniższy układ równań $(*)$ w ciele liczb zespolonych w zależności od parametru zespolonego $p$ ($p in CC$):
  $ U = mat(
    p^2, 1, p^2, -1;
    -1, 1, -1, -1;
    1, -1, p+1, 1;
    -p^2, -1, -p^2, p+1
  ), quad (*) cases(
    p^2 x &+ y &+ p^2 z &= -1,
    -x &+ y &- z &= -1,
    x &- y &+ (p+1)z &= 1,
    -p^2 x &- y &- p^2 z &= p+1
  ) $
]

#set math.mat(delim: "|")
$
det U = &mat(p^2, 1, p^2, -1;-1, 1, -1, -1;1, -1, p+1, 1;-p^2, -1, -p^2, p+1)
mat(delim:#none,;-w_1;+w_1;+w_1;) &->&
mat(p^2,1,p^2,-1;-1-p^2,0,-1-p^2,0;1+p^2,0,p^2+p+1,0;0,0,0,p)
$
Stosujemy rozwinięcie Laplace'a dla drugiej kolumny:
$
det U = 1 dot (-1)^(1+2) mat(-1-p^2,-1-p^2,0;1+p^2,p^2+p+1,0;0,0,p) + 0 + 0 + 0
=\ -((-1-p^2)(p^2+p+1)p - p(-1-p^2)(1+p^2)) = p(p^2+1)(p^2+p+1 - 1 - p^2) = \
p^2(p^2+1) = p^2(p - i)(p + i)
$
#set math.mat(delim: "[") 
Macierz jest osobliwa dla $p in {0, i, -i}$.

Stosując takie same przejście otrzymujemy macierz dopełnioną układu równań:
$
mat(p^2,1,p^2,-1;-1-p^2,0,-1-p^2,0;1+p^2,0,p^2+p+1,0;0,0,0,p; augment:#3)
$
Z czwartego wiersza mamy $0 = p$, czyli dla $p!=0$ układ jest sprzeczny. Dla $p
= 0$ mamy:
$
mat(0,1,0,-1;-1,0,-1,0;1,0,1,0;0,0,0,0; augment:#3)
mat(delim:#none,;;+w_2;;) = 
mat(0,1,0,-1;-1,0,-1,0;0,0,0,0;0,0,0,0; augment:#3) =>
cases(x_1 = t, x_2 = -1, x_3 = -t) "dla" t in CC
$
