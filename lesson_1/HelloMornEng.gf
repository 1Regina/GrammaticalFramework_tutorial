concrete HelloMornEng of HelloMorn = {

    lincat 
        Greeting, Recipient = {s : Str} ;

    lin
        Hello recip         = {s = "hello" ++ recip.s} ;
        World               = {s = "world"} ;
        Mum                 = {s = "mum"} ;
        Friends             = {s = "friends"} ;
        Dad                 = {s = "dad"} ;
        Everyone            = {s = "everyone"} ;
        NoOne               = {s = "no one"} ;
        Nonsense = {s = "nonsense"} ;
        GreetMorning recip   = {s = "morning" ++ recip.s};
    }