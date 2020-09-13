concrete FoodEng of Food = 
    
    {
  
      lincat
        Phrase, Item, Kind, Quality, Statement     = {s : Str} ;
  
      lin
        
        NoPrefix phrase                            = {s  =  phrase.s} ;
        ExcuseMe phrase                            = {s  = "Excuse Me" ++ phrase.s} ;       

        Is item quality                           = {s  = item.s ++ "is" ++ quality.s} ;
        QnIs item quality                         = {s  = "is" ++ item.s ++ quality.s} ;
        
        This kind                                 = {s  = "this" ++ kind.s} ;
        That kind                                 = {s  = "that" ++ kind.s} ;
        QKind quality kind                        = {s  = quality.s ++ kind.s} ;
 
        ---- (no more after sep extension)  Wine                                      = {s  = "wine"} ;
        Cheese                                    = {s  = "cheese"} ;
        Fish                                      = {s  = "fish"} ;

        Very quality                              = {s  = "very" ++ quality.s} ;
        Fresh                                     = {s  = "fresh"} ;
        Warm                                      = {s  = "warm"} ;
        Italian                                   = {s  = "Italian"} ;
        Expensive                                 = {s  = "expensive"} ;
        -- Delicious                               = {s  = "delicious"} ;
        Delicious                                 = {s = variants {"delicious" ; "exquisit" ; "tasty"}} ;
        Boring                                    = {s  = "boring"} ;
    }