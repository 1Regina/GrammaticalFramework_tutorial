abstract Food = Drink ** {
  -- ** To extend Drink module to Food Module
      flags startcat = Statement ;
  
      cat
        Phrase ; Item ; Kind ; Quality ; Statement;
  
      fun
        NoPrefix                                                : Phrase -> Statement ;
        ExcuseMe                                                : Phrase -> Statement ;
  
        Fresh, Warm, Italian, Expensive, Delicious, Boring      : Quality ;
        Very                                                    : Quality -> Quality ;
        QKind                                                   : Quality -> Kind -> Kind ;
        
       -- (no more after sep extension) Wine                                                    : Drink ;      
        Cheese, Fish                                            : Kind ;
        This, That                                              : Kind -> Item ; 

        Is                                                      : Item -> Quality -> Phrase ;
        QnIs                                                    : Item -> Quality -> Phrase ;
                                                                 --(takes an/(x) argument(s) of type) --> (returns product type);  
    }

--------Example--------
--   Is (This (QKind Delicious (QKind     Italian    Wine)))                         (Very       (Very       Expensive))
--                               Red takes  Quality + kind -> produces Kind (Red)
--             Green takes Quality -> takes Red output Kind -> produces Kind (Green)

--       takes green ouput Kind -> produces Item      


--                                                                                     Quality -> (takes Quality -> output Quality)
    
--  Takes This   output Items                               and takes                                above fn output Quality           -> produces a phrase


--------Linearized output--------
--    this     delicious  Italian wine     is              very      very       expensive