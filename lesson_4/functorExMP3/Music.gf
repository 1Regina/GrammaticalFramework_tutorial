abstract Music = {
    flags startcat = Phrase ;

    cat 
        Phrase ;
        Quality ;
        Kind ;
        Action ;
        Item ;
    
    fun
        Nice, Fast, Loud, Boring                : Quality   ;       
        Very                                    : Quality -> Quality    ;

        Song, Movie                             : Kind    ;
        Singer, Artist                          : Kind    ;    

        QKind                                   : Quality -> Kind -> Kind ;

        Play, Remove                            : Action    ;     
        Repeat, Stop                            : Action    ;      


        This, ThePrevious                       : Kind -> Item;

        Command                                 : Action -> Item -> Phrase;         
}