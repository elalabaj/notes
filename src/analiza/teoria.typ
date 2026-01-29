#import "../../template.typ": *
#show: template

#let hl(content) = box(
    content,
  
    fill: rgb("#fffe69"),
 )

#let h(it) = hl[*#it*]

= Metryki

#h[Metryka] w zbiorze $X$ ($X != emptyset$) - dowolna funkcja $d:X
  times X-> RR$ taka, że:
+ $d(x,y)>=0$
+ $d(x,y)=d(y,x)$ (symetria)
+ $d(x,z) <= d(x,y) + d(y,z)$ (warunek trójkąta)
+ $d(x,y)=0 <=> x=y$

#h[Przestrzeń metryczna] - para $(X,d)$

#h[Przykłady metryk:]
- *euklidesowa*: $d_e ((x_1,...,x_n),(y_1,...,y_n))=sqrt(sum_(i=1)^n 
  (y_i-x_i)^2)$
- *taksówkarska/miejska*: $d_t ((x_1,...,x_n),(y_1,...,y_n))=sum_(i=1)^n
  abs(y_i-x_i)$
- *maksimum*: $d_m ((x_1,...,x_n),(y_1,...,y_n))=max{abs(y_i-x_i):i=1,...,n}$
- *dyskretna*: $d(x,y)=cases(0", " x=y,1", " x!= y)$

#h[Kula] (otwarta) o środku $x_0$ i promieniu $r$ -
$K(x_0,r) = {x in X: d(x_0,x) < r}$
 
#h[Zbiór ograniczony] $A subset X$ - istnieje kula o środku $x_0 in X$ w której zawiera się $A$

#h[Zbiór otwarty] (nie ma brzegu)$A subset X$ - dla każdego $x_0 in A$ istnieje kula o środku
$x_0$ która zawiera się w $A$

#h[Zbiór domknięty] (ma brzeg) $A subset X$ - $ X without A$ jest otwarty 

#h[Własności zbiorów otwartych i domkniętych]
+ $emptyset, X$ są i otwarte i domknięte
+ Złączenie i część wspólna zbiorów otwartych jest otwarta
+ Złączenie i część wspólna zbiorów domkniętych jest domknięta

#h[Topologia] $tau$ w zbiorze $X$ - zbiór podzbiorów $X$, które są otwarte.
Każdy element $tau$ musi spełniać powyższe warunki. \
#h[Topologia indukowana metryką $d$] - $tau_d={U in X: U$ - otwarty w $(X,d)}$

#h[Wnętrze zbioru] int$A$ - największy zbiór otwarty zawarty w $A$

#h[Domknięcie zbioru] $overline(A)$ - najmniejszy zbiór domknięty zawierający $A$.

#h[Otoczenie] punktu $x_0$ - dowolny zbiór otwarty zawierający $x_0$.
$"ot"(x_0)$ - zbiór wszystkich otoczeń.

#h[Punkt brzegowy] $x_0$ zbioru $A subset X$ - każda kula $K(x_0, r)$ ma część
wspólną i z $A$ i z $X without A$.

#h[Brzeg] $partial A$ zbioru $A$ - zbiór wszystkich punktów brzegowych

#h[Punkt skupienia] $x_0 in X$ zbioru $A subset X$ - dowolnie blisko niego
znajdują się inne punkty z $A$. Zbiór jest domknięty kiedy zawiera wszystkie
swoje punkty skupienia. (np. $(0,1 angle.r$ nie jest domknięty, bo $0$ jest
jego punktem skupienia. ) \
$x_0$ jest punktem skupienia $A$ gdy istnieje ciąg 
$(x_n) subset A without {x_0}$ który zmierza do $x_0$.

#h[Przestrzeń niespójna] - możemy podzielić $x$ na otwarte zbiory $A_1, A_2$
takie, że:
+ $A_1 union A_2 = X$
+ $A_1 inter A_2 = emptyset$
+ $A_1, A_2 != emptyset$ emptyset

#h[Przestrzeń spójna] - nie jest niespójna

#h[Definicja granicy ciągu] -  
$lim_(n-> infinity) a_n = g <=> lim_(n->infinity) d(a_n, g)=0$

#h[Równoważność metryk] $d_1$ i $d_2$ na $X$ - dowolny ciąg $(x_n) subset X$
jest zbieżny w $(X,d_1)$ wtedy i tylko wtedy gdy jest zbieżny w $(X,d_2)$.

#h[Jednostajna równoważność metryk] - 
$exists m,M>0: 1/m d_2 (x,y) <= d_1 (x,y) <= M d_2 (x,y)$\
Metryki euklidesowa, taksówkowa i maksimum są jednostajnie równoważne (i
równoważne) na $RR^n$.

#h[Ciąg Cauchy'ego] - od pewnego momentu w ciągu elementy są dowolnie 
blisko siebie: \
$forall epsilon>0 thick exists n_0 in NN thick 
forall n,m >= n_0: d(a_n,a_m) < epsilon$  \
Każdy ciąg zbieżny w $(X,d)$ jest ciągiem Cauchy'ego w $(X,d)$.

#h[Przestrzeń zupełna] - każdy ciąg Cauchy'ego elementów tej przestrzeni jest
zbieżny do granicy należącej do tej przestrzeni. (np. $QQ$ nie jest zupełny, bo
ciąg $3, 3.1, 3.14, ...$ zmierza do $pi in.not QQ$)

#h[Zbiór zwarty] - z każdego ciągu można wybrać podciąg zbieżny do granicy
należącej do tego zbioru. Dla metryk euklidesowej, taksówkarskiej i maksimum 
zbiór $A subset RR^n$ jest zwarty wtedy i tylko wtedy kiedy jest
zbiórem domkniętym i ograniczonym.

= Odwzorowania ciągłe

#h[Obraz zbioru] $A subset X$ poprzez odwzorowanie $f:X->Y$ - $f[A]={f(x)in Y:x
in A}$

#h[Przeciwobraz zbioru] $B subset Y$ - $f^(-1) [B] = {x in X : f(x) in B}$

#h[Definicje granicy funkcji]
$f:X->Y, (X,d), (Y, rho)$ - przestrzenie metryczne \ $lim_(x->x_0) f(x)=g <=> $
- *definicja topologiczna (Cauchy'ego)* $forall V in "ot"(g) thick exists U 
in "ot" (x_0): f[U without {x_0}] subset V$ \ Wartości $f$ z otoczenia $x_0$
  mogą się zawierać w dowolnie małym otoczeniu $g$.
- *definicja Cauchy'ego w przestrzeniach metrycznych* \ $forall epsilon >0 thick
  exists delta > 0 thick forall x in X: 0 < d(x,x_0)<delta => rho(f(x),g) <
  epsilon$ \
  $forall K(g,epsilon) thick exists K(x_0, delta): f[K(x_0,delta)without{x_0}]
  subset K(g,epsilon)$
- *definicja Heinego w przestrzeniach metrycznych* \ $forall (x_n) subset X
  without {x_0}: lim_(n->infinity) d(x_n,x_0)=0 => lim_(n->infinity)
  rho (f(x_n),g)=0$ \
  Wartości każdego ciągu zmierzającego do $x_0$ zmierzają do $g$

#h[Definicje funkcji ciągłej]
- *$f$ ciągła w zbiorze $X$* $<=> forall V in tau_Y: f^(-1) [V] in tau_X$ \
  przeciwobraz dowolnego zbioru otwartego jest zbiorem otwartym
- *$f$ ciągła w punkcie $x_0$* $<=> lim_(x->x_0) f(x)=f(x_0)$
- *$f$ ciągła w zbiorze $A subset X$* $<=> f$ ciągła w każdym punkcie $x_0 in A$

#h[Odwzorowanie ograniczone] - obraz $f[X]$ jest zbiorem ograniczonym

#h[Tw. o zwartości obrazu funkcji ciągłej na zbiorze zwartym] \
$Z$: $f:X->Y, (X,d), (Y, rho)$-przestrzenie metryczne, $f$ ciągła\
$T$: $X$ jest zbiorem zwartym $=> f[X]$ jest zbiorem zwartym

#h[Tw. Weierstrassa o osiąganiu kresów] \ $Z$: $f:X->RR, (X,d),(RR, |dot|)$ -
p. metryczne, $X$ zwarty \
$T$: $exists x_1,x_2 in X: f(x_1)=sup f[X] and f(x_2)=inf f[X]$

#h[Tw. o przyjmowaniu wartości pośrednich] \
$Z$: $(X,d)$-przestrzeń metryczna spójna, $f:X->RR$ ciągła, $x_1,x_2 in X,
f(x_1)<f(x_2)$ \
$T$: $forall c in (f(x_1),f(x_2)) thick exists x_0 in X: f(x_0)=c$

#h[Tw. o własności Darboux]\
$Z$: $f:A-> RR$ ciągła, $A$-przedział $subset RR, x_1,x_2 in A, f(x_1)<f(x_2)$\
$T$: $forall c in (f(x_1),f(x_2)) thick exists x_0 in (x_1,x_2): f(x_0)=c$

#h[Tw. o spójności obrazu zbioru spójnego]\
$Z$: $f:X->Y, (X,d), (Y,rho)$-przestrzenie metryczne, $X$-spójna, $f$ ciągła \
$T$: $f[X]$ spójny

= Przestrzenie unormowane i unitarne

#h[Norma] - funkcja $norm(dot) : X -> RR$ w przestrzeni wektorowej $(X,K,+,dot)$
taka, że:
+ $norm(x)>=0$
+ $norm(alpha dot x) = abs(alpha) dot norm(x)$
+ $norm(x+y) <= norm(x)+norm(y)$
+ $norm(x)=0 <=> x = arrow(0)$

#h[Przestrzeń unormowana] - para $(X, norm(dot))$ \
Każda przestrzeń unormowana jest metryczna $d(x,y)=norm(x-y)$ (metryka
indukowana normą)

#h[Przestrzeń Banacha] - przestrzeń unormowana i zupełna

#h[Iloczyn skalarny] - funkcja $compose:X times X-> K$ taka, że:
+ $x compose x >= 0$
+ $x compose y = overline(y compose x)$ (ma znaczenie jeśli $K=CC$)
+ $(x+y)compose z=x compose z + y compose z$
+ $x compose x = 0 <=> x = arrow(0)$

#h[Przestrzeń unitarna] - para $(X, compose)$ \
Każda przestrzeń unitarna jest unormowana $norm(x)=sqrt(x compose x)$

#h[Przestrzeń Hilberta] - przestrzeń unitarna i zupełna
