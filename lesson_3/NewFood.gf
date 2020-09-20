abstract NewFood = Drink ** {
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
        Pizza                                                   : Kind ;
        
        -- (lexicalized for This and These Kind) Det                                                     : Det -> Kind -> Item
        This, That                                              : Kind -> Item ; 
        These, Those                                            : Kind -> Item ;

        Is                                                      : Item -> Quality -> Phrase ;
        QnIs                                                    : Item -> Quality -> Phrase ;
                                                                 --(takes an/(x) argument(s) of type) --> (returns product type);  
    }
