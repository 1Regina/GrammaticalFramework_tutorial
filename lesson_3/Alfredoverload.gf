resource Alfredoverload = {

  param 
    Number = Sg | Pl ;
    VerbForm = 
        VPresent Number
      | VPast
      | VPastPart
      | VPresPart ;

  oper 
    
    Verb : Type = {s : VerbForm => Str} ;

    mkVerb = overload {
      mkVerb : (walk : Str) -> Verb = regVerb ; -- regular
      mkVerb : (eat,ate,eaten : Str) -> Verb = irregVerb  -- irregular
    } ;

    regVerb: Str -> Verb = \a -> 
      {s = 
        table {
          VPresent Sg => a + "s" ;
          VPresent Pl => a ;
          VPresPart   => a + "ing" ;
          _           => case a of {
                            x + "y" => x + "ied" ;
                            x + "e" => x + "ed" ;
                            _   => a + "ed"
                          } 
          }
      };
    
    irregVerb : (present,past,pastpart : Str) -> Verb = 
      \a,b,c ->
        {s =
          table{
            VPresent Sg => a + "s" ;
            VPresent Pl => a ;
            VPresPart   => a + "ing" ;
            VPast       => b ;
            VPastPart   => c 
          }
        };

}