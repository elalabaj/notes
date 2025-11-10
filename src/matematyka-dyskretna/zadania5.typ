#import "../../template.typ": *
#show: template

#problem[
  Na ile różnych sposobów można  ulokować $n$ osób w dokładnie $k$ spośród $m$ 
  ponumerowanych pokoi?
]

Dzielimy osoby na $k$ grup, a potem każdej grupie przydzielamy pokój.
$
  S(n, k) dot (m!)/(m-k)!
$

#problem[
  Ile jest różnych liczb co najwyżej $20$-cyfrowych, które zawierają wszystkie 
  $10$ cyfr?
]

Dzielimy miejsca w liczbie na $10$ grup którym przypisujemy cyfry.
$
S(10, 10) dot 10! + S(11, 10) dot 10! + ... + S(20, 10) dot 10!
$

#problem[
Na ile różnych sposobów można składać w listopadzie codzienne wizyty u jednej z 
$12$ koleżanek, tak by ostatecznie odwiedzić wszystkie z nich?
]

Dzielimy dni listopada na $12$ grup, każdej grupie przypisujemy koleżankę.
$
S(30, 12) dot 12!
$

#problem[
Na ile różnych sposobów można przydzielić $12$ z $20$ rycerzy do obrony 
dokładnie $3$ z $4$ baszt zamku?
]

Wybieramy rycerzy i baszty. Dzelimy rycerzy na $3$ grupy i każdej przypisujemy
basztę.
$
binom(20, 12) binom(4, 3) dot S(12, 3) dot 3!
$

#problem[
Na ile różnych sposobów kapitan piratów może ukryć skarb złożony z tysiąca 
złotych dukatów w $13$ identycznych dostatecznie dużych skrzyniach?
]

Zakładamy, że skrzynie mogą być puste.
$
P(1000, 1) + P(1000, 2) + ... + P(1000, 13)
$

#problem[
Na ile różnych sposobów można rozmieścić w $n$ skrytkach zapasowe klucze do 
nich tak, aby w każdej był jeden klucz i tak by istniało $k$ takich skrytek, 
do których włamanie się pozwoli otworzyć wszystkie pozostałe?
]

Włamanie się do skrytki pozwoli otworzyć wszystkie skrytki, które leżą na tym
samym cyklu w permutacji, czyli szukamy ilości permutacji z $k$ cyklami.

$
c(n, k)
$

#problem[
Ile jest różnych permutacji zbioru ${1, 2, . . . , n}$ mających $k$ cykli, 
takich, że jedynka jest w cyklu $l$-elementowym?
]

Wybieramy $l-1$ elementów do pierwszego cyklu, a pozostałe dzielimy na $k-1$
cykli.
$
  binom(n-1, l-1) dot c(n-l, k-1)
$

#problem[
Ile jest różnych permutacji zbioru $A$, w których liczby parzyste są na 
przemian z nieparzystymi i nie ma punktów stałych, gdy:
]

#subproblem[
$A = {1, 2, . . . , 9}$?
]

Nieparzyste na nieparzystych miejscach i odwrotnie.
$
 !5 dot !4
$

#subproblem[
$A = {1, 2, . . . , 10}$?
]
Jeśli nieparzyste są na parzystych i odwrotnie to nie ma punktów stałych
$
(!5)^2 + (5!)^2
$

#problem[
Na ile różnych sposobów można podać obiad $2n$ osobom, z których każda zamówiła 
inną zupę i inne drugie danie, tak aby połowa z nich dostała swoją zupę, 
ale nie swoje drugie danie, a druga połowa odwrotnie?
]

Wybieramy $n$ osób które dostaną swoją zupę. Liczymy nieporządki połowy zup i
połowy drugich dań

$
binom(2n, n) dot (!n)^2
$
