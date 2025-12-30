#import "../../../template.typ": *
#show: template

#let norm(a) = [ $abs(abs(#a))$ ]
#let vec(a) = [ $arrow(#a)$ ]

#problem[ Sprawdź, czy: ]
#subproblem[ wektory $u=[-1,3,-5], v=[1,-1,1], w=[4,2,0]$ są współpłaszczyznowe; ]
$
mat(delim:"|",-1,3,-5;1,-1,1;4,-2,0)=0+12+10-20-2-0=0
$
Wektory są współpłaszczyznowe.

#subproblem[ punkty $P=(0,0,0), Q=(-1,2,3), R=(2,3,-4), 
  S=(2,-1,5)$ są współpłaszczyznowe.]

Sprawdźmy współpłaszczyznowość wektorów $arrow(P Q), arrow(P R ) , arrow(P S)$.
$
mat(delim:"|",-1,2,3;2,3,-4;2,-1,5) = -15-16-6-18+4-20=-71!=0
$
Punkty nie są współpłaszczyznowe.

#problem[Trójkąt $A B C$ rozpięty jest na wektorach 
  $arrow(A B) = [1,5,-3], arrow(A C)=[-1,0,4]$. 
  Oblicz wysokość tego trójkąta opuszczoną z wierzchołka $C$.]

#set math.mat(delim: "|")
$
P_triangle = 1/2 norm(vec(A B) times vec(A C)) = 1/2 norm(A B
) h_C => h_C = norm(vec(A B) times vec(A C))/ norm(A B )\
vec(A B) times vec(A C) = mat(i,j,k;1,5,-3;-1,0,4)=[20,-1,5]\
norm(vec(A B) times vec(A C)) = sqrt(20^2 + (-1)^2 + 5^2)=
sqrt(426) \
norm(vec(A B)) = sqrt(1^2 + 5^2 + (-3)^2) = sqrt(35)\
h_C = sqrt(426/35)
$

#problem[
Proste $l_1$ i $l_2$ dane są równaniami parametrycznymi:
#columns(2)[
$
l_1: cases(x=1-4t, y=-2t, z=2+4t) #h(2em) (t in RR);
$
#colbreak()
$
l_2: cases(x=6+6t, y=4+3t, z=-6t) #h(2em) (t in RR);
$
]
Wykaż, że $l_1$ i $l_2$ są równoległe. Oblicz odległość 
  między nimi. Znajdź równanie ogólne ich wspólnej płaszczyzny
]
#columns(2)[
$
  P=(1,0,2), Q=(6,4,0)\
vec(v)=[-4,-2,4], vec(w)=[6,3,-6]\
vec(P Q) = [6-1, 4-0, 0-2] = [5,4,-2] $
#colbreak() 
#image("img/z3.png", width: 50%)
]


Wektory kierunkowe $vec(v)$ i $vec(w)$ są proporcjonalne:
$ (-4)/6 = (-2)/3 = 4/(-6) $
więc proste są równoległe.

$
d(l_1, l_2) = d(P, l_2) = norm(vec(P Q) times vec(w))/norm(
  vec(w)) \
vec(P Q) times vec(w) = mat(i,j,k;5,4,-2;6,3,-6)=[-18,18,-9] = 9 dot [-2,2,-1] \
d = (9 sqrt((-2)^2+2^2+(-1)^2))/sqrt(6^2+3^2+(-6)^2) = 
(9 dot 3)/(sqrt(81)) = 3
$

Płaszczyzna wspólna obu prostych to płaszczyzna rozpięta 
np. przez wektory $vec(w)$ i $vec(P Q)$. Znajdźmy 
wektor normalny tej płaszczyzny.
$
vec(n) = vec(P Q) times vec(w) =9 dot [-2,2,-1] \
$
Skalar można pominąć, więc przyjmijmy $vec(n) = [-2,2,-1]$.

Równanie płaszczyzny przechodzącej przez punkt $Q$ i 
prostopadłej do wektora $vec(n)$ ma postać:
$
pi: -2(x-6) + 2(y-4) -z &= 0\
-2x + 2y - z + 4 &= 0
$

#problem[
Zbadaj wzajemne położenie prostych
#columns(2)[
$
l_1: cases(x=2-t, y=3+2t, z=-3t) #h(2em) (t in RR)
$
#colbreak()
$
l_2: cases(x=-3+2s, y=1+2s, z=-3) #h(2em) (s in RR)
$
]
Znajdź równanie normalne ich wspólnej płaszczyzny (jeżeli istnieje).
]

Spróbujmy znaleźć punkt wspólny prostych.
$
cases(2-t=-3+2s, 3+2t=1+2s, -3t=-3) <=>
cases(2s=5-t, 2s =2+2t, t=1) <=>
cases(t=1, s=2)
$
Proste przecinają się w jednym punkcie $A=(1,5,-3)$, więc są
współpłaszczyznowe.

Wektory kierunkowe to $vec(v)=[-1,2,-3]$ i $vec(w)=[2,2,0]$.

$
vec(n) = vec(v) times vec(w) = mat(i,j,k;-1,2,-3;2,2,0) = 
[6,-6,-6] = 6 dot [1,-1,-1] \
pi: (x - 1) - (y - 5) - (z + 3) = 0
$

#problem[
Zbadaj wzajemne położenie prostych
#columns(2)[
$
l_1: cases(x=1+2t, y=t, z=2) #h(2em) (t in RR)
$
#colbreak()
$
l_2: cases(x=3, y=s, z=-s) #h(2em) (s in RR)
$
]
Jeżeli leżą one na jednej płaszczyźnie, to napisz jej 
  równanie ogólne. Jeżeli nie, to oblicz odległość między
  tymi prostymi.
]

$
cases(1+2t=3, t=s, 2=-s) =>
cases(t=1, t=s, s=-2) 
$
Dochodzimy do sprzeczności, czyli proste nie mają punktów 
wspólnych. Wektory kierunkowe $vec(v)=[2,1,0]$ i $vec(w)=
[0,1,-1]$ nie są proporcjonalne, czyli proste nie są 
równoległe i nie leżą na jednej płaszczyźnie.

$P = (1,0,2), Q=(3,0,0), vec(P Q)=[2,0,-2] $
$
vec(P Q) times vec(w) = mat(i,j,k;2,0,-2;0,1,-1)=[2,2,2]
$
$
d(l_1, l_2) = d(P, l_2) = norm(vec(P Q) times vec(w))/
norm(vec(w)) = sqrt(2^2 + 2^2 + 2^2)/sqrt(0^2+1^2+(-1)^2) = 
(2 sqrt(3))/sqrt(2) = sqrt(6)
$

#problem[Napisz równanie ogólne płaszczyzny $pi$ 
  przechodzącej przez punkty $A=(-1,2,4)$, $B=(2,1,3)$ i $C
  = (3,-1,5)$. Wyznacz odległość punktu $Q=(5,0,8)$ od
płaszczyzny $pi$ oraz znajdź punkt symetryczny do punktu $Q$
względem tej płaszczyzny.]

Płaszczyzna $pi$ przechodzi przez punkt $A$ i jest rozpięta 
na wektorach $vec(A B)$ i $vec(A C)$.
$
vec(A B) = [3,-1,-1], vec(A C) = [4,-3,1] \
vec(n) = vec(A B) times vec(A C) = mat(i,j,k;3,-1,-1;4,-3,1)
= [-4,-7,-5] = -[4,7,5]
$
$
pi: 4(x+1) +7(y-2) +5(z-4) &= 0\
4x +7y +5z - 30 &= 0
$
Odległość punktu od płaszczyzny można wyliczyć z wzoru:
$
d=abs(A x_0 + B y_0 + C z_0 + D)/sqrt(A^2 + B^2 + C^2) =
abs(4 dot 5 + 7 dot 0 + 5 dot 8 - 30)/sqrt(4^2+7^2+5^2)=
30/sqrt(90) = 30/(3 sqrt(10)) = sqrt(10)
$
Żeby wyznaczyć odbicie puntku $Q$ znajdźmy prostą  $l$
przechodzącą przez $Q$ prostopadłą do płaszczyzny $pi$.
Będzie mieć ona postać $Q + t vec(n)$, czyli:
$
l: cases(x=5 + 4 t, y=7t, z=8 + 5t) #h(2em) (t in RR)
$
Wyznaczmy $vec(Q P)$, gdzie $P$ to rzut punktu $Q$ 
na płaszczyznę $pi$, czyli 
przecięcie tej płaszczyzny z prostą $l$. 
$
4(5+4t) + 7(7t) + 5(8+5t) - 30 = 0 \
90t + 30 = 0 => t = -1/3 \
vec(Q P) = -1/3 vec(n)
$
Niech $Q'$ to będzie odbicie symetryczne punktu $Q$ względem 
płaszczyzny $pi$. Wtedy $
vec(Q P) = vec(P Q') => vec(Q Q') = 2 vec(Q P) = -2/3 vec(n)=
[-8/3, -14/3, -10/3] \
Q' = Q + vec(Q Q') = (5-8/3, -14/3, 8-10/3) =(7/3,-14/3,14/3)
$

#problem[Znajdź rzut prostokątny punktu $P=(6,4,0)$ na 
  prostą
$
  l: cases(x=6+6t,y=4+3t,z=-6t) #h(2em) (t in RR)
  $
oraz punkt symetryczny do $P$ względem tej prostej. ]

Zauważmy, że dla $t=0$ dostajemy $x=6, y=4, z=0$ czyli punkt
$P$. Oznacza to, że punkt $P$ leży na tej prostej, więc
jest swoim rzutem prostokątnym na tę prostą oraz odbiciem
symetrycznym względem niej.

#problem[Znajdź rzut prostokątny prostej 
  $k:(x-2)/1 = (y-2)/1 = (z-5)/1$ na płaszczyznę \
$pi: x+y-2z+4=0$.]

Prosta $k$ przechodzi przez punkt $P=(2,2,5)$ i ma wektor 
kierunku $vec(v) = [1,1,1]$.

Wektor normalny płaszczyzny $pi$ to $vec(n)=[1,1,-2]$.

$vec(v) compose vec(n) = 1 dot 1 + 1 dot 1 + 1 dot (-2) = 0 
=> vec(v) perp vec(n) => k parallel pi$

Prosta jest równoległa do płaszczyzny więc wystarczy znaleźć
rzut prostokątny tylko jednego punktu, np. $P$. Wyznaczmy
prostą $l$ przechodzącą przez $P$ i prostopadłą do $pi$.
$
l: cases(2 + t,2+t,5-2t) #h(2em) (t in RR)
$
Punkt przecięcia $l$ i $pi$ to rzut prostokątny $P_0$ 
punktu $P$ na $pi$.
$
(2+t) + (2+t) -2(5-2t) + 4 = 0\
6t -2 = 0 => t = 1/3 \
P_0 = (2+1/3, 2+1/3, 5 - 2/3) = (7/3, 7/3, 13/3)
$
Rzut prostej $k$ na płaszczyznę $pi$ musi mieć ten sam wektor
kierunku, ponieważ $k parallel pi => k$.

$ k: (x-7/3)/1 = (y-7/3)/1 = (z-13/3)/1\
x=y=z+2 $

#problem[Znajdź odległość prostej $l: (x-2)/1=(y+3)/2=
  (z-2)/(-1)$ od płaszczyzny
$
pi: cases(x=1-s+3t,y=2-2s-2t,z=-1+s-t) #h(2em)  (s,t in RR).
$]

Płaszczyzna $pi$ zawiera punkt $P=(1,2,-1)$ i jest rozpięta
na wektorach $vec(v)=[-1,-2,1]$ i $vec(w)=[3,-2,-1]$.

Prosta $l$ zawiera punkt $Q=(2,-3,2)$ i ma wektor kierunku 
$vec(u)=[1,2,-1] = -vec(v) => l parallel pi$, więc wystarczy 
znaleźć odległość $Q$ od $pi$.

Wektor normalny płaszczyzny $pi$:
$
vec(n) = vec(v) times vec(w) = mat(i,j,k;-1,-2,1;3,-2,-1) = 
[4,2,8] = 2 dot [2,1,4] \
pi: 2(x-1) + (y-2) + 4(z+1) = 0\
2x + y + 4z = 0 \
d(Q, pi) = abs(2 dot 2 + 1 dot (-3) + 4 dot 2 + 0)/sqrt(2^2
+1^2+4^2) = 9/sqrt(21) = (3sqrt(21))/7
$

#problem[Dana jest prosta
$
l: cases(3&x-2y&+&z&=&3,
  &x&-2&z&=&0)  
$
oraz płaszczyzna $pi_1: x+y+z+8=0$. Znajdź równanie ogólne 
  płaszczyzny $pi$ zawierającej prostą $l$ i prostopadłej
do płaszczyzny $pi_1$. Zbadaj wzajemne położenie prostej $l$
i krawędzi $k$ przecięcia się płaszczyzn $pi$ i $pi_1$.]

Z równania prostej $l$:
$
cases(reverse: #true,  x = 2z,
7z - 2y = 3 => y = 7/2z - 3/2) => 
cases(x=4t, y=-3/2 + 7t, z=2t) #h(2em) (t in RR)
$

Wynika z tego, że prosta $l$ zawiera punkt $(0,-3/2,0)$, więc płaszczyzna $pi$
też musi go zawierać.

Oprócz tego, wektor normalny płaszczyzny $pi$ musi być prostopadły do prostej 
$l$ oraz do wektora normalnego płaszczyzny $pi_1$.

Wektor kierunkowy prostej $l$ to $vec(v)=[4,7,2]$, a wektor normalny płaszczyzny
$pi_1$ to $vec(n_1)=[1,1,1]$. Niech $vec(n)=[a,b,c]$ będzie wektorem normalnym
płaszczyzny $pi$. Wtedy:
$
vec(n) compose vec(v) = 0 &and vec(n) compose vec(n_1) = 0 \
4a + 7b + 2c = 0 &and a + b + c = 0 \
$
$
2a+5b = 0 => b = - 2/5 a\
-3a - 5c = 0 => c = -3/5 a \
$
Wektor zerowy nie może być wektorem normalnym, więc możemy bez straty
ogólności przyjąć $a=5$. Wtedy $vec(n)=[5,-2,-3]$.
$
pi: 5x -2(y+3/2) -3z &= 0 \
5x - 2y - 3z - 3 &= 0
$

Proste $l$ i $k$ obie należą do płaszczyzny $pi$, więc albo są równoległe i
wtedy $l$ nie przecina nigdy płaszczyzny $pi_1$, albo przecinają się w punkcje
przebicia $pi_1$ przez prostą $l$.

$
4t -3/2 + 7t + 2t + 8 &= 0 \
13t + 13/2 &= 0 \
t &= -1/2
$
Czyli proste $k$ i $l$ przecinają się w punkcie $(-4/2, -3/2-7/2,
-2/2)=(-2,-5,-1)$.

#problem[
Znajdź punkt symetryczny do punktu $P = (2, 3, −1)$ względem
prostej
$
l :
cases(
x + y = 0,
y + z = 0
)
$
oraz płaszczyznę $π$ zawierającą prostą $l$ i punkt $P$.
]

Z równania prostej $l$:
$
cases(x=-y, z=-y) => #h(1em) l: cases(x = t, y = -t, z = t) #h(2em) (t in RR)
$

Wyznaczmy płaszczyznę $pi_0$ która przechodzi przez punkt $P$ oraz jest 
prostopadła do prostej $l$. Wektorem normalnym tej płaszczyzny będzie wektor 
kierunku prostej $l$, czyli $[1,-1,1]$.
$
pi_0: (x-2) - (y-3) + (z+1) = 0
$
Punkt $P_0$ przebicia tej płaszczyzny przez prostą $l$ to
będzie rzut prostokątny punktu $P$ na tą prostą.
$
(t-2) - (-t-3) + (t+1) &= 0 \
3t + 2 &= 0 \
t  &= -2/3 \
P_0 &= (-2/3, 2/3, -2/3) \
$
Odbicie $P'$ punktu $P$ leży po drugiej stronie $P_0$.
$
vec(P P_0) &= [-2/3 - 2, 2/3 - 3, -2/3 + 1] = [-8/3, -7/3, 1/3] \
vec(P_0 P') &= vec(P P_0) =>  \
P' &= (-2/3 - 8/3, 2/3 -7/3, -2/3 + 1/3) = 
(-10/3, -5/3, -1/3)
$

Płaszczyzna zawierająca punkt $P$ ma równanie postaci $a(x-2) + b(y-3) +
c(z+1) =0$, gdzie $a, b, c in RR$. Równanie musi zachodzić dla współrzędnych z
prostej $l$, dlatego:
$
a(t - 2) + b(-t - 3) + c(t + 1) &= 0 "dla każdego" t in RR \
t(a - b + c) -2a -3b + c &= 0
$
$
cases(a-b+c=0,-2a-3b+c=0)
$$
3a+2b &= 0 => b = -3/2 a\
-5a -2c &= 0 => c = -5/2 a\
$
$a!=0$ więc możemy bez straty ogólności przyjąć $a=2$. Wtedy płaszczyzna $pi$ ma
postać:
$
pi: 2(x-2) -3(y-3) -5(z+1) &= 0 \
2x-3y-5z&=0
$

#problem[
Zbadaj wzajemne położenie prostej $l$ prostopadłej do płaszczyzny $pi : y = 2 +
z$ i przechodzącej przez punkt $A = (1, 2, 0)$ oraz prostej $k$
przechodzącej przez punkt $B = (0, 3, −1)$ i równoległej do prostej
$
k': cases(x + y − z = −1, x − 2y − z = 2)
$
Wyznacz odległość prostych $l$ i $k$. Wyznacz objętość równoległościanu 
rozpinanego przez wersory prostych $l$ i $k$ oraz wektor $vec(A B)$.
]

Prosta $l$ ma wektor kierunku równy wektorowi normalnemu płaszczyzny $pi:
y-z-2=0$, czyli $vec(v) = [0,1,-1]$ więc jej równanie to:
$
l: cases(x=1, y = 2 + t, z = -t) #h(2em) (t in RR)
$
Wektor kierunkowy $vec(w)$ prostej $k$ jest taki sam jak prostej $k'$.
Musi być on prostopadły do
wektorów normalnych dwóch płaszczyzn których prosta $k'$ jest przecięciem.
$
vec(w) = mat(i,j,k;1,1,-1;1,-2,-1) = [-3,0,-3] = -3 dot [1,0,1]
$
Więc prosta $k$ ma równanie
$
k: cases(x=s, y=3, z = -1 + s) #h(2em) (s in RR)
$
Sprawdźmy, czy proste $l$ i $k$ mają punkty wspólne.
$
cases(1 = s, 2+t = 3 &=> t = 1, -t = -1+s &=> t = 0)
$
Nie mają punktów wspólnych a ich wektory kierunkowe nie są proporcjonalne,
dlatego nie są współpłaszczyznowe, czyli są skośne.

Odległość dwóch prostych skośnych możemy obliczyć ze wzoru:
$
d(l, k) = abs((vec(v), vec(w), vec(A B)))/abs(vec(v) times vec(w)) = 
abs((vec(v) times vec(w)) compose vec(A B))/abs(vec(v) times vec(w))
$
$
vec(A B) = [-1,1,-1]\
vec(v) times vec(w) = mat(i,j,k;0,1,-1;1,0,1) = [1,-1,-1] \
d = abs(1 dot (-1) + (-1) dot 1 + (-1) dot (-1))/sqrt(1^2 + (-1)^2 + (-1)^2)=
1/sqrt(3) = sqrt(3)/3
$

Wersory to wektory jednostkowe, więc:
$
vec(u)_l = vec(v)/norm(vec(v)) = [0,1/sqrt(2),(-1)/sqrt(2)] \
vec(u)_k = vec(w)/norm(vec(w)) = [1/sqrt(2), 0,1/sqrt(2)]
$
Objętość równoległościanu to moduł z iloczynu mieszanego:
$
V = abs((vec(u)_l, vec(u)_k, vec(A B))) = abs(mat(0,1/sqrt(2),(-1)/sqrt(2);
1/sqrt(2),0,1/sqrt(2);-1,1,-1)) = abs(-1/2 - 1/2 + 1/2) = 1/2\
$

#problem[
Dana jest płasczyzna $pi : x+2y+3z−6 = 0$ oraz prosta $l : x = y = z$.
Wyznacz punkt $A$ przecięcia się prostej $l$ i płaszczyzny $pi$ oraz rzut 
  prostokątny $k$ prostej $l$ na płaszczynę $pi$. Wyznacz pole trójkąta $A B B'$
, gdzie $B = (0, 0, 0)$ jest punktem należącym do prostej $l$, a $B'$
jest rzutem prostokątnym punktu $B$ na prostą $k$.
]

$
x+2x+3x-6&=0 \
6x &= 6 \
x = y = z &= 1 \
A &= (1, 1, 1)
$
Punkt $A$ leży na płaszczyźnie więc jest swoim własnym rzutem na nią. Aby 
znaleźć rzut prostej $l$ potrzebujemy jeszcze rzut drugiego punktu, np. $B$.

Prosta przechodząca przez $B$ prostopadła do płaszczyzny $pi$ ma równanie:
$
cases(x = t, y = 2t, y = 3t) #h(2em) (t in RR)
$
Rzut $B$ na $pi$ to przecięcie tej prostej z płaszczyzną:
$
t + 2(2t) + 3(3t) - 6 &= 0 \
14t &= 6 \
t &= 3/7 \
$
Więc $B' = (3/7, 6/7, 9/7)$. Jest to też rzut $B$ na prostą $k$.  Ma ona wektor
kierunkowy $vec(A B') = [-4/7, -1/7, 2/7]$. Możemy to uprościć do 
$vec(v) = [-4, -1, 2]$, czyli dostajemy równanie:
$
k: cases(x=1-4t, y=1-t, z=1+2t) #h(2em) (t in RR)
$
Pole trójkąta $A B B;$ to połowa pola równoległoboku wyznaczonego przez wektory 
$vec(B A)$ i $vec(B B')$.

$
P_triangle = 1/2 norm(vec(B A) times vec(B B')) \
vec(B A) times vec(B B') = mat(i, j, k; 1,1,1;3/7,6/7,9/7) = [3/7, -6/7, 3/7] =
3/7 dot [1, -2, 1] \
P_triangle = 1/2 dot 3/7 sqrt(1^2 + (-2)^2 + 1^2) = (3 sqrt(6))/14
$

#problem[
Napisz równanie parametryczne i kierunkowe prostej $l$ będącej dwusieczną kąta 
ostrego utworzonego przez proste:
  $
  l_1: (x-1)/2 = (y+1)/(-1) = (z-2)/2, l_2: (x+6)/4 = (y-1)/(-3) = (z+29)/(-12)
  $
]

#columns(2)[
Jeżeli weźmiemy wektory kierunkowe o tej samej długości to ich suma (albo
  różnica, jeśli tworzą kąt rozwarty) będzie przekątną rombu, a więc dwusieczną,
  której szukamy.
#colbreak()
#image("img/z14.png")
]

Wektor kierunkowy $l_1$ to $vec(v_0) = [2,-1,2]$, a $l_2$ to $vec(w_0) =
[4,-3,-12]$.

$
vec(v) = vec(v_0)/norm(vec(v_0)) = vec(v_0)/sqrt(2^2 + (-1)^2 + 2^2) = 
vec(v_0)/sqrt(9) = vec(v_0)/3 = [2/3, -1/3, 2/3] \
vec(w) = vec(w_0)/norm(vec(w_0)) = vec(w_0)/sqrt(4^2 + (-3)^2 + (-12)^2) = 
vec(w_0)/sqrt(169) = vec(w_0)/13  = [4/13, -3/13, -12/13]\
$

Sprawdźmy kąt między $vec(v)$ a $vec(w)$.
$
vec(v) dot vec(w) = 2/3 dot 4/13 + (-1/3) (-3/13) + 2/3 (-12/12) = 
(8 + 3 - 24)/39 = -13/39 < 0
$
Iloczyn skalarny jest ujemny, więc kąt jest rozwarty. Dwusieczna będzie mieć
wektor kierunkowy równy: $
vec(w) - vec(v) = [4/13 - 2/3, -3/13 + 1/3, -12/13 - 2/3] = 
[-14/39, 4/39, -62/39] = -2/39 dot [7, -2, 31]
$

Musimy jeszcze znaleźć punt $P$ przecięcia $l_1$ i $l_2$.
$
l_1: cases(x=1 + 2t, y=-1 - t, z = 2 + 2t) #h(1em) (t in RR), #h(2em)
l_2: cases(x=-6+4s, y=1-3s, z=-29 - 12s) #h(1em) (s in RR)
$
$
cases(1+2t = -6+4s, -1-t = 1-3s, 2+2t = -29-12s) \
$$
2t = -7 + 4s &= -31 - 12s \
16s &= -24 \
s &= -3/2 \
t &= 1/2(-7 - 6) = -13/2 \
x &= -6 - 6 = -12 \
y &= 1 + 9/2 = 11/2 \
z &= -29 + 18 = -11
$
Mamy punkt $P=(-12,11/2, -11)$, więc dwusieczna $l$ ma postać
$
l: cases(x = -12 + 7t, y = 11/2 -2t, z=-11 + 31t) #h(2em) (t in RR)
$

#problem[
Oblicz miarę kąta między:
]
#subproblem[
prostą $l: (x-3)/2 = (y-1)/0 = (z+2)/(-3)$ i płaszczyzną $pi = x-z=0$;
]
$
vec(v) = [2,0,-3] \
vec(n) = [1,0,-1] \
sin alpha = abs(vec(v) dot vec(n))/(abs(vec(v)) dot abs(vec(n))) = 
abs(2 + 0 + 3)/(sqrt(13) dot sqrt(2)) = 5/sqrt(26) \
alpha = arcsin((5sqrt(26))/26)
$
#subproblem[
płaszczyznami $π_1 : x − 2y + 3z − 5 = 0, π_2 : 2x + y − z + 3 = 0$;
]
$
vec(n)_1 = [1,-2,3] \
vec(n)_2 = [2,1,-1] \
cos alpha = abs(vec(n)_1 dot vec(n)_2)/(abs(vec(n)_1) dot abs(vec(n)_2)) = 
abs(2-2-3)/(sqrt(14) dot sqrt(6)) = 3/(2sqrt(21)) \
alpha  = arccos(sqrt(21)/14)
$
#subproblem[
prostymi:
$
l_1: cases(x=1-t, y=-2+t, z=3t) #h(1em) (t in RR) #h(2em)
l_2: cases(x=3-2s, y=4-s, z=1+3s) #h(1em) (s in RR)
  $
]
$
vec(v)_1 = [-1,1,3] \
vec(v)_2 = [-2,-1,3] \
cos alpha = abs(vec(v)_1 dot vec(v)_2)/(abs(vec(v)_1) dot abs(vec(v)_2)) = 
abs(2-1+9)/(sqrt(11) dot sqrt(14)) = 10/(sqrt(154)) \
alpha  = arccos((5sqrt(154))/77)
$
