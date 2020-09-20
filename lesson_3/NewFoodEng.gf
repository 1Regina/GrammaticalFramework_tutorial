concrete NewFoodEng of Food = 
    
    {
  
      lincat
        Phrase, Quality, Statement                 = {s : Str} ;
        Item                                       = {s : Str ; n : Number} ;
        Kind                                       = {s : Number => Str} ;
        -- (for parametric feature) Kind                                       = {s : Str ; n : Number} ;
        -- (lexicalized for determ for Kind) Det                               = {s : Str ; n : Number} ;

      lin
        
        NoPrefix phrase                            = {s  =  phrase.s} ;
        ExcuseMe phrase                            = {s  = "Excuse Me" ++ phrase.s} ;       


       -- (replaced due to copula) Is item quality                           = {s  = item.s ++ "is" ++ quality.s} ;
       -- (replaced due to copula) QnIs item quality                         = {s  = "is" ++ item.s ++ quality.s} ;
        Is item qual                              = {s = item.s ++ copula item.n ++ qual.s} ;
        QIs item qual                             = {s = copula item.n ++ item.s ++  qual.s} ;
        -- (replaced due to copula) This kind                                 = {s  = "this" ++ kind.s} ;
        -- (replaced due to copula) That kind                                 = {s  = "that" ++ kind.s} ;
        -- (replaced due to determiners) This kind                            = {s = "this"  ++ kind.s ! Sg ; n = Sg};
        -- (replaced due to determiners) These kind                           = {s = "these" ++ kind.s ! Pl ; n = Pl};
        -- (lexicalized for This and These Kind) Det det kind                 = {s = det.s ++ kind.s ! det.n ; n = det.n } ;
        This                                      = det Sg "this"  ;
        These                                     = det Pl "these" ;

        QKind quality kind                        = {s  = quality.s ++ kind.s} ;
 
        ---- (no more after sep extension)  Wine                              = {s  = "wine"} ;
        Cheese                                    = {s  = "cheese"} ;
        Fish                                      = {s  = "fish"} ;

        Very quality                              = {s  = "very" ++ quality.s} ;
        Fresh                                     = {s  = "fresh"} ;
        Warm                                      = {s  = "warm"} ;
        Italian                                   = {s  = "Italian"} ;
        Expensive                                 = {s  = "expensive"} ;
        -- Delicious                              = {s  = "delicious"} ;
        Delicious                                 = {s = variants {"delicious" ; "exquisit" ; "tasty"}} ;
        Boring                                    = {s  = "boring"} ;
    

      oper 
       copula : 
        Number -> Str = \n ->  case n of {
          Sg                                       => "is" ;
          Pl                                       => "are"
          } ;

       det :
        Str -> Number -> {s : Number => Str} -> {s : Str ; n : Number} =
          \det,n,kind -> {
          s = det ++ kind.s ! n ;
          n = n
        } ;
      }  