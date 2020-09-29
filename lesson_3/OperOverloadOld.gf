resource OperOverloadOld = {

    param

        Number = 
          Sg 
        | Pl                       ;


        VerbForm =
          VPresent Number 
        | VContinuous
        | VPast       
        | VPresPart
        | VPastPart                ;


    oper 

        Verb : Type = {s : VerbForm => Str} ;

        mkVerb = overload {
            mkVerb : ( walk : Str) -> Verb = regVerb ;
            mkVerb : ( sing, sang, sung : Str) -> Verb = irregVerb
            
                       };


        consonant : pattern Str = #("z"|"d"|"l"|"b"|"k");

        -- regVerb : Str -> {s : VerbForm => Str} = \verb -> 
        regVerb: Str -> Verb = \verb -> 
         {s =
            table {
                VPresent Sg                 => case verb of {
                                                    _ + ("s" | "x" | "sh" | "o")            => verb + "es" ; -- dress, go
                                                    _ + "z"                                 => verb + "zes" ;-- quiz
                                                    verb + "y"                              => verb + "ies" ;-- fly
                                                    _                                       => verb + "s"   -- see, care
                                                            } ;
                VPresent Pl                 => verb           ;
               
                VContinuous                 => case verb of {
                                                    saddl + "e"                             => saddl + "ing" ;      -- saddling
                                                    _ + #consonant + #consonant             => verb + "ing" ;       -- jogging
                                                    qui + z@#consonant                      => qui + z + z + "ing"; -- quizzing
                                                    _                                       => verb + "ing"
                                                             } ;
                _                           => case verb of {
                                                    tr + "y"                                => tr + "ied";
                                                    us  + "e"                               => us + "ed" ;
                                                    _                                       => verb + "ed"

                            }
                                                            
                   }                                                                                                                     
         };
     
    irregVerb : (present,past,pastpart : Str) -> Verb = 
      \a,b,c ->
        {s =
          table{
            VPresent Sg => a + "s" ;
            VPresent Pl => a ;
            VContinuous => a + "ing" ;
            VPast       => b ;
            VPresPart   => c ;
            VPastPart   => c
          }

        };

}