#import "../../template.typ": *
#show: template

#let hl(content) = box(
    content,
  
    fill: rgb("#fffe69"),
 )

#let h(it) = hl[*#it*]

= Metryki

#h[Metryka] w zbiorze $X$ ($X != emptyset$) to dowolna funkcja $d:X
  times X-> RR$ taka, że:
+ $d(x,y)>=0$
+ $d(x,y)=d(y,x)$ (symetria)
+ $d(x,z) <= d(x,y) + d(y,z)$ (warunek trójkąta)
+ $d(x,y)=0 <=> x=y$

#h[Przestrzeń metryczna] to para $(X,d)$

#h[Przykłady metryk:]
- *euklidesowa*: $d_e ((x_1,...,x_n),(y_1,...,y_n))=sqrt(sum_(i=1)^n 
  (y_i-x_i)^2)$
- *taksówkarska/miejska*: $d_t ((x_1,...,x_n),(y_1,...,y_n))=sum_(i=1)^n
  abs(y_i-x_i)$
- *maksimum*: $d_m ((x_1,...,x_n),(y_1,...,y_n))=max{abs(y_i-x_i):i=1,...,n}$
- *dyskretna*: $d(x,y)=cases(0", " x=y,1", " x!= y)$

#h[Kula] (otwarta) o środku $x_0$ i promieniu $r$ to 
$K(x_0,r) = {x in X: d(x_0,x) < r}$
 
#h[Zbiór ograniczony] $A subset X:$ istnieje kula o środku $x_0 in X$ w której zawiera się $A$

#h[Zbiór otwarty] (nie ma brzegu)$A subset X:$ dla każdego $x_0 in A$ istnieje kula o środku
$x_0$ która zawiera się w $A$

#h[Zbiór domknięty] (ma brzeg) $A subset X: X without A$ jest otwarty 

#h[Własności zbiorów otwartych i domkniętych]
+ $emptyset, X$ są i otwarte i domknięte
+ Złączenie i część wspólna zbiorów otwartych jest otwarta
+ Złączenie i część wspólna zbiorów domkniętych jest domknięta

#h[Topologia] $tau$ w zbiorze $X$ to zbiór podzbiorów $X$, które są otwarte. \
#h[Topologia indukowana metryką $d$] to $tau_d={U in X: U$ - otwarty w $(X,d)}$

#h[Wnętrze zbioru] int$A$ - największy zbiór otwarty zawarty w $A$

#h[Otoczenie] punktu $x_0$ - dowolny zbiór otwarty zawierający $x_0$
