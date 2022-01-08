program exo_2;
var
{-------- D‚clarations des variables pour partie 1 }
num: integer;
{-------- D‚clarations des variables pour partie 2 }
num1, num2, num3, max : integer;
{-------- D‚clarations des variables pour partie 3 }
    premier_mot, deuxieme_mot, dernier_mot, intermediaire : string;


begin
{------------ Partie 1}
	Writeln('Entre un nombre entier : ');
	readln(num);
	if (num < 0) then
        begin
            writeln( 'La valeur absolue de ', num, ' est ', num * (-1));
        end
    else
        begin
            writeln('La valeur absolue de ', num, ' est ', num);
        end;
End.
  
 {------------ Partie 2}
writeln('Entrez 3 nombres entiers successivement : ');
readln(num1, num2,num3);
max:= num1; {J'aurais bien pu ‚crire num2 ou num3, mais il faudrait changer les conditions en ligne 17 et 18 pour obtenir le mˆme resultat en ligne 23}
if (max < num2)  then
    Begin
    	max:= num2;
    End;
if (max < num3) then
    Begin
    	max:= num3;
    End;
    
writeln('Le plus grand nombre est : ', max);
end.

 {------------ Partie  3}

writeln('Entrez 3 mots successivement');
writeln('Entrez le premier mot : ');
readln(premier_mot);
writeln('Entrez le deuxiŠme mot : ');
readln(deuxieme_mot);
writeln('Entrez le troisiŠme mot : ');
readln(dernier_mot);
if (deuxieme_mot > dernier_mot) then
    Begin
        intermediaire:= deuxieme_mot;
        deuxieme_mot:= dernier_mot;
        dernier_mot:= intermediaire;
    end;
 if (premier_mot > deuxieme_mot) then
    begin
        intermediaire:= premier_mot;
        premier_mot:= deuxieme_mot;
        deuxieme_mot:= intermediaire;
    end;
writeln ('Les mots en ordre alphab‚tique croissant sont : ', premier_mot, ' ', deuxieme_mot, ' ', dernier_mot); 


End.
 
 