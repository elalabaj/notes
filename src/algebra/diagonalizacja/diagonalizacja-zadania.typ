#import "../../../template.typ": *
#show: template

#set math.mat(delim: "[")
#set math.vec(delim: "[")
#let la = $lambda$

#problem[
Dany jest endomorfizm $f : RR^3 → RR^3$ taki, że \
$f(x, y, z) = (−x + y − z, −x + y + z, −2x + 2y)$.
]

#subproblem[
Znajdź wartości własne $λ_1, λ_2, λ_3$ endomorfizmu $f$ i opowiadające im 
podprzestrzenie własne;
]

$
det(A - lambda I) = mat(delim: "|", -1-lambda, 1, -1; 1, -1-lambda, 1;
  -2, 2, -lambda) = \ (-1-lambda) (1-lambda)(-lambda) - 2 + 2 - 2(1 - lambda) -
2(-1-lambda) + lambda = lambda(2 - lambda)(2 + lambda)
$

Wartości własne: $lambda_1 = 0, lambda_2 = 2, lambda_3 = -2$

Dla $lambda = 0$:
$
mat(-1, 1, -1; -1, 1, 1; -2, 2, 0) vec(x, y, z) = vec(0, 0, 0) => 
cases(-x + y - z = 0, -x + y + z = 0, -2x + 2y = 0) => cases(z=0, x=y) => 
E_0 = "lin"{(1, 1, 0)}
$

Dla $lambda = 2$:
$
mat(-3, 1, -1; 1, -1, 1; -2, 2, -2) vec(x, y, z) = vec(0, 0, 0) => 
cases(-3x + y - z = 0, -x - y + z = 0,-2x+2y-2z) => cases(x=0, y=z) => 
E_2 = "lin"{(0, 1, 1)}
$

Dla $lambda = -2$:
$
mat(1, 1, -1; -1, 3, 1; -2, 2, 2) vec(x, y, z) = vec(0, 0, 0) => 
cases(x + y - z = 0, -x + 3y + z = 0,-2x+2y+2z=0) => cases(y=0, x=z) => 
E_(-2) = "lin"{(1, 0, 1)}
$

#subproblem[Ustal dowolne wektory własne $u_1, u_2, u_3$ odpowiadające 
  wartościom $λ_1, λ_2, λ_3$ i uzasadnij, że $(u_1, u_2, u_3)$ jest bazą w
$RR^3$. Napisz macierz $A$ odwzorowania $f$ względem tej bazy;]

Wektory bazowe: $u_1 = (1, 1, 0), u_2 = (0, 1, 1), u_3 = (1, 0, 1)$

$
mat(delim: "|", 1, 0, 1; 1, 1, 0; 0, 1, 1) = 1 + 0 + 1 - 0 - 0 - 0 = 2 != 0
 => "baza w" RR^3
$ 
$
A = mat(0, 0, 0; 0, 2, 0; 0, 0, -2)
$

#subproblem[c) Wyznacz macierz $A$ z definicji.]
$
f(1,1,0)=(0,0,0), f(0,1,1)=(0,2,0), f(1,0,1)=(0,0,-2)
$

#problem[W przestrzeni $RR[x]_3$ dany jest endomorfizm $f$ taki, że 
  $ forall w in RR[x]_3 : (f(w))(x) = d/(d x) ((x+1)w(x)). $]

#subproblem[Znajdź macierz endomorfizmu $f$ w bazie $(1, x, x^2, x^3)$.]

#columns(2)[
$ f(1) &= (x+1)' = 1\
f(x) &= ((x+1)x)' = 2x+1\
f(x^2) &= ((x+1)x^2)' = 3x^2+2x\
f(x^3) &= ((x+1)x^3)' = 4x^3+3x^2\ $
#colbreak()
$ M_f(B_k) = mat(1, 1, 0, 0; 0, 2, 2, 0; 0, 0, 3, 3; 0, 0, 0, 4) $
]

#subproblem[Znajdź podprzestrzenie własne oraz ich bazy.]

$
mat(delim: "|", 1-lambda, 1, 0, 0; 0, 2-lambda, 2, 0; 0, 0, 3-lambda, 3; 
  0, 0, 0, 4-lambda) = (1-lambda)(2-lambda)(3-lambda)(4-lambda)
$

Dla $lambda = 1$:
$
mat(0, 1, 0, 0; 0, 1, 2, 0; 0, 0, 2, 3; 0, 0, 0, 3) vec(a, b, c, d) = 
vec(0, 0, 0, 0) => E_1 = "lin"{1}
$

Dla $lambda = 2$:
$
mat(-1, 1, 0, 0; 0, 0, 2, 0; 0, 0, 1, 3; 0, 0, 0, 2) vec(a, b, c, d) = 
vec(0, 0, 0, 0) => E_2 = "lin"{1+x}
$

Dla $lambda = 3$:
$ mat(-2, 1, 0, 0; 0, -1, 2, 0; 0, 0, 0, 3; 0, 0, 0, 1) vec(a, b, c, d) = 
vec(0, 0, 0, 0) => E_3 = "lin"{1+2x+x^2}
$

Dla $lambda = 4$:
$
mat(-3, 1, 0, 0; 0, -2, 2, 0; 0, 0, -1, 3; 0, 0, 0, 0) vec(a, b, c, d) = 
vec(0, 0, 0, 0) => E_4 = "lin"{1+3x+3x^2+x^3}
$

#problem[Niech $ A = mat(-1, 1, 1; 1, -1, 1; 1, 1, -1) $ będzie macierzą 
  endomorfizmu $f$ względem bazy kanonicznej w $RR^3$.]

#subproblem[Znajdź wartości własne i podprzestrzenie własne endomorfizmu $f$.]

$ mat(delim: "|", -1-lambda, 1, 1; 1, -1-lambda, 1; 1, 1, -1-lambda) = 
-(lambda-1)(lambda+2)^2 $

$lambda_1 = 1, lambda_2 = -2$

Dla $lambda = 1$:
$
mat(-2, 1, 1; 1, -2, 1; 1, 1, -2) vec(x, y, z) = vec(0, 0, 0) => x=y=z => E_1 = "lin"{(1, 1, 1)}
$

Dla $lambda = -2$:
$
mat(1, 1, 1; 1, 1, 1; 1, 1, 1) vec(x, y, z) = vec(0, 0, 0) => x+y+z=0 => E_(-2) = "lin"{(1, 0, -1), (0, 1, -1)} $

#subproblem[Ustal bazę w $RR^3$ złożoną z wektorów własnych i podaj macierz $C$ odwzorowania $f$ względem tej bazy.]

$B = ((1, 1, 1), (1, 0, -1), (0, 1, -1))$
$ C = mat(1, 0, 0; 0, -2, 0; 0, 0, -2) $

---

#problem[Sprawdź, czy następujące macierze są diagonalizowalne:]

#subproblem[$A = mat(1, -2, 0; 1, -1, 2; -1, 1, 0),$]
$ mat(delim: "|", 1-lambda, -2, 0; 1, -1-lambda, 2; -1, 1, -lambda)
= (lambda-1)^2(lambda-4) $
Dla $la=1$:
$mat(-4,-6,7;1,0,-1;-4,-6,7) r = 2 => dim V_1 = 3-2=1 < 2 =>$ nie
diagonalizowalna

#subproblem[$B = mat(1, 0, 0; -1, 1, 1; 1, 1, 1),$]
$ mat(delim: "|", 1-lambda, 0, 0; -1, 1-lambda, 1; 1, 1, 1-lambda) = (1-lambda)^3 $
Dla $la=1$:
$mat(2,2,-2;-1,-1,1;1,1,-1) r = 1 => dim V_1 = 3-1=2 < 3 =>$ nie
diagonalizowalna

#subproblem[$C = mat(1, 1, 1, 1; 1, 1, 1, 1; 1, 1, 1, 1; 1, 1, 1, 1)$]

$C^T = C$ (symetryczna), więc jest diagonalizowalna.

#problem[Niech $B = (e_1, e_2, e_3, e_4)$ będzie bazą kanoniczną w $RR^4$
i $f$ endomorfizmem takim, że $f(e_i) = e_1 + e_2 + e_3 + e_4$ dla 
$i = 1, 2, 3, 4$.]

#subproblem[Podaj macierz endomorfizmu $f$ względem bazy $B$;]

$
A = M_f (B) = mat(1,1,1,1;1,1,1,1;1,1,1,1;1,1,1,1;)
$

#subproblem[Znajdź $"Im"f$, $dim "Im"f$, $"Ker"f$ i jego bazę;]

$
"Im"f = "Lin"{(1,1,1,1)} =>  dim "Im"f = 1 \
mat(1,1,1,1;1,1,1,1;1,1,1,1;1,1,1,1;) dot vec(x,y,z,w) = vec(0,0,0,0) <=>
x+y+z+w = 0 => w = -x-y-z \
f(x,y,z,-x-y-z) = 0 => "Ker"f = "Lin"{(1,0,0,-1), (0,1,0,-1), (0,0,1,-1)}
$

#subproblem[Znajdź wartości własne i podprzestrzenie własne. Czy $f$ jest
  endomorfizmem diagonalizowalnym? ]


Jądro nie jest puste więc jedną z wartości własnych jest $0$.
Dla $la = 0$: $ dim V_0 = dim "Ker"(A - la I) = dim "Ker"A = 3 $

Ślad czyli suma na przekątnej nie zmienia się przy zmianie bazy, więc jest taka
sama dla macierzy już zdiagonalizowanej  co dla $M_f (B)$. 

Suma na przekątnej $A$ wynosi $4$ więc musi istniec niezerowa $la$, 
a ponieważ $k_0 >= dim V_0 = 3$ to $k_0 = 3$ 
i druga wartość własna to 4 z $k_4 = 1$ (bo $k_0 + k_4 <= 4$).

$V_0 = "Ker"0 = "Lin"{(1,0,0,-1), (0,1,0,-1), (0,0,1,-1)}$

Dla $la = 4:$
$
mat(-3,1,1,1;1,-3,1,1;1,1,-3,1;1,1,1,-3) vec(x,y,z,w) = vec(0,0,0,0) <=>
cases(-4x + 4 y = 0, -4 y + 4z = 0, -4z + 4w = 0, -4w + 4x = 0) <=> x=y=z=w \
V_4 = "Lin"{(1,1,1,1)}
$

$f$ jest diagonalizowalne, bo $dim V_0 + dim V_4 = 4$.

#problem-box(title: "Zadanie 7)")[
Dana jest macierz
$
A = mat(3,0,0;4,1,2;a,0,3), a in RR.
$
1. Dla jakich wartości parametru $a$ macierz $A$ jest diagonalizowalna? W tym
   przypadku znajdź macierz nieosobliwą $P$ tak, aby $D = P^(-1) A P$ była
  diagonalna.
]

$
mat(3-la,0,0;4,1-la,2;a,0,3-la;delim:"|") = (3-la) mat(delim:"|",1-la,2;0,3-la)=
(3-la)^2 (1-la)
$

Dla $la=3$:
$
mat(0,0,0;4,-2,2;a,0,0;)vec(x,y,z) = vec(0,0,0) <=>
cases(a z = 0, y=2x+z)
$
$a != 0 => V_3 = "Lin"{(1,2,0)} =>$ macierz nie jest diagonalizowalna, bo $dim
V_3 < k_3$.

$a = 0 => V_3 = "Lin"{(1,2,0), (0,1,1)} => dim V_3 = 2 = k_3$.

Dla $lambda = 1$:
$
mat(2,0,0;4,0,2;a,0,2;)vec(x,y,z) = vec(0,0,0) <=>
cases(x=0, z=0) \
V_1 = "Lin"{(0,1,0)} => dim V_1 = 1 = k_1
$

Dla $a = 0$ macierz $A$ jest diagonalizowalna.
$
D = mat(3,0,0;0,3,0;0,1,0),
P = mat(1,0,0;2,1,1;0,1,0) \
mat(1,0,0,1,0,0;2,1,1,0,1,0;0,1,0,0,0,1;augment:#3) -->^(w_2 - 2 w_1 - w_3)
mat(1,0,0,1,0,0;0,0,1,-2,1,-1;0,1,0,0,0,1;augment:#3) -->^(w_2 <-> w_3)
mat(1,0,0,1,0,0;0,1,0,0,0,1;0,0,1,-2,1,-1;augment:#3) \
P^(-1) = mat(1,0,0;0,0,1;-2,1,-1) \
mat(1,0,0;0,0,1;-2,1,-1)mat(3,0,0;4,1,2;0,0,3)mat(1,0,0;2,1,1;0,1,0) = 
mat(1,0,0;0,0,1;-2,1,-1)mat(3,0,0;6,3,1;0,3,0)=mat(3,0,0;0,3,0;0,0,1)
$

#problem-box(title: "Zadanie 8)")[
 Wyznacz wartości własne i odpowiadające im podprzestrzenie własne odwzorowania:
$f : RR[x]_2 → RR[x]_2: f(a x^2 + b x + c) = (−a − 2b−2c)x^2 + 2b x + (c + 2b)$.

Jeżeli $f$ jest endomorfizmem diagonalizowalnym, podaj bazę $B_0$ , w której
macierz $D$ endomorfizmu $(D = M_f (B_0))$ ma postać diagonalną, podaj macierz 
  $D$ oraz macierz przejścia od bazy kanonicznej $B$ do bazy $B_0$ . Wyznacz
$
f^10 (2 − x^2)$ .
]

Przyjmujemy $B=(x^2, x, 1).$

$f(x^2) = -x^2, f(x) = -2x^2 + 2x + 2, f(1) = -2x^2 + 1$
$
A = mat(-1,-2,-2;0,2,0;0,2,1) \
det(A  - la I) = mat(delim:"|",-1-la,-2,-2;0,2-la,0;0,2,1-la) = 
-(1+la)(2-la)(1-la)
$

Dla $la = -1:$
$
mat(0,-2,-2;0,3,0;0,2,2) vec(a,b,c) = vec(0,0,0) => b=c=0 \
V_(-1) = "Lin"{(1,0,0)_B} = "Lin"{x^2}
$
Dla $la = 1:$
$
mat(-2,-2,-2;0,1,0;0,2,0) vec(a,b,c) = vec(0,0,0) => b=0, c=-a \
V_1 = "Lin"{(1,0,-1)_B} = "Lin"{x^2-1}
$
Dla $la = 2:$
$
mat(-3,-2,-2;0,0,0;0,2,-1) vec(a,b,c) = vec(0,0,0) => c=2b, 3a = -2b - 2c => a =
-2b \
V_2 = "Lin"{(-2,1,2)_B} = "Lin"{-2x^2 +x +2}
$

$f$ jest diagonalizowalne bo są różne wartości własne.

$B_0 = {x^2, x^2 -1, -2x^2 + x + 2}$
$
D=mat(-1,0,0;0,1,0;0,0,2), P_(B -> B_0) = mat(1,1,-2;0,0,1;0,-1,2)
$

$
2-x^2 = x^2 -2(x^2-1) = [1,-2,0]_B_0 \
f^10 (2-x^2) = mat(-1,0,0;0,1,0;0,0,2)^10 vec(1,-2,0) = 
mat(1,0,0;0,1,0;0,0,2^10) vec(1,-2,0) = vec(1,-2,0) = 2-x^2
$
