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

= Ciągi funkcyjne

- *Zbieżność punktowa* \
  $f_n ->^X f <=> forall x in X: lim_(n->infinity) f_n (x) = f(x)$ \
  $f_n arrow^X f <=> forall x in X thick forall epsilon > 0
  thick exists n_0 in NN thick forall n>= n_0:
  abs(f_n (x) - f(x)) < epsilon$

- *Zbieżność jednostajna* \
  $f_n arrows^X f <=> forall epsilon > 0 thick exists n_0 in NN
  thick forall n>= n_0 thick forall x in X:  
  abs(f_n (x) - f(x)) <  epsilon$ \
  $f_n arrows f => f_n arrow f$ \
  $f_n "ciągłe", f "nieciągła" => f_n cancel(arrows^X) f$

- *Metryka Czebyszewa* \
  $d_c (f, g) = sup abs(f(x) - g(x)) thick f, g$ - ograniczone \
  $f_n arrows f <=> lim_(n->infinity) d_c (f_n, f) = 0$

- *Różniczkowalność* \
  $f_n$ różniczkowalne, $f_n arrow^X f, f'_n arrows^X g =>$ \
  - $f'_n arrows^X f'$ \
  - $(lim_(n->infinity) f_n (x))' = lim_(n->infinity) f'_n (x)$

- *Całkowanie* \
  $f_n$ całkowalne, $f_n arrows^X f => $\
  - $integral_a^b f_n (x) d x arrow 
  integral_a^b f(x) d x$ \
  - $integral_a^b (lim_(n->infinity) f_n (x)) d x =
  lim_(n->infinity) integral_a^b f_(x) d x$

= Szeregi funkcyjne

$S_n (x) = f_1 (x) + f_2 (x) + ... + f_n (x)$

- *Warunki konieczne zbieżności* \
  $S_n arrow S => f_n arrow 0$ \
  $S_n arrows S => S_n arrow S, f_n arrows 0$

- *Twierdzenie Weierstrassa*\
  $abs(f_n (x)) <= a_n, sum a_n$ zbieżny $=> S_n arrows S$ 

- *Różniczkowalność*\
  $sum f_n (x) arrow S, $ $thick sum f'_n (x) arrows T => T = S'$

- *Całkowanie*\
  $sum f_n (x) arrows S => integral_a^b (sum f_n (x)) d x =
  sum integral_a^b f_n (x) d x$

- *Ciągłość*\
  $f_n$ ciągłe, $S_n arrows S => S$ ciągła
