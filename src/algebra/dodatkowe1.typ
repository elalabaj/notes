#import "../../template.typ": *
#show: template

*1.f*

$
abs(abs(z_1)-abs(z_2)) <= abs(z_1 - z_2) <=>
-abs(z_1 - z_2) <= abs(z_1)-abs(z_2) <= abs(z_1 - z_2)
$

$
abs(z_1)-abs(z_2) &<= abs(z_1 - z_2)\
abs(z_1) &<= abs(z_1 - z_2)+abs(z_2)\
abs(z_1 - z_2 + z_2 ) &<= abs(z_1 - z_2)+abs(z_2)
$

Co zostało udowodnione w *1.e*. Analogicznie:
$
abs(z_2)-abs(z_1) &<= abs(z_2 - z_1) = abs(z_1 - z_2)\
-abs(z_1 - z_2) &<= abs(z_1) - abs(z_2)
$

*3.e*

$z = 1 + cos alpha + i sin alpha$

Założenia: $0 < alpha < pi/2$

$
abs(z) = sqrt((1 + cos alpha)^2 + sin^2 alpha) =
sqrt((1 + cos alpha)^2 + 1 - cos^2 alpha) = \
sqrt((1 + cos alpha)^2 + (1 + cos alpha)(1 - cos alpha)) =
sqrt((1 + cos alpha)(1 + cos alpha + 1 - cos alpha)) = \
sqrt(2(1 + cos alpha)) = sqrt(2(1 + 2cos^2 alpha/2 - 1)) = 
sqrt(4cos^2 alpha/2) = 2cos alpha/2
$

$cos alpha/2$ jest zawsze dodatni co wynika z założeń.

Niech $phi = arg(z)$. Wtedy:

$
cos phi = (1 + cos alpha)/(2 cos alpha/2) =
(1 + 2cos^2 alpha/2-1)/(2 cos alpha/2) = cos alpha/2
$

$
sin phi = (sin alpha) / (2cos alpha/2) = 
(2 sin alpha/2 cos alpha/2)/(2 cos alpha/2) = sin alpha/2
$

Więc:

$
z = 2cos alpha/2 (cos alpha/2 + i sin alpha/2)
$
