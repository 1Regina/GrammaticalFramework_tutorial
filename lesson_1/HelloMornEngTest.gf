concrete HelloMornEngTest of test = {

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
        Morning recip       = {s = "morning" ++ recip.s};
    }