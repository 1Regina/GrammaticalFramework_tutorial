concrete NewFoodIta of NewFood = 
        --DrinkIta **

{

    lincat
       Phrase, Item, Kind, Quality, Statement  = {s : Str} ;

    lin

        NoPrefix phrase                         = {s  =  phrase.s} ;
        ExcuseMe phrase                         = {s  = "Mi scusi" ++ phrase.s} ;    

        Is item quality                         = {s = item.s ++ "è" ++ quality.s} ;
        QnIs item quality                       = {s  = "è" ++ item.s ++ quality.s} ;

        This kind                               = {s = "questo" ++ kind.s} ;
        That kind                               = {s = "quel" ++ kind.s} ;

        QKind quality kind                      = {s = kind.s ++ quality.s} ;
       

       
        -- (remove as wine is in DrinksIta extension) Wine                                    = {s = "vino"} ; 
        Cheese                                  = {s = "formaggio"} ;
        Fish                                    = {s = "pesce"} ;
        
        Very quality                            = {s = "molto" ++ quality.s} ;
        Fresh                                   = {s = "fresco"} ;
        Warm                                    = {s = "caldo"} ;
        Italian                                 = {s = "italiano"} ;
        Expensive                               = {s = "caro"} ;
        Delicious                               = {s = "delizioso"} ;
        Boring                                  = {s = "noioso"} ;
    }