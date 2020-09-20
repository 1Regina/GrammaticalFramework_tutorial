resource SmartParadigms = {

    param

        Number = 
        Sg 
        | Pl                       ;


        VerbForm =
        VPresent Number 
        | VConti
        | VPast       
        | VPresPart
        | VPastPart                ;


    oper

       
        mkNoun : Str -> {s : Number => Str} = \noun -> {s =
        table {
            Sg      => noun + "s"     ;
            Pl      => noun           
               }
            }; 

        regNoun : Str -> Noun = \w ->
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
        mkNoun w ws                  ;

    
        regVerb : Str -> {s : VerbForm => Str} = \verb -> {s =
            table {
                -- VPresent Sg              => verb + "s"     ;
                VPresent Sg                 => case verb of {
                                                    _ + ("s" | "x" | "sh" | "o")            => w + "es" ; -- dress, go
                                                    _ + "z"                                 => w + "zes" ;-- quiz
                                                    x + "y"                                 => x + "ies" ;-- fly
                                                    _                                       => w + "s"   -- see, care
                                                            } ;
                VPresent Pl                 => verb           ;
                -- VConti                      => verb + "ing"   ;
                VConti                      => case verb of {
                                                    _ + ("x" | "l" ) + "e"                  => w +  "" ; -- axe, saddle
                                                    _ + "d"                                 => w + "ding"; -- pad
                                                    _ + "g"                                 => w + "ging"; -- jog
                                                    _ + "z"                                 => w + "zing" ;-- quiz
                                                    _                                       => w + "ing"    -- see, care
                                                            };
                _                           => case verb of {
                                                    x + "y"                                 => x + "ied" ;
                                                    x + "e"                                 => x + "ed" ;
                                                    _                                       => a + "ed"
                                                    } 
                    }
               }                                     
        in
        mkVerb w ws                 ;

        umlautsGalore : Str -> Str = \w ->
            let umlautW : Str = case w of {
                x + "a" + y                 => x + "ä" + y ;
                x + "o" + y                 => x + "ö" + y ;
                x + "u" + y                 => x + "ü" + y 
            }
            in umlautW ;

    }