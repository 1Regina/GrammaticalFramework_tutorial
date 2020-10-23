abstract Foods =  {

      flags startcat = Phrase ; -- Org was Statement. Changed to cater for the short version in FoodsIta Phrase
  
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