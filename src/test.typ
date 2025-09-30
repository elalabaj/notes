// #import "../template.typ": *
#import "../template.typ": *
#show: template

// #outline()

= Funckja ciągła

#definition()[
  Funckja ciągła to funckja, w której mała zmiana argumentu powoduje małą zmianę wartości funkcji.
]

#definition-box(title: "Definicja Heinego")[
  $f$ jest ciągła w $x_0 in D_f <=>
  forall_((x_n) subset D_f) lim_(n -> infinity) x_n = x_0
  => lim_(n -> infinity) f(x_n) = f(x_0)$
]<def:heinego>

#definition(title: "Definicja Cauchy'ego (epsilonowo-deltowa)")[
  $f$ jest ciągła w $x_0 in D_f <=>$\
  $forall_(epsilon>0) exists_(delta > 0) forall_(x in D_f) 
  abs(x-x_0) < delta => abs(f(x) - f(x_0)) < epsilon$
]<def:cauchyego>

#theorem()[
  Twierdzenie często błędnie podawane jako definicja.

  Z: $(x_0-alpha, x_0 + alpha) subset D_f, alpha > 0$
  
  $lim_(x-> x_0) f(x) = f(x_0) => f$ jest ciągła w $x_0$
]
#proof[

  Dowód zostawiamy jako ćwiczenie dla czytelnika
]

#lemma[
  To jest przykładowy lemat
]

#corollary[
  To jest wniosek
]

#problem[
  zadanie 1
]

#problem[
  zadanie 2
]

== Przykłady funkcji ciągłych (ciągłych w każdym punkcie dziedziny)
funkcje:
- wielomianowe
- trygonometryczne
- wykładnicze
- logarytmiczne
- wymierne


== Zadania


#problem[
  Udowodnij, że jeżeli $f$ i $g$ są ciągłe w $x_0$ to $f+g$ jest ciągła w $x_0$.
]

#solution[
  Z założenia wiemy, że:
  $ 
    forall_(epsilon_1 > 0) exists_(delta_1 > 0) forall_(x in D_f)
    abs(x - x_0) < delta_1 => abs(f(x) - f(x_0)) < epsilon_1 \  

    forall_(epsilon_2 > 0) exists_(delta_2 > 0) forall_(x in D_f)
    abs(x - x_0) < delta_2 => abs(f(x) - f(x_0)) < epsilon_2 \ 
  $
  Teza:
  $
    forall_(epsilon > 0) exists_(delta > 0) forall_(x in D_f)
    abs(x - x_0) < delta => abs((f(x)+g(x)) - (f(x_0)+g(x_0))) < epsilon \ 
  $

  Z nierówności trójkąta wiemy, że:
  $
    abs((f(x)+g(x)) - (f(x_0)+g(x_0))) &= \
    abs(f(x) - f(x_0) + g(x) - g(x_0)) &<=
    abs(f(x) - f(x_0)) + abs(g(x) - g(x_0))
  $
]

== Własność Darboux

#property()[
  $f:[a,b]->RR$ ma własność Darboux $<=>$\
  $forall_(y in [f(a), f(b)]) thin exists_(x_0 in [a,b]) :
  f(x_0) = y$

  Każda wartość pomiędzy $f(a)$ i $f(b)$ została przyjęta przynajmniej raz.
]<wlasnosc:darboux>

#proof()[
  Założmy, że:
  $
    f:[a, b]->RR\
    f(a) < 0<f(b)
  $
  Można to osiągnąć przez przesunięcie $f$.
  
  Chemy udowodnić, że
  $
    exists_(x_0 in [a, b]): f(x_0) = 0.
  $
  
]
