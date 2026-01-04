#import "../../../template.typ": *
#show: template

#let hl(content) = box(
    content,
  
    fill: rgb("#fffe69"),
 )

#let h(it) = hl[*#it*]

#let m(a) = [ $[#a _(i j)]_(m times n)$ ]

= Odwzorowania liniowe

$V, W$ - przestrzenie wektorowe nad ciałem $K$ \
$f: V -> W$ to #h[odwzorowanie liniowe] $<=>$
- $forall u, v in V, alpha in K: f(u+v) = f(u) + f(v) and f(alpha v) = alpha
  f(v)$ 
- $forall v_1, ..., v_n in V, alpha_1, ..., alpha_n in K: f(alpha_1 v_1 + ... +
alpha_n v_n) = alpha_1 f(v_1) + ... + alpha_n f(v_n)$

Jeżeli $f:V -> W$ jest odwzorowaniem liniowym to:
- $f(overline(0)_V) = overline(0)_W$ (#h[zahowanie zera])
- $forall v in V: f(-v) = -f(v)$
- jest jednoznacznie określone przez #h[wartości $f$ na wektorach bazowych]
  $V$

= Obrazy i jądra
$f: V->W$ - odwzorowanie liniowe 

#h[Jądro] odwzorowania $f$: $"Ker"f := {v in V: f(v) = overline(0)_W}$ \
$"Ker"f$ jest #h[podprzestrzenią $V$] \

#h[Obraz] odwzorowania $f$ (zbiór wartości): $"Im"f := {w in W: exists v in V: w
= f(v)}$ \
$"Im"f$ jest #h[podprzestrzenią $W$] \
$"Im"f = $#h[$"Lin"f(B)$], gdzie $B$ to baza $V$ \

#h[Rząd odwzorowania] $r(f) = dim "Im"f$

Jeżeli $dim V < infinity$ to #h[$dim V = dim "Ker"f + dim "Im"f$]

= Morfizmy
$f: V->W$ - odwzorowanie liniowe 

- #h[monomorfizm]: $f$ to iniekcja $<=> "Ker"f = {overline(0)} <=> r(f) = dim V$
- #h[epimorfizm]: $f$ to surjekcja ($"Im"f = W$) $<=> r(f) = dim W$
- #h[izomorfizm]: $f$ to bijekcja - #h[endomorfizm]: $V = W$
- #h[automorfizm]: $f$ to bijekcja i $V = W$
- #h[forma liniowa]: $W = K$

#h[przestrzenie izomorficzne]: $V ~ W$ jeżeli istnieje izomorfizm z $V$ na $W$ $<=> dim V = dim W$

$cal(L)(V, W)$ - #h[zbiór odwzorowań] liniowych $f: V -> W$ \

Struktura $(cal(L)(V, W), K, +, dot)$ jest #h[przestrzenią wektorową] \
