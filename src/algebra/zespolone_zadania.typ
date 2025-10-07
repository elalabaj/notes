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

#pagebreak()
#subproblem[
$arg(-2+2i)$
]

#image("im1.png", width: 20%)
$arg(-2+2i) = phi = (3pi)/4$

#subproblem[
  $(1+i)^n/(1-i)^(n-2)$, dla $n in NN$
]

$
(1+i)^n/(1-i)^(n-2) = ((1+i)^n (1+i)^(n-2))/((1-i)^(n-2) (1+i)^(n-2))=
(1+i)^(2n-2)/(1-i^2)^(n-2) = (1+i)^(2n-2)/2^(n-2) 
$

#problem[
  Przedstaw podane liczby zespolone w postaci trygonometrycznej:
]

#subproblem[
  $z=7+7i$
]

#image("im2.png", width: 20%)

$phi = pi/4$

$abs(z) = sqrt(7^2 + 7^2) = 7 sqrt(2)$

$z = 7 sqrt(2)(cos pi/4 + i sin pi/4)$

#pagebreak()
#subproblem[
  $z=sqrt(3)-i$
]

#image("im3.png", width: 20%)

$phi = (11pi)/6$

$abs(z) = sqrt( sqrt(3)^2 + (-1)^2) = sqrt(3+1) = 2$

$z= 2(cos (11pi)/6 + i sin (11pi)/6)$

#subproblem[
  $z=1/i dot 1/(1+i)$
]

 $ 1/i dot 1/(1+i) = i/(i^2) dot (1-i)/(1-i^2) = (i + 1)/(-1(1+1)) = (i+1)/(-2) 
= - 1/2 - 1/2i $

#image("im4.png", width: 20%)

$phi = (5pi/4)$

$abs(z) = 1/2 dot sqrt(2)$

$z = sqrt(2)/2 (cos (5pi)/4 + i sin (5pi)/4)$

#pagebreak()
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

#pagebreak()
#subproblem[
  ${z in CC : abs(z - i + 3) > 3}$
]

$abs(z - i + 3) = abs(z - (-3 + i)) > 3 <=>$ odległość $z$ od punktu $(-3, 1) >
3$

#image("im5.png", width: 30%)

#subproblem[
  ${z in CC : abs(z - 1) = abs(z + 1)}$
]

$abs(z - 1) = abs(z + 1) <=> abs(z - (1 + 0i)) = abs(z - (-1 + 0i))$ 

Odległości $z$ od $(1, 0)$ i $(-1, 0)$ są równe.

#image("im6.png", width: 30%)

#pagebreak()
#subproblem[
  ${z in CC : abs(z-2i)/abs(z+3) < 1}$
]

$abs(z-2i)/abs(z+3) < 1 <=> abs(z-(0 + 2i)) < abs(z-(-3 + 0i))$

Odległość $z$ od $(0, 2)$ jest mniejsza niż od $(-3, 0)$. 

Granicą jest symetralna odcinka między tymi punktami. Ma nachylenie $-3/2$ i
przechodzi przez punkt $(-3/2, 1)$.

$1 = (-3/2)(-3/2) + b => b = 1 - 9/4 = -5/4 $

$ y = -3/2 x - 5/4$

#image("im7.png", width: 30%)

#subproblem[
  ${z in CC : Re(z-i)^2 <= 0}$
]

$z &= x + y i =>z-i &= x + (y-1)i$

$Re(z-i)^2 &= x^2 - (y-1)^2 = (x - y + 1)(x + y - 1) <= 0$

$
cases(
  y >= x+1 and y <= -x + 1,
  y <= x+1 and y >= -x + 1
)
$

#image("im8.png", width: 30%)

#pagebreak()
#subproblem[
  ${z in CC : arg(z-3+i)=(2pi)/3}$
]

$z = x+y i => z-3+i = (x-3)+(y+1)i$

Szukamy półprostej o początku w $(0, 0)$ przechodzącej przez $(x-3, y+1)$ o
nachyleniu $(2pi)/3$.

$tg (2pi)/3 = -sqrt(3) => (y+1) = -sqrt(3)(x-3) => y = -sqrt(3)x + 3sqrt(3)-1$

Należy pamiętać, że $arg(0) = 0$, dlatego $(x-3, y+1) != (0, 0) => (x, y) !=
(3,-1)$

#image("im9.png", width: 30%)

#subproblem[
  ${z in CC : pi/6 <= arg(overline(z)+i)<=pi}$
]

$overline(z) + i stretch(->)^(T_[0, -1]) overline(z) stretch(->)^(S_(O X)) z$


$tg pi/6 = 1/sqrt(3), tg pi = 0$

$pi/6 <= arg(z) <= pi <=>$
$ 
y &>= 1/sqrt(3) x &and y &>= 0 stretch(->)^(T_[0, -1]) \
y &>= 1/sqrt(3) x - 1 &and y &>= 1 stretch(->)^(S_(O X))  \
y &<= -1/sqrt(3) x + 1 &and y &<= -1\
$

$arg(0) = 0 => overline(z)+i != (0, 0)$

$(0, 0) stretch(->)^(T_[0, -1]) (0, -1) stretch(->)^(S_(O X)) (0, 1) => z !=
(0,1)$

#image("im10.png", width: 30%)

#subproblem[
  ${z in CC : arg(i/(i-z))=(4pi)/3}$
]

$z = x + y i =>$
$ i/(i-z) = i/(i - x - y i) = i / ((1-y)i - x) = 
(i((1-y)i + x))/((1-y)^2 i^2 -x^2) =
(-1 + y + x i)/(-1 + 2y - y^2 - x^2)
$

