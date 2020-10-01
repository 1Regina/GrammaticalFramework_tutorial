abstract DiscontConst ={

    flags startcat = Sentence;

    cat
        Sentence;
        -- Group;
        Subject;
        Verb;
        -- Count;
        Object;


    --They Switch It Off
    -- He Switches Them off
    
    fun
       --AppTV : Item -> TV -> Item -> Phrase ;
       --AppColour : Item -> TV -> Item -> Phrase ; 

    -- Subject
        -- He                              : Group -> Subject;
        -- They                            : Group -> Subject;
        He                              : Subject;
        They                            : Subject;


    -- Verb
        Run                             : Verb;
        Switch                          : Verb;

    -- Item
        It                              : Object;
        Them                            : Object;

        MkSentence                      : Subject -> Verb -> Object-> Sentence;

}