#import "../../../template.typ": *
#show: template

#let co = math.class("relation", $circle.small$)

#let hl(content) = box(
    content,
  
    fill: rgb("#fffe69"),
 )

#let h(it) = highlight[*#it*]
#let h(it) = hl[*#it*]

= Działania

#h[działanie wewnętrzne] \
$h:A times A -> A$\
$(A, h) "lub" (A, co)$ - zbiór z określonym działaniem\
$h(a, b) = a co b$ - wynik działania\

#h[działanie zewnętrzne]\
$g: F times X -> X$, gdzie $F, X != emptyset$\
$g(alpha, x) = alpha * x$, gdzie $alpha in F, x in X$ - wynik działania

= Grupy

$(A, co), A != emptyset$

Struktura $(A, co)$ to #h[grupa #text(fill: red)[(przemienna/abelowa)]] 
gdy spełnione są warunki:

+ #h[działanie wewnętrzne]: $forall x, y in A: x co y in A$
+ #h[łączność]: $forall x, y, z in A: (x co y) co z = x co (y co z)$
+ #h[element neutralny]: $exists e in A: x co e = x = e co x$ (jest jeden)
+ #h[element symetryczny]: $forall x in A : exists x' in A: 
x co x' = e = x' co x$ (dla każdego $x$ jest jeden)
+ #text(fill: red)[#h[przemienność]] : $forall x, y in A: x co y = y co x$

= Pierścienie

$P != emptyset$, $co, *$ - #h[działania wewnętrzne] w zbiorze $P$

Struktura $(P, co, *)$ to #h[pierścień #text(fill: red)[(przemienny)]] gdy spełnione są warunki:

+ struktura $(P, co)$ jest #h[grupą abelową]
+ #h[łączność $*$]: $forall x, y, z in P: (x*y)*z=x*(y*z)$
+ #h[prawostronna rozdzielność $*$ względem $co$]: $forall x, y, z in P:
(x co y)*z = (x*z)co(y*z)$
+ #h[lewostronna rozdzielność $*$ względem $co$]: $forall x, y, z in P:
x*(y co z) = (x*y) co (x*z)$
+ #text(fill: red)[#h[przemienność $*$]]: $forall x, y in P: x*y = y*x$


#h[działanie addytywne]: $co$ lub $+$. \ Elementem neutralnym jest #h[zero
] ($bold(0)$). $x, y in P$ to #h[dzielniki $bold(0)$] $<=> x,y != bold(0) and x
dot y = bold(0)$ \ Element symetryczny do $x$ względem $+$ to element 
#h[przeciwny] ($-x$).

#h[działanie multiplikatywne]: $*$ lub $dot$. \

#h[pierścień z jednością] to pierścień, w którym
istnieje element neutralny ze względu na $dot$ czyli #h[jedynka] ($bold(1)$).

#h[pierścień całkowity] to pierścień #h[przemienny] ($forall x, y in P: x dot y
= y dot x$), \ z #h[jednością] i #h[bez
  dzielników $bold(0)$].

= Ciała

Pierścień $(K, +, dot)$ to #h[ciało #text(fill: red)[(przemienne)]] gdy 
spełnione są warunki:
+ jest to #h[pierścień z jednością]: istnieje element neutralny względem $dot$
  ($bold(1)$)
+ istnieje #h[element odwrotny do $x$ względem $dot$] :\ $forall x in K without 
{0}: exists x^(-1) in K: x dot x^(-1) = bold(1) = x^(-1) dot x$
+ #text(fill: red)[#h[przemienność $dot$]] : $forall x, y, in K: x dot y = y dot x$

Struktura $(K, +, dot)$ to #h[ciało #text(fill: red)[(przemienne)] ]
gdy spełnione są warunki:
+ struktura $(K, +)$ jest #h[grupą abelową]
+ struktura $(K without {bold(0)}, dot)$ jest #h[grupą #text(fill:
  red)[(przemienną)]]
+ #h[prawostronna rozdzielność $dot$ względem $+$] : $forall x, y, z in K:
(x+y) dot z = (x dot z)+(y dot z)$
+ #h[lewostronna rozdzielność $dot$ względem $+$] : $forall x, y, z in K:
x dot (y+z) = (x dot y) + (x dot z)$

W ciele nie ma dzielników $bold(0)$.

= Homomorfizmy

Odwzorowanie $h: A_1 -> A_2$ to #h[homomorfizm grupy] $(A_1, +)$ w grupę $(A_2,
plus.circle) <=>$ \ $ forall x, y in A_1: h(x+y) = h(x) plus.circle h(y)$ 

$e_1$ jest elementem neutralnym w $A_1 => h(e_1)$ jest elementem neutralnym w
$A_2$

$forall x in A_1: h(x') = (h(x))'$

Odwzorowanie $h: P_1 -> P_2$ nazywamy #h[homomorfizmem pierścienia/ciała] $(P_1, plus, dot)$ w pierścień/ciało
$(P_2, plus.circle, dot.circle) <=> $
+ $forall x, y in P_1: h(x+y) = h(x) plus.circle h(y)$
+ $forall x, y in P_1: h(x dot y) = h(x) dot.circle h(y)$

Dwie struktury są #h[izomorficzne], jeżeli istnieje #h[izomorfizm], czyli
#h[homomorfizm bijektywny], jednej struktury na drugą.

#h[Automorfizm] to izomorfizm struktury na samą siebie.
