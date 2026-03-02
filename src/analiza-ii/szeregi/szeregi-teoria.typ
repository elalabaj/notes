#import "../../../template.typ": *
#show: template

= Badanie zbieżności szeregów

Oznaczenie $sum a_n := sum_(n=n_0)^infinity a_n$

#columns[

- *Kryterium zbeżności szeregu harmonicznego* \
  $alpha > 1 => sum 1/(n^alpha)$ zbieżny \
  $alpha <= 1 => sum 1/(n^alpha)$ rozbieżny \

- *Kryterium porównawcze* \
  $0 <= a_n <= b_n$ \
  $sum a_n$ rozbieżny $=> sum b_n$ rozbieżny \
  $sum b_n$ zbieżny $=> sum a_n$ zbieżny \

- *Kryterium ilorazowe* \
  $a_n >= 0, b_n > 0$ \ 
  $lim_(n->infinity) (a_n)/(b_n) = g in (0, +infinity)$ \
  $sum a_n$ zbieżny $<=> sum b_n$ zbieżny 

- *Kryterium całkowe* \
  $a_n = f(n) >= 0, f$ nierosnąca \
  $integral_(n_0)^infinity f(x) d x$ zbieżna $<=> sum a_n$ zbieżny

#colbreak()

- *Kryterium Cauchy'ego* \
  $g = lim_(n->infinity) root(n, abs(a_n))$ \
  $g < 1 => sum a_n$ zbieżny \
  $g > 1 => sum a_n$ rozbieżny \


- *Kryterium d'Alemberta* \
  $a_n != 0$ \
  $g = lim_(n->infinity) abs((a_(n+1))/(a_n))$ \
  $g < 1 => sum a_n$ zbieżny \
  $g > 1 => sum a_n$ rozbieżny \


- *Kryterium zbieżności bezwzględnej* \
  $sum abs(a_n)$ zbieżny $=> sum a_n$ zbieżny

- *Kryterium Leibniza* \
  $lim_(n->infinity) a_n = 0, a_n$ nierosnący \
  $sum (-1)^n a_n$ zbieżny

]
