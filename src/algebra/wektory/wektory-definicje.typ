#import "../../../template.typ": *
#show: template

#let hl(content) = box(
    content,
  
    fill: rgb("#fffe69"),
 )

#let h(it) = hl[*#it*]

= Przestrzeń wektorowa (liniowa)
$V != emptyset$ - zbiór, $(K, plus.circle, dot.circle)$ - ciało przemienne \
#h[wektor] - element zbioru $V$ \
#h[skalar] - element ciała $K$ \
$+: V times V -> V$ - działanie wewnętrzne w $V$ (#h[dodawanie wektorów]) \
$dot: K times V -> V$ - działanie zewnętrzne w $V$ (#h[mnożenie wektora przez
skalar])


$(V, K, +, dot)$ jest #h[przestrzenią wektorową (liniową) nad ciałem $K$]$ <=>$
+ struktura $(V, +)$ jest grupą abelową
+ $forall u, v in V:forall alpha in K: alpha dot (u+v) = (alpha dot u) + (alpha
  dot v)$
+ $forall v in V: forall alpha, beta in K: (alpha dot.circle beta) dot v = alpha
  dot (beta dot v) and (alpha plus.circle beta) dot v = (alpha dot v) + (beta
dot v)$
+ $forall v in V: bold(1) dot v = v$, gdzie $bold(1)$ jest elementem neutralnym
  względem $dot.circle$

Zamiast $(V, K, +, dot)$ czasami pisze się $V$ lub $V(K)$.

#h[wektor zerowy $overline(0)$] - element neutralny względem $+$

= Własności działań w przestrzeni wektorowej
$(V, K, +, dot)$ - przestrzeń wektorowa
+ $forall v in V: bold(0) dot v = overline(0)$ 
+ $forall alpha in K: alpha dot overline(0) = overline(0)$
+ $forall alpha in K: forall v in V: (-alpha) dot v = alpha dot (-v) 
= -(alpha dot v)$
+ $forall alpha in K: forall v in V: alpha dot v = overline(0) <=> alpha =
  bold(0) or v = overline(0)$
+ $forall alpha in K without {bold(0)}: forall u, v in V: alpha dot u = alpha
  dot v => u = v$
+ $forall alpha, beta in K: forall v in V without {overline(0)}: alpha dot v =
  beta dot v => alpha = beta$

= Podprzestrzeń wektorowa (liniowa)
$(V, K, +, dot)$ - przestrzeń wektorowa \
$U subset V, U != emptyset$ to #h[podprzestrzeń wektorowa przestrzeni $V$]$ <=>$
+ $forall u, v in U: u+v in U$
+ $forall alpha in K: forall u in U: alpha dot u in U$
$<=>$ \
$forall alpha, beta in K: forall u, v in U: alpha dot u + beta dot v in U$ \
$<=>$ \
$forall n in NN_+: forall alpha_1, alpha_2, ..., alpha_n in K: forall v_1,
  v_2, ..., v_n in U:$ \
$alpha_1 v_1 + alpha_2 v_2 + ... + alpha_n v_n in U$ (#h[kombinacja liniowa])

Wektor zerowy przestrzeni liniowej jest elementem każdej jej podprzestrzeni.

= Liniowa niezależność wektorów
$(V, K, +, dot)$ - przestrzeń wektorowa, $v_1, v_2, ..., v_n in V$ 

wektory $v_1, v_2, ..., v_n$ są #h[liniowo niezależne] $<=>$ \ 
$forall alpha_1, alpha_2,
..., alpha_n in K: (alpha_1 v_1 + alpha_2 v_2 + ... + alpha_n v_n = overline(0))
=> (alpha_1, alpha_2, ..., alpha_n = bold(0))$\ 

$(v = alpha_1 v_1 + ... + alpha_n v_n) and (v = beta_1 v_1 + ... + beta_n v_n),
v in V => (alpha_1 = beta_1 and ... and alpha_n = beta_n)$ \
Zbiór ${v}$ jest liniowo niezależny $<=> v != overline(0)$ \

wektory $v_1, v_2, ..., v_n$ są #h[liniowo zależne] $<=>$ \ 
$exists alpha_1, alpha_2,
..., alpha_n in K: (alpha_1 v_1 + alpha_2 v_2 + ... + alpha_n v_n = overline(0))
and (alpha_1 != bold(0) or alpha_2 != bold(0) or ... or alpha_n != bold(0))$
$<=>$ przynajmniej jeden jest #h[kombinacją liniową] pozostałych lub
${v_1, ..., v_n} = {overline(0)}$ \
zespół wektorów $v_1, v_2, ..., overline(0), ..., v_n$ jest liniowo zależny

= Baza przestrzeni wektorowej
$(V, K, +, dot)$ - przestrzeń wektorowa

#h[Liniowa powłoka] zbioru $A subset V, A != emptyset$: \
$"Lin"A := {v = alpha_1 v_1 + ... + alpha_k v_k: alpha_1, ..., alpha_k in K, 
v_1, ..., v_k in A}$ \
$"Lin"A$ jest podprzestrzenią wektorową przestrzeni $V$ i nazywamy ją
#h[(pod)przestrzenią generowaną przez zbiór $A$].

$A$ jest zbiorem wektorów #h[rozpinających] $V <=> "Lin"A = V$

#h[Baza przestrzeni wektorowej] $V$ - zbiór $B subset V$ taki, że:
+ $"Lin"B = V$
+ $forall v_1, ..., v_k in B: {v_1, ..., v_k}$ jest zbiorem #h[liniowo
  niezależnym]
$B$ jest #h[maksymalnym] (w sensie inkluzji) zbiorem wektorów #h[liniowo niezależnych] z $V$ \
$B$ jest #h[minimalnym] (w sensie inkluzji) zbiorem wektorów 
#h[rozpinających] z $V$ \

$forall M subset V:M$ jest #h[liniowo niezależny] $=> exists B: M
subset B and B$ jest #h[bazą] $V$ \
$forall N subset V: N$ jest zbiorem wektorów #h[rozpinających] $V => exists B' 
: B' subset N and B'$ jest #h[bazą] $V$

$"Lin"A = V => $ każdy #h[maksymalny] podzbiór wektorów #h[liniowo
  niezależnych] z $A$ tworzy #h[bazę] przestrzeni $V$

= Wymiar przestrzeni wektorowej
$B$ - baza przestrzeni wektorowej $V$

#h[wymiar przestrzeni] $V:$  $dim V = abs(B)$  \
$abs(B) < +infinity => V$ jest #h[skończenie wymiarowa]\
$abs(B) = +infinity => V$ jest #h[nieskończenie wymiarowa], $dim V = +infinity$
\
$V = {overline(0)} => dim V = 0$

$dim V = n => $
+ każdy zespół #h[$n+1$] wektorów jest #h[liniowo zależny] w $V$
+ każdy zespół #h[$n$] wektorów, które #h[generują] przestrzeń $V$ jest
  #h[liniowo niezależny] (jest #h[bazą]) i na odwrót

$dim V < +infinity, U$ - podprzestrzeń $V$ \
+ $dim U <= dim V$
+ $dim U = dim V => U = V$

= Współrzędne wektora

#h[Reper bazowy] (czasem po prostu baza) - dowolna baza z ustaloną kolejnością
wektorów

$B = (e_1, e_2, ..., e_n)$ - reper bazowy $(V, K, +, dot), v = alpha_1 e_1 +
alpha_2 e_2 + ... + alpha_n e_n in V$ \
#h[Współrzędne wektora] $v$ względem bazy $B$ - skalary $alpha_1, alpha_2, ...,
alpha_n in K, v = [alpha_1, ..., alpha_n]_B$

Przestrzeń $(RR^n, RR, +, dot)$ oznaczamy w skrócie $RR^n (RR)$ lub $RR^n$ \
#h[Baza kanoniczna] - $B_k := (e_1=(1, 0, ..., 0), e_2=(0, 1, ..., 0), ...
e_n=(0, 0, ..., 1))$ \
$dim RR^n = n$

= Suma podprzestrzeni

$V_1, V_2$ - podprzestrzenie przestrzeni wektorowej $V$ \
#h[Suma podprzestrzeni] $V_1 + V_2 := {v in V | exists v_1 in V_1: exists v_2 in
V_2: v = v_1 + v_2} =$ \ ${v_1 + v_2: v_1 in V_1, v_2 in V_2}$

+ $V_1 + V_2$ jest podprzestrzenią przestrzeni $V$
+ $V_1 inter V_2$ jest podprzestrzenią przestrzeni $V$
+ $V_1 union V_2$ na ogół *nie* jest podprzestrzenią przestrzeni $V$

Suma podprzestrzeni $V_1 + V_2$ jest #h[sumą prostą] oznaczaną $V_1 plus.circle
V_2 <=>$ \ 
$forall v in V_1 + V_2: exists! v_1 in V_1: exists! v_2 in V_2: v = v_1 + v_2
<=>$\
$V_1 inter V_2 = {overline(0)}$

#h[Przestrzeń uzupełniająca] przestrzeni $V_1$ do $V$ to $V_2$ taka, że $V = V_1
plus.circle V_2$ \
Dla każdej podprzestrzeni dowolnej przestrzeni wektorowej istnieje jej
przestrzeń uzupełniająca.

$V_1, V_2$ - skończenie wymiarowe $=> dim(V_1 + V_2) = dim V_1 + dim V_2 -
dim(V_1 inter V_2)$ \
$V = V_1 plus.circle V_2 => dim V = dim V_1 + dim V_2$
