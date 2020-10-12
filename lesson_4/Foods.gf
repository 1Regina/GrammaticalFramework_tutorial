abstract Foods =  {

      flags startcat = Statement ;
  
      cat
        Phrase ;
        Quality ;
        Kind ;
        Item;
        Statement;


      fun
        NoPrefix                                                : Phrase -> Statement ;
        ExcuseMe                                                : Phrase -> Statement ;
  
        Fresh, Warm, Italian, Expensive, Delicious, Boring      : Quality ;
        Very                                                    : Quality -> Quality ;
        QKind                                                   : Quality -> Kind -> Kind ;
        
        Wine                                                    : Kind ;      
        Cheese, Fish                                            : Kind ;
        Pizza                                                   : Kind ;
        
        -- (lexicalized for This and These Kind) Det                                                     : Det -> Kind -> Item
        This, That                                              : Kind -> Item ; 
        These, Those                                            : Kind -> Item ;

        Is                                                      : Item -> Quality -> Phrase ;
     -- QnIs                                                    : Item -> Quality -> Phrase ;
       
    }