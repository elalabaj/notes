#import "../../template.typ": *
#show: template

#problem[
  Wykaż równości i nierówności dla liczb zespolonych:
]

$z_1 = a_1 + i b_1$

$z_2 = a_2 + i b_2$

#subproblem[
  $overline(z_1 z_2) = overline(z_1) dot overline(z_2)$
]

$overline(z_1 z_2) = overline((a_1 a_2 - b_1 b_2) + i(a_1 b_2 + b_1 a_2))=
(a_1 a_2 - b_1 b_2) - i(a_1 b_2 + b_1 a_2)$

$overline(z_1) dot overline(z_2) = (a_1 - i b_1)(a_2 - i b_2) = 
(a_1 a_2 - b_1 b_2) - i(a_1 b_2 + b_1 a_2)$

#subproblem[
  $abs(z_1 z_2) = abs(z_1) abs(z_2)$
]

$abs(z_1 z_2) = abs((a_1 a_2 - b_1 b_2) + i(a_1 b_2 + b_1 a_2)) = 
sqrt((a_1 a_2 - b_1 b_2)^2 + (a_1 b_2 + b_1 a_2)^2)=$

$sqrt(a_1^2 a_2^2 - cancel(2 a_1 a_2 b_1 b_2) + b_1^2  b_2^2 + 
a_1^2 b_2^2 + cancel(2a_1 a_2 b_1 b_2) + b_1^2 a_2^2)=
sqrt((a_1^2 + b_1^2)(a_2^2 + b_2^2))=$

$sqrt((a_1^2 + b_1^2)) dot sqrt((a_2^2 + b_2^2))=abs(z_1)abs(z_2)$

#subproblem[
  $z dot overline(z) = abs(z)^2$
]

$z dot overline(z) = (a + i b)(a - i b) = a^2 - i^2 b^2 = a^2 + b^2=$
$sqrt(a^2 + b^2)^2 = abs(z)$


#subproblem[
  $overline((z_1/z_2)) = overline(z_1) / overline(z_2)$
]

$
overline((z_1/z_2)) &= overline(z_1) / overline(z_2) \
overline((z_1/z_2)) dot overline(z_2) &= overline(z_1) / overline(z_2)dot overline(z_2)  \
overline(z_1/z_2 dot z_2) &= overline(z_1)
$

#subproblem[
 $abs(z_1 + z_2) <= abs(z_1) + abs(z_2)$
]

Dodawanie wektorów, nierówność trójkąta.

#subproblem[
  $abs(abs(z_1)-abs(z_2)) <= abs(z_1 - z_2)$
]

$ 
abs(z_1) = abs(z_2 + (z_1 - z_2)) &<= abs(z_2) + abs(z_1 - z_2) \
abs(z_1) - abs(z_2) &<= abs(z_1 - z_2)
$

Analogicznie
$ 
abs(z_2) - abs(z_1) &<= abs(z_2 - z_1) = abs(z_1 - z_2)\
abs(z_1) - abs(z_2) &>= -abs(z_1 - z_2)\
$

Czyli
$ 
-abs(z_1 - z_2) <= abs(z_1) - abs(z_2) <= abs(z_1 - z_2) <=> 
abs(abs(z_1) - abs(z_2)) <= abs(z_1 - z_2)
$

#problem[
  Oblicz:
]

#subproblem[]

$
(2+3i)/(1+i) = ((2+3i)(1-i))/((1+i)(1-i)) = (2 - 2i + 3i -3i^2)/(1 - i^2) = 
(2 + i + 3)/(1 + 1) = (5 + i)/2
$

#subproblem[]

$
((i+sqrt(3))(-1-i sqrt(3)))/(1+2i) = ((-i -i^2 sqrt(3) - sqrt(3) - 3i)(1-2i))/
((1+2i)(1-2i)) = ((-4i + sqrt(3)-sqrt(3))(1-2i))/(1-4i^2)=\
(-4i + 8i^2)/(1+4) = (-8 - 4i)/5
$

#subproblem[]

$
abs(3-4i) = sqrt(3^2 + 4^2) = 5
$

#subproblem[
$arg(-2+2i)$
]

#image("images/im1.png", width: 20%)
$arg(-2+2i) = phi = (3pi)/4$

#subproblem[
  $(1+i)^n/(1-i)^(n-2)$, dla $n in NN$
]

$
(1+i)/(1-i) = (1+i)^2/((1-i)(1+i)) = (1 + 2i + i^2)/(1-i^2) = (2i)/2 = i
$

$
(1+i)^n/(1-i)^(n-2)  = (1+i)^(n-2)/(1-i)^(n-2) dot (1+i)^2 = i^(n-2) dot 2i =
2i^(n-1)
$

#problem[
  Przedstaw podane liczby zespolone w postaci trygonometrycznej:
]

#subproblem[
  $z=7+7i$
]

#image("images/im2.png", width: 20%)

$phi = pi/4$

$abs(z) = sqrt(7^2 + 7^2) = 7 sqrt(2)$

$z = 7 sqrt(2)(cos pi/4 + i sin pi/4)$

#subproblem[
  $z=sqrt(3)-i$
]

#image("images/im3.png", width: 20%)

$phi = (11pi)/6$

$abs(z) = sqrt( sqrt(3)^2 + (-1)^2) = sqrt(3+1) = 2$

$z= 2(cos (11pi)/6 + i sin (11pi)/6)$

#subproblem[
  $z=1/i dot 1/(1+i)$
]

 $ 1/i dot 1/(1+i) = i/(i^2) dot (1-i)/(1-i^2) = (i + 1)/(-1(1+1)) = (i+1)/(-2) 
= - 1/2 - 1/2i $

#image("images/im4.png", width: 20%)

$phi = (5pi/4)$

$abs(z) = 1/2 dot sqrt(2)$

$z = sqrt(2)/2 (cos (5pi)/4 + i sin (5pi)/4)$

#subproblem[
$z=1+i tg alpha$
]

$ abs(z) = sqrt(1 + tg^2 alpha) = sqrt(1 + (sin^2 alpha)/(cos^2 alpha)) =
sqrt(1 + (1 - cos^2 alpha)/(cos ^2 alpha)) = sqrt(1/(cos^2 alpha)) = 
1/abs(cos alpha)  = plus.minus 1/(cos alpha) $

$
cos phi = 1 / abs(z) = abs(cos alpha) = plus.minus cos alpha
$

$
sin phi = (tg alpha)/abs(z) = tg alpha dot abs(cos alpha) = 
(sin alpha)/(cos alpha) dot abs(cos alpha) = plus.minus sin alpha
$

$
z = plus.minus 1/(cos alpha)(plus.minus cos alpha plus.minus i sin alpha) =
1/(cos alpha)(cos alpha + i sin alpha)
$

#subproblem[
  $1 + cos alpha + i sin alpha, alpha in (0, pi/2)$
]
$alpha in (0, pi/2) => sin alpha, cos alpha > 0$

$
abs(a) = sqrt((1 + cos alpha)^2 + sin^2 alpha) =
sqrt((1 + cos alpha)^2 + 1 - cos^2 alpha) = \
sqrt((1 + cos alpha)^2 + (1 + cos alpha)(1 - cos alpha)) =
sqrt((1 + cos alpha)(1 + cos alpha + 1 - cos alpha)) = \
sqrt(2(1 + cos alpha)) = sqrt(2(1 + 2cos^2 alpha/2 - 1)) = 
sqrt(4cos^2 alpha/2) = 2cos alpha/2
$

$
cos phi = (1 + cos alpha)/(2 cos alpha/2) =
(1 + 2cos^2 alpha/2-1)/(2 cos alpha/2) = cos alpha/2
$

$
sin phi = (sin alpha) / (2cos alpha/2) = 
(2 sin alpha/2 cos alpha/2)/(2 cos alpha/2) = sin alpha/2
$

$
z = 2cos alpha/2 (cos alpha/2 + i sin alpha/2)
$

#problem[
  Zilustruj na płaszczyźnie zespolonej następujące zbiory:
]

#subproblem[
  ${z in CC : abs(z - i + 3) > 3}$
]

$abs(z - i + 3) = abs(z - (-3 + i)) > 3 <=>$ odległość $z$ od punktu $(-3, 1) >
3$

#image("images/im5.png", width: 30%)

#subproblem[
  ${z in CC : abs(z - 1) = abs(z + 1)}$
]

$abs(z - 1) = abs(z + 1) <=> abs(z - (1 + 0i)) = abs(z - (-1 + 0i))$ 

Odległości $z$ od $(1, 0)$ i $(-1, 0)$ są równe.

#image("images/im6.png", width: 30%)

#subproblem[
  ${z in CC : abs(z-2i)/abs(z+3) < 1}$
]

$abs(z-2i)/abs(z+3) < 1 <=> abs(z-(0 + 2i)) < abs(z-(-3 + 0i))$

Odległość $z$ od $(0, 2)$ jest mniejsza niż od $(-3, 0)$. 

Granicą jest symetralna odcinka między tymi punktami. Ma nachylenie $-3/2$ i
przechodzi przez punkt $(-3/2, 1)$.

$1 = (-3/2)(-3/2) + b => b = 1 - 9/4 = -5/4 $

$ y = -3/2 x - 5/4$

#image("images/im7.png", width: 30%)

#subproblem[
  ${z in CC : Re(z-i)^2 <= 0}$
]

$arg(z-i) = phi => arg((z-i)^2) = 2phi mod 2pi$

$2phi mod 2pi in angle.l pi/2, (3pi)/2 angle.r 
<=> phi mod pi in angle.l pi/4, (3pi)/4 angle.r$

$z-i stretch(->)^(T_[0,1]) z$ 

#image("images/im8.png", width: 30%)

#subproblem[
  ${z in CC : arg(z-3+i)=(2pi)/3}$
]

Kąt $(2pi)/3$ bez punktu $(0, 0)$, bo $arg(0) = 0$

$z-3+i stretch(->)^(T_[3, -1]) z$

#image("images/im9.png", width: 30%)

#subproblem[
  ${z in CC : pi/6 <= arg(overline(z)+i)<=pi}$
]

$overline(z) + i stretch(->)^(T_[0, -1]) overline(z) stretch(->)^(S_(O X)) z$

#image("images/im10.png", width: 30%)

#subproblem[
  ${z in CC : arg(i/(i-z))=(4pi)/3}$
]

Zał: $z != i => z != (0,1)$

$
arg(i) - arg(i-z) & equiv (4pi)/3 (mod 2pi) \
pi/2 - arg(i-z) & equiv (4pi)/3 \
arg(i-z) & equiv pi/2 - (4pi)/3 = (3pi)/6 - (8pi)/6 = - (5pi)/6 equiv (7pi)/6
$

$i-z stretch(->)^(S_((0,0))) z-i  stretch(->)^(T_([0,1])) z$

#image("images/im11.png", width: 30%)

#subproblem[
  ${z in CC : arg(i/z)<= (3pi)/4}$
]

Zał: $z != 0 => z != (0,0)$

$i/z stretch(->)^(R^(-pi/2)_((0,0))) i/z dot 1/i = 1/z
stretch(->)^(S_Re, P^(1/abs(z))) z
$

#image("images/im12.png", width: 30%)

#subproblem[
  ${z in CC : Im((z-2i)^4)>0}$
]

$arg(z-2i) = phi => arg((z-2i)^4) = 4 phi mod 2pi in (0,pi) <=>
phi mod pi/2 in (0, pi/4)
$

$z-2i stretch(->)^(T[0, 2]) z$

#image("images/im13.png", width: 30%)

#subproblem[
  ${z in CC : (z+4)/(z-2i) in RR}$
]

Zał: $z != 2i <=> z != (0, 2)$

$(z+4)/(z-2i) in RR <=> arg((z+4)/(z-2i)) in {0, pi}$

$z-4$ i $z-2i$ są współliniowe

Rozwiązanie to prosta przechodząca przez  $(-4, 0)$ i $(0, 2)$ z wyłączeniem $(0,2)$.

#image("images/im14.png", width: 30%)
