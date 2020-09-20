resource SmarterParadigms = {

    param

        Number = 
        Sg 
        | Pl                       ;


        VerbForm =
        VPresent Number 
        | Vcontinuous
        | VPast       
        | VPresPart
        | VPastPart                ;


    oper
        Noun : Type = {s : Number => Str} ;
        
        mkNoun : Str -> Str -> Noun = \x,y -> 
         {s =
            table {
                Sg      => x     ;
                Pl      => y           
                }
              }; 

        regNoun : Str -> Noun  = \w ->
            let
                ws : Str = case w of {
                _ + ("a" | "e" | "i" | "o") + "o" => w + "s" ;  -- bamboo
                _ + ("s" | "x" | "sh" | "o")      => w + "es" ; -- bus, hero
                _ + "z"                           => w + "zes" ;-- quiz
                _ + ("a" | "e" | "o" | "u") + "y" => w + "s" ;  -- boy
                x + "y"                           => x + "ies" ;-- fly
                _                                 => w + "s"    -- car
                }
        in
        mkNoun w ws                                          ;


        consonant : pattern Str = #("z"|"d"|"l"|"b"|"k");

        regVerb : Str -> {s : VerbForm => Str} = \verb -> 
         {s =
            table {
                -- VPresent Sg              => verb + "s"     ;
                VPresent Sg                 => case verb of {
                                                    _ + ("s" | "x" | "sh" | "o")            => verb + "es" ; -- dress, go
                                                    _ + "z"                                 => verb + "zes" ;-- quiz
                                                    verb + "y"                              => verb + "ies" ;-- fly
                                                    _                                       => verb + "s"   -- see, care
                                                            } ;
                VPresent Pl                 => verb           ;
               
                Vcontinuous                 => case verb of {
                                                    saddl + "e"                             => saddl + "ing" ;     --saddling
                                                    _ + #consonant + #consonant             => verb + "ing" ;         -- jogging
                                                    qui + z@#consonant                      => qui + z + z + "ing"; -- quizzing
                                                    _                                       => verb + "ing"
                                                             } ;
                _                           => case verb of {
                                                    tr + "y"                                => tr + "ied";
                                                    us  + "e"                               => us + "ed" ;
                                                    _                                       => verb + "ed"
                                                            }                                             
                    }
                }                                     
                  
        ;

        umlautsGalore : Str -> Str = \w ->
            let umlautW : Str = case w of {
                x + "a" + y                 => x + "ä" + y ;
                x + "o" + y                 => x + "ö" + y ;
                x + "u" + y                 => x + "ü" + y 
            }
            in umlautW ;

    }