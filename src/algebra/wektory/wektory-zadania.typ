#import "../../../template.typ": *
#show: template

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

To samo co $(ZZ slash 2, +, dot)$, które jest ciałem.

#subproblem[
  W zbiorze $A^2$ określamy działanie dodawania jako: $(a, b) + (c, d) = (a
  plus.circle c, b plus.circle d)$, oraz mnożenie przez elementy z ciała $A$
  następująco: $alpha dot (a, b) = (alpha dot.circle a, alpha dot.circle b)$.\
  Sprawdź, czy $(A^2, +, dot)$ jest przestrzenią wektorową nad ciałem $A$.\
]

+ $A^2 != emptyset$
+ $(A, plus.circle, dot.circle)$ to ciało przemienne, bo $dot.circle$ jest
  przemienne
+ $+$ i $dot$ prowadzą do $A^2$, bo $(a plus.circle c), (b plus.circle d), (alpha
  dot.circle a), (a dot.circle b) in A$
+ #[$(A^2, +)$ jest grupą abelową, bo
- $+$ jest wewnętrzne 
- $+$ jest łączne i przemienne co wynika z łączności i przemienności
  $plus.circle$
- istnieje element neutralny $(0, 0): (a, b) + (0, 0) = (a plus.circle 0, b
  plus.circle 0) = (a, b)$
- każdy element ma element symetryczny: $(a, b) + (a, b) = (a plus.circle a, b
  plus.circle b) = (0, 0)$
]
+ #[$alpha dot ((a, b) + (c, d)) = alpha dot (a plus.circle c, b plus.circle d)
= (alpha dot.circle (a plus.circle c), alpha dot.circle (b plus.circle c)) =$ \
$(alpha dot.circle a plus.circle alpha dot.circle c, 
alpha dot.circle b plus.circle alpha dot.circle d) = (alpha dot.circle a, alpha
dot.circle b) + (alpha dot.circle c, alpha dot.circle d) = alpha dot (a, b) +
alpha dot (c, d)$ ]
+ #[ $(alpha dot.circle beta) dot (a, b) = ((alpha dot.circle beta) dot.circle 
a, (alpha dot.circle beta) dot.circle b) = (alpha dot.circle (beta dot.circle 
a), alpha dot.circle (beta dot.circle b)) =$ \ 
$alpha dot (beta dot a, beta dot b) = alpha dot (beta dot (a, b))$ ]
+ #[ $(alpha plus.circle beta) dot (a,b) = ((alpha plus.circle beta) dot.circle
  a, (alpha plus.circle beta) dot.circle b) = ((alpha dot.circle a) plus.circle
  (beta dot.circle a), (alpha dot.circle b) plus.circle (beta dot.circle b)) = 
(alpha dot.circle a, alpha dot.circle b) + (beta dot.circle a, beta dot.circle
b) = (alpha dot (a, b)) + (beta dot (a, b))$]
+ #[ $(a, b) dot bold(1) = (a dot.circle 1, b dot.circle 1) = (a, b)$]

$(A^2, +, dot)$ jest przestrzenią wektorową.

#subproblem[
  Wykaż, że przestrzeń $A^2$ posiada dokładnie pięć podprzestrzeni.
]

$A^2 = {(0,0), (1, 0), (0, 1), (1, 1)}$, wektor $(0,0)$ należy do każdej
podprzestrzeni.\
${(0,0)} checkmark$ \
${(0,0), (0,1)} checkmark$ \
${(0,0), (1,0)} checkmark$ \
${(0,0), (1,1)} checkmark$ \
${(0,0), (0,1), (1,0)} crossmark$, bo $(0, 1) + (1, 0) = (1,1)$ \
${(0,0), (0,1), (1,1)} crossmark$, bo $(0, 1) + (1, 1) = (1,0)$ \
${(0,0), (1,0), (1,1)} crossmark$, bo $(1, 0) + (1, 1) = (0,1)$ \
${(0,0), (0,1), (1,0), (1, 1)} checkmark$ \

#problem[
Sprawdź, które z następujących zbiorów są podprzestrzeniami przestrzeni $RR^3$:
]
#subproblem[ $A = {(x, y, z) : x + y + z = a, a in RR}$]
Kontrprzykład: $a = 1, (1, 0, 0) + (0, 0, 1) = (1, 0, 1) in.not A$

#subproblem[ $B = {(x, y, z) : x >= 0}$]
Kontrprzykład: $(-1) dot (1, 0, 0) = (-1, 0, 0) in.not B$

#subproblem[ $C = {(x, y, 1) : x, y in RR}$]
Kontrprzykład: $(0, 0, 1) + (0, 0, 1) = (0, 0, 2) in.not C$

#subproblem[ $D = {(x, y, z) : x^2 + y^2 + z^2 <= 1}$]
Kontrprzykład: $2 dot (1, 0, 0) = (2, 0, 0) in.not D$

#subproblem[ $E = {(x, y, z) : x = 2y and z = 0}$]
$forall alpha, beta in RR: forall (x_1, y_1, z_1), (x_2, y_2, z_2) in E: 
alpha dot (x_1, y_1, z_1) + beta dot (x_2, y_2, z_2) = \ (alpha x_1 + beta x_2, 
alpha y_1 + beta y_2, alpha z_1 + beta z_2) $ \
$alpha x_1 + beta x_2 = alpha dot 2 y_1 + beta dot 2 y_2 = 2(alpha y_1 + beta
y_2)$ \
$alpha z_1 + beta z_2 = alpha dot 0 + beta dot 0 = 0$

#subproblem[ $F = {(x, y, z) : 3x + 2y - 8z = 0}$]
$forall alpha, beta in RR: forall (x_1, y_1, z_1), (x_2, y_2, z_2) in E: 
alpha dot (x_1, y_1, z_1) + beta dot (x_2, y_2, z_2) = \ (alpha x_1 + beta x_2, 
alpha y_1 + beta y_2, alpha z_1 + beta z_2) $ \
$3(alpha x_1 + beta x_2) + 2(alpha y_1 + beta y_2) - 8(alpha z_1 + beta z_2) = \
alpha(3x_1 + 2y_1 - 8z_1) + beta(3x_2 + 2y_2 - 8z_2) = alpha dot 0 + beta dot 
0 = 0$

#problem[
Które z następujących podzbiorów przestrzeni wektorowej $F(RR, RR)$ są jej podprzestrzeniami:
]
#subproblem[$A = {f : f(2) = f(7)} checkmark$]
$f, g in A, alpha in RR, (f + g) in^? A, alpha dot f in^? A$ \
$(f+g)(2) = f(2) + g(2) = f(7) + g(7) = (f+g)(7)$ \
$(alpha dot f)(2) = alpha f(2) = alpha f(7) = (alpha dot f)(7)$

#subproblem[$B = {f : f(7) = 2 + f(1)} crossmark$]
$f, g in B, alpha in RR, (f + g) in^? B, alpha dot f in^? B$ \
$(f+g)(7) = f(7) + g(7) = 2 + f(1) + 2 + g(1) = 4 + (f+g)(1)$ sprzeczność

#subproblem[$C = {f : f(x_0) = 3} crossmark$]
$f, g in C, alpha in RR, (f + g) in^? C, alpha dot f in^? C$ \
$(f+g)(x_0) = f(x_0) + g(x_0) = 3 + 3 = 6$ sprzeczność

#problem[
Które z następujących podzbiorów przestrzeni wektorowej $RR[x]$ (przestrzeń wielomianów nad ciałem $RR$) są jej podprzestrzeniami:
]

#subproblem[$A = {w : w(0)w(1) = 0} crossmark$]
Kontrprzykład: $p(x) = x in A , q(x) = x-1 in A$\
$(p+q)(x) = x + x-1 = 2x-1$\
$(p+q)(0)(p+q)(1) = -1 dot 1 = -1$

#subproblem[$B = {w : "stopień" w <= 6} checkmark$]
$q(x), p(x) in B, alpha in RR$ \
$deg (q + p) <= 6 and deg (alpha q) <= 6$

#subproblem[$C = {w : "stopień" w = 6} crossmark$]
Kontrprzykład: $x^6 + (-x^6) = 0 in.not C$

#subproblem[$D = {w : w(x) "jest podzielne przez" x^2 + 1} checkmark$]
$D = {w: w(x) = (x^2+1)q(x)}$ \
$(x^2+1)q(x), (x^2+1)p(x) in D, alpha in RR$\
$(x^2+1)q(x) + (x^2+1)p(x) = (x^2+1)(q(x) + p(x)) in A$ \
$alpha dot (x^2+1)q(x) = (x^2+1)(alpha q(x)) in A$

#problem[
Zbadaj, które z układów wektorów należących do $RR^3$ są liniowo niezależne:
]
#subproblem[$B_1 : (1, 4, 3), (-1, 2, 1), (0, 6, 4) crossmark$]
$1 dot (1, 4, 3) + 1 dot (-1, 2, 1) + (-1) dot (0, 6, 4) = (1 - 1 - 0, 4 + 2 -
6, 3 + 1 - 4) = (0, 0, 0)$

#subproblem[$B_2 : (2, 3, -1), (2, 0, 0), (0, 3, 1) checkmark$]
$x(2, 3, -1) + y(2, 0, 0) + z(0, 3, 1) = (0, 0, 0)$ \
$ cases(
2x+2y = 0,
3x+3z=0,
-x+z=0
) <=> cases(x=0, y=0, z=0) $

#subproblem[$B_3 : (2, -7, 2), (0, 2, 4), (2, -1, 5) checkmark$]
$x(2, -7, 2)+y(0, 2, 4)+z(2, -1, 5)=(0, 0, 0)$
$ cases(2x+2z=0, -7x+2y-z=0, 2x+4y+5z=0) <=> cases(x=-z, y=-3z, -9z=0) <=>
cases(x=0, y=0, z=0) $

#subproblem[Znajdź współrzędne wektora $(1, 1, 1)$ względem tych $B_i$, które
stanowią bazę w $RR^3$.]

#columns[
$ cases(2x+2y = 1,3x+3z=1,-x+z=1) <=> cases(x=-1/3, y=5/6, z=2/3) $
$ x &= z - 1 \
  3z - 3 + 3z &= 1 \
  6z &= 4 \
$
#colbreak()
$ cases(2x+2z=1, -7x+2y-z=1, 2x+4y+5z=1) <=> cases(x=-1/2, y=-3/4, z=1) $
$
  x &= 1/2 - z \
  -7/2 +7z + 2y - z &= 1\
  y&= 9/4 - 3z \
  1 - 2z + 9 - 12z + 5z &= 1 \
  -9z &= -9 \
$
]

#problem[
Sprawdź liniową zależność wektorów $sqrt(2)$ i $2$ w przestrzeni $(RR, +, dot)$ nad ciałem $QQ$ oraz w przestrzeni $(RR, +, dot)$ nad ciałem $RR$.
]

$
p sqrt(2) + 2q &= 0, p, q in QQ \
underbrace(p, in QQ) underbrace(sqrt(2), in.not QQ) &= underbrace(- 2q, in QQ)
=> p = q = 0
$
liniowo niezależne
$
x sqrt(2) + 2y &= 0, x, y in RR \
x &= (-2 y)/sqrt(2) \
$
liniowo zależne

#problem[
Dla jakiej wartości parametru $k$ wektor $v = (1, -2, k) in RR^3$ jest kombinacją liniową wektorów $u_1 = (1, 1, 1)$ i $u_2 = (1, 2, 3)$?
]

$x(1, 1, 1) + y(1, 2, 3) = (1, -2, k)$
$
x + y &= 1 \
x + 2y &= -2 \
x + 3y &= k \
y &= -3 \
x &= 4 \
k &= -5
$

#problem[
Sprawdź, czy następujące funkcje są liniowo niezależne w przestrzeni $F(RR, RR)$:
]
#subproblem[$f = "Id", g(x) = sin x, h(x) = cos x$]
$ 
a x + b sin x + c cos x &= 0 \ 
x = 0 => c cos x &= 0 => c = 0 \
x = pi => a x &= 0 => a = 0 \
x &= pi/2 => b = 0
$
liniowo niezależne
#subproblem[$f(x) = 1, g(x) = sin x, h(x) = cos x, p(x) = sin^2 x, q(x) = cos^2
x$]

$-1 dot 1 + 0 dot sin x + 0 dot cos x + 1 dot sin^2 x + 1 dot cos^2 x = 0$

liniowo zależne

#problem[
W $RR^3$ dane są trzy wektory: $u = (0, 1, -1)$, $v = (-1, 0, 1)$, $w = (1, -1, 0)$.
]
#subproblem[Wykaż, że wektory te są parami niezależne.]
#columns(3)[
$ 
x(0, 1, -1) + y(-1, 0, 1) = 0 \
cases(-y &= 0, x &= 0, -x + y &= 0) \
x = y = 0
$
#colbreak()
$
x(0, 1, -1) + y(1, -1, 0) = 0 \
cases(y &= 0, x -y &= 0, -x &= 0) \
x = y = 0
$
#colbreak()
$
x(-1, 0, 1) + y(1, -1, 0) = 0 \
cases(-x+y &= 0, -y &= 0, x &= 0) \
x = y = 0
$
]
#subproblem[Czy układ wektorów $u, v, w$ jest liniowo niezależny?]
$(0, 1, -1) + (-1, 0, 1) + (1, -1, 0) = (0, 0, 0) => u, v, w$ są liniowo zależne

#subproblem[Podaj wymiar oraz bazę podprzestrzeni generowanej przez te wektory.]

Wymiar $2$, baza to dowolne dwa z $u, v, w$.

#problem[
Udowodnij, że zbiór: $A = {(x_1, x_2, x_3, x_4) in RR^4 : x_1 + x_2 - 3x_3 - 3x_4 = 0, x_1 - x_2 + 3x_3 + x_4 = 0}$ jest podprzestrzenią przestrzeni $RR^4$. Wyznacz bazę tej podprzestrzeni oraz bazy podprzestrzeni z zadania 2.
]

$
x_1 + x_2 - 3x_3 - 3x_4 &= 0 \
x_1 - x_2 + 3x_3 + x_4 &= 0 \
2x_1 - 2x_4 &= 0 \
x_1 &= x_4 \
x_4 + x_2 - 3x_3 - 3x_4 &= 0 \
x_2 &= 3x_3 + 2x_4
$
Niech $x_3 = a, x_4 = b$. Wtedy $A = {(b, 2a+2b, a, b): a,b in RR}$ \
$(b, 2a+2b, a, b) = a(0, 2, 1, 0) + b(1, 2, 0, 1) => 
{(0, 2, 1, 0), (1, 2, 0, 1)}$ to baza $A$.

Podprzestrzenie z zadania *2*: \
$E = {(x, y, z) : x = 2y and z = 0}, F = {(x, y, z) : 3x + 2y - 8z = 0}$ \

$E = {(2y, y, 0):y in RR}={y(2, 1, 0): y in RR} => {(2, 1, 0)} $ to baza $E$\

$F={(x, y, (3x+2y)/8), x,y in RR} = {x(1, 0, 3/8) + y(0, 1, 1/4), x,y in RR}
=>$ \ $
{(1, 0, 3/8),(0, 1, 1/4)}$ to baza $F$
#problem[
Dane są dwa układy wektorów: $B_1 : (1, i, 1+i), (i, -1, 2-i), (0, 0, 3)$ i $B_2 : (2i, 1, 0), (2, -i, 1), (0, 1+i, 1-i)$.
]
#subproblem[Sprawdź, czy któryś z tych układów stanowi bazę przestrzeni
$CC^3(CC)$ lub $CC^3(RR)$.]

Niech $a + b i, c + d i, e + f i in CC$.
$
(a + b i)(1, i, 1+i) + (c + d i)(i, -1, 2-i) + (e + f i)(0, 0, 3) = 0 <=> \
cases(
a + b i + c i - d = 0 <=> a-d = b+c = 0,
a i - b - c - d i = 0 <=> a-d = b+c = 0,
...
)\
=> B_1 "nie jest bazą"\
(a + b i)(2i, 1, 0) + (c + d i)(2, -i, 1) + (e + f i)(0, 1+i, 1-i) = 0 <=> \
cases(
2a i - 2b + 2c + 2d i = 0,
a + b i - c i + d + e + f i + e i - f = 0,
c + d i + e + f i - e i + f = 0
) <=> 
cases(
a+d = 0,
b-c = 0,
a+d+e-f =0,
b-c+e+f=0,
c+e+f = 0,
d+f-e = 0,
) <=>
cases(
a=0,
b=0,
c=0,
d=0,
e=0,
f=0
)\
=> "wektory w" B_2 "są liniowo niezależne"
$

$dim CC^3 (CC) = 3, dim CC^3(RR) = 6$, co pokażemy w *11.b*. Z tego wynika, że 
$B_2$ jest bazą w $CC^3(CC)$, ale nie w $CC^3(RR)$.

#subproblem[Jaki wymiar mają przestrzenie $CC^n (CC)$ i $CC^n (RR)$?]

Przykładowa baza w $CC^n (CC)$ to $((1, 0, ..., 0), (0, 1, ..., 0), (0, 0, ...,
1))$, więc $dim CC^n (CC)=n$.

Przykładowa baza w $CC^n (RR)$ to \ $((1, 0, ..., 0), (i, 0, ..., 0), 
(0, 1, ..., 0), (0, i, ..., 0), (0, 0, ...,1), (0, 0, ..., i))$, \
więc $dim CC^n (RR)=2n$.

#subproblem[Znajdź współrzędne wektora $(1, 0, 1)$ w bazie z podpunktu a).]

$
(a + b i)(2i, 1, 0) + (c + d i)(2, -i, 1) + (e + f i)(0, 1+i, 1-i) = (1, 0, 1) <=> \
cases(
2a i - 2b + 2c + 2d i = 1,
a + b i - c i + d + e + f i + e i - f = 0,
c + d i + e + f i - e i + f = 1
) <=> 
cases(
a+d = 0,
-b+c = 1/2,
a+d+e-f =0,
b-c+e+f=0,
c+e+f = 1,
d+f-e = 0,
) <=>
cases(
a=0,
b=0,
c=1/2,
d=0,
e=1/4,
f=1/4
)\
$

$(1, 0, 1) = [0, 1/2 i, 1/4 + 1/4 i]_(B_2)$

#problem[
Niech będzie dana następująca podprzestrzeń $U$ przestrzeni wektorowej $CC^2(RR)$ (tj. przestrzeni $CC^2$ nad ciałem liczb rzeczywistych $RR$), gdzie $p$ jest pewną liczbą rzeczywistą:
$ U := "Lin"{(p i, (p-1)i), (p-2-p i, p), (-1-p i, 2p)}. $
Zbadaj dla jakich wartości parametru rzeczywistego $p$, zachodzi:
$ (3-2p, p-1+(1-p)i) in U. $
Dla wszystkich takich wartości parametru $p in RR$, wyznacz $dim U$.
]

Niech $a, b, c in RR$.
$
cases(
a p i + b p - 2b - b p i - c - c p i = 3 - 2 p,
a p i - a i + b p + 2 c p = p - 1 + i - p i
) <=>
cases(
a p - b p - c p = 0 <=> p(a-b-c)=0,
b p - 2b - c - 3 + 2p = 0,
a p - a - 1 + p = 0 <=> (a+1)(p-1)=0,
b p + 2 c p - p + 1 = 0
)
$

$
p != 0 and p != 1 =>\
a &= -1\
c &= -1-b\
b p - 2 b + 1 + b - 3 + 2p &= 0\
b p -2 p -2 b p - p +1 &= 0 "dodajemy stronami"\ 
cancel(b p) - 2 b + 1 + b - 3 + cancel(2p) + cancel(b p) -cancel(2 p) - cancel(2 b p) - p +1 &= 0\
-b-1&=p
$

#problem[
Wyznacz bazę przestrzeni $(P_(2n), +, dot)$ nad ciałem $RR$, gdzie $P_(2n) := {w in RR[x]_(2n) : w(x) = w(-x)}$.
]

$P_(2n) = {a_0 + a_2 x^2 + a_4 x^4 + ... + a_(2n) x^(2n), a_0,... a_(2n) in RR}$

$B = (1, x^2, x^4, ..., x^(2n))$

#problem[
W przestrzeni wielomianów $RR[x]_2$ dana jest baza $B_1 = (1, x, x^2)$. Wykaż, że układ $B_2 = (1, x-2, (x-2)^2)$ stanowi bazę $RR[x]_2$. Podaj współrzędne wielomianu $P(x) = 2x^2 + 3$ względem obu baz. Czy zbiór $A = {p in RR[x]_2 : p(1) = p'(0)}$ stanowi podprzestrzeń tej przestrzeni? Jeżeli tak, wyznacz jej bazę i wymiar.
]

$a dot 1 + b(x-2) + c(x-2)^2 = a + b x + b + c x^2 - 2 c x + 4c = \
c x^2 + (b -2c) x + a + b + 4c$

Ta kombinacja liniowa musi wygenerowac każdy wielomian postaci $alpha x^2 + beta
x + gamma, alpha, beta, gamma in RR$

$
c &= alpha \
b - 2 alpha &= beta \
b &= beta + 2 alpha \
a + beta + 2 alpha + alpha &= gamma \
a &= -3 alpha - beta + gamma
$ 

$2x^2 + 3 = [3, 0, 2]_(B_1) = [-9, 6, 2]_(B_2)$

$p(x) = a x^2 + b x + c => p'(x) = 2a x + b$ \
$
p(1) &= p'(0) \
a + b + c &= b \
c &= -a
$
$A = {p in RR[x]_2: p(x) = a x^2 + b x -a}$\
$alpha, beta in RR, p(x) = a x^2 + b x -a in A, q(x) = c x^2 + d x -c in A$\
$alpha p(x) + beta q(x) = (alpha a + beta c) x^2 + (alpha b + beta d)x - 
(alpha a + beta c) in A =>$ \
$A$ jest podprzestrzenią $RR[x]_2$ \
$a x^2 + b x - a = a(x^2 - 1) + b(x) => (x^2-1,x)$ to baza $A$

#problem[
Wykaż, że zbiór liczb postaci ${a + b sqrt(2) + c sqrt(3) + d sqrt(6) + e sqrt(12) : a, b, c, d, e in QQ}$ tworzy przestrzeń wektorową nad ciałem liczb wymiernych. Znajdź bazę tej przestrzeni.
]

#problem[
Wiedząc, że wektory $u, v, w$ stanowią bazę przestrzeni liniowej $V$ (nad ciałem $RR$), zbadaj, który z poniższych układów także stanowi jej bazę:
]
#subproblem[$B_1 = (u - 2v + w, 3u + w, u + 4v - w)$]
$
a u-2a v+a w +  3b u+b w + c u+4c v-c w&=0\
u(a + 3b + c) + v(-2a + 4c) + w(a + b - c) &= 0 <=> $
$
cases(
a &+ 3b &+ c &= 0,
-2a &&+ 4c &= 0,
a &+ b &- c &= 0
) $
$
a &= -3b - c\
6b + 2c + 4c &= 0 \
b &= -c \
3c - c - c - c &= 0 \
c &in RR
$
Wektory są liniowo zależne, czyli nie stanowią bazy.

#subproblem[$B_2 = (u, 2u + v, 3u - v + 4w)$]

$
a u + 2 b u + b v + 3 c u - c v + 4 c w &= 0 \
u(a + 2b+3c) + v(b -c) + w(4c) &= 0 <=>
$
$
cases(a+2b+3c=0, b-c=0, 4c=0) <=> cases(a=0, b=0, c=0)
$
Wektory w $B_2$ są liniowo niezależne i $dim B_2 = 3$ więc $B_2$ jest bazą $V$.

#subproblem[
Wyznacz współrzędne wektora $a = 2u - 3v + 8w$ względem tej bazy.
]

$
cases(a+2b+3c=2, b-c=-3, 4c=8) <=> cases(a=-2, b=-1, c=2)
$

$a = [-2, -1, 2]_(B_2)$

#problem[
Wykaż, że dla dowolnych $x_0, x_1, ..., x_n in RR$ takich, że $x_i eq.not x_j$ dla $i eq.not j$, wielomiany $w_0, w_1, ..., w_n$, zdefiniowane jako:
$ w_i (x) = product_(j=0, j eq.not i)^n (x - x_j)/(x_i - x_j) quad "dla" i = 0, 1, ..., n, $
stanowią bazę przestrzeni $RR[x]_n$.
]

Wektorów $w_i$ jest tyle samo co $dim RR[x]_n = n+1$, więc wystarczy pokazać, że
wektory te są liniowo niezależne.

Niech $a_0, a_1, ..., a_n in RR$.
$
  a_0 w_0 (x) + a_1 w_1 (x) + ... + a_n w_n (x) =^? 0
$

Zauważmy, że dla $x = x_i$
$
w_i (x_i) = product_(j=0, j != i)^n (x_i - x_j)/(x_i - x_j) = 1,
$

a dla $x = x_k$, gdzie $k in {0, 1, ..., n}, k != i, w_i (x_k) = 0$, bo 
występuje takie $j$, że $j=k$ czyli występuje czynnik $(x_k - x_j) = 0$.

Niech $x := x_0$. Wtedy:

$
  a_0 w_0 (x) + a_1 w_1 (x) + ... + a_n w_n (x) = a_0 dot 1 + a_1 dot 0 + ... +
a_n dot 0 = a_0 => a_0 = 0
$
Analogicznie pokazujemy, podstawiając za $x$ kolejne $x_i$, że $a_i = 0$ dla
każdego $i = 0, 1, ..., n$.

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
