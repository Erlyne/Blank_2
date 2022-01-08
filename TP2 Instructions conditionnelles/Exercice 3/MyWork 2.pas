{--------J'‚cris le pseudo code pour me faciliter la tache
Var
    angle1, angles2, angle3: r‚el;
    condition1, condition2, condition3, condition4: bool‚en;
    nature_du_triangle: chaine de caractŠre;
debut
    
    
    R‚p‚ter 
        Ecrire('Entre les degrŠs des 3 angles du triangles successivement');
        lire(angle1, angle2, angle3);
    jusqu'… ((angle1 + angle2 + angle3 = 180) ET (angle1 >=0 ET angle2 >=0 ET angle3 >=0);
    
    condition1 <-- angle1 = angle2;
    condition2 <-- angle2 = angle3;
    condition1 <-- angle3 = angle1;
    condition4 <-- angle1 = 90 OU angle2 = 90 OU angle3 = 90;
    
    Si (condition1 ET condition2 ET condition3) alors 
         nature_du_triangle <-- "equiteral";
    Sinon Si (condition1 OU condition2 OU condition3) alors
        Si (condition4) alors 
             nature_du_triangle <-- "isocŠle et rectangle";
        Sinon 
             nature_du_triangle <-- "isocŠle";
        Fin
    Sinon Si (condition4) alors
         nature_du_triangle <-- "rectangle";
    Sinon 
         nature_du_triangle <-- "quelconque";
    FinSi
Ecrire ("Le triangle est de nature :",  nature_du_triangle);
}

program exo3;
var

    angle1, angle2, angle3: real;
    condition1, condition2, condition3, condition4: boolean;
    nature_du_triangle: string;
    
    begin
    {---Controle de saisie}
    Repeat
        writeln('Entre les degrŠs des 3 angles du triangles successivement');
        readln(angle1, angle2, angle3);
    until (angle1 + angle2 + angle3 = 180 and angle1 >=0 and angle2 >=0 and angle3 >=0);
      {---Fin controle de saisie}
  
    condition1 := angle1 = angle2;
    condition2 := angle2 = angle3;
    condition3 := angle3 = angle1;
    condition4 := angle1 = 90 or angle2 = 90 or angle3 = 90;
    
    if (condition1 and condition2 and condition3) then {<---Si les trois degrŠs d'angles sont ‚gales}
        begin
            nature_du_triangle :='equiteral';
       else if (condition1 or condition2 or condition3) alors {<---Si SEULEMENT deux degrŠs d'angles sont ‚gales, puisque si plus que deux sont ‚gales, le programme s'aurait ‚t‚ contont‚ de la premiere condition, le fait qu'il y entre veut dire que SEULEMENT ET UNIQUEMENT 2 }
            begin
            	if (condition4) then {<---Verifier d'abord si un des 3 degrŠs d'angle = 90}
                    begin
                        nature_du_triangle := 'isocŠle et rectangle';
                    end
               else {<--- Sinon...}
                    begin
                        nature_du_triangle := 'isocŠle';
                    end
        else if (condition4) then {Si l'un des degrŠs d'angles du triangles = 90, et les deux autres peuvent etre tout mais pas ‚gales!}
            begin
                nature_du_triangle := 'rectangle';
            end
        else {Si aucun angle du triangle n'est ‚gal, et si aucun degrŠs d'angle = 90}
            begin
                nature_du_triangle := 'quelconque';
            end
Ecrire ('Le triangle est de nature :',  nature_du_triangle);
end.
{Il y'a des erreurs que je n'arrive pas … , je dois consulter mes professeurs...}



    