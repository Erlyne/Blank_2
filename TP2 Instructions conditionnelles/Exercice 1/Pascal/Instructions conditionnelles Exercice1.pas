Program Serie01_exo1;
Const
{------------ Declaration des constantes pour partie 3 }
date = 'Dimanche 03 Janvier 2021';
{------------ Declaration des constantes pour partie 6 }
equation1 = '(-b+Vb˝-4ac)/2a';
equation2 = '2ae???';
equation3 = '24';
equation4 ='5??/bc';

Var
{------------ Declaration des variables pour partie 1 }
num : real;
{------------ Declaration des variablespour partie 2 }
caracteres1, caracteres2 : string;
{------------ Declaration des variables pour partie 4 }
universite : string;
{------------ Declaration des variables pour partie 5 }
entier1, entier2 : integer;
{------------ Declaration des variables pour partie 6 }
a, b, c : integer;
resultat1, resultat2, resultat3, resultat4 : real;



begin
{------------ Partie 1 }
writeln('---------------------------------------------------- Partie 1');

	writeln('Entrez un nombre : ');
	readln(num);
	writeln('La valeur absolue de ', num, ' est : ', abs(num));
	writeln('Le carrÇ de ', num, ' est : ', sqr(num));
	writeln('La racine carrÇ de ', num, ' est : ', sqrt(num));
	writeln('La valeur exponentielle de ', num, ' est : ', exp(num));
	write('La partie entiäre de ', num, ' est : ', int(num));
	
	
{------------ Partie 2 }
writeln('---------------------------------------------------- Partie 2');

	writeln('Entrez, une chaine de caractere : ');
	readln(caracteres1);
	writeln('La longueur de ', caracteres1, ' est : ', length(caracteres1));
	writeln('Entrez, une autre chaine de caractäre : ');
	readln(caracteres2);
	writeln('La longueur de ', caracteres2, ' est : ', length(caracteres2));
	write('Le resultat de la concatÇnation de ', caracteres1, ' avec ', caracteres2, ' est ', concat(caracteres1,caracteres2)); 
	
	
{------------ Partie 3 }

writeln('---------------------------------------------------- Partie 3');
date := 'Dimanche 03 Janvier 2021';
writeln('La premiäre sous-chaine est : ', copy('Dimanche 03 Janvier 2021', length('Dimanche 03 ')+1,  length('janvier')));
write('La deuxiäme sous-chaine est : ', copy('Dimanche 03 Janvier 2021', length('Dimanche ')+1,  length('03 janvier')));


{------------ Partie 4 }

writeln('---------------------------------------------------- Partie 4');
universite := 'univ-.dz';
insert('Bejaia', universite, length('univ-')+1);
write(universite);




{------------ Partie 5 }
writeln('---------------------------------------------------- Partie  5');


writeln('Entrez un premier entier : ');
readln(entier1);
writeln('Entrez un deuxiäme entier : ');  
readln(entier2);
entier2:= entier2+entier1;
entier1:= entier2-entier1;
entier2 :=entier2-entier1;
writeln('la valeur de la premiäre variable saisie est maintenant ', entier2);
write('la valeur de la deuxiäme variable saisie est maintenant ', entier1);



{------------ Partie 6 }
writeln('Entre trois valeurs entiäres successivement : ');
readln(a, b, c);

resultat1:= (-b + sqrt(sqr(b) - 4*a*c))/(2*a);
resultat2 := 2*a*exp (b + c);
resultat3 := exp(4*ln(2));
resultat4 := exp(a*b*ln(5))/(b*c);
writeln('le resultat de ', equation1, ' est : ',  resultat1);
writeln('le resultat de ', equation2, ' est : ',  resultat2);
writeln('le resultat de ', equation3, ' est : ',  resultat3);
writeln('le resultat de ', equation4, ' est : ',  resultat4);


End.



