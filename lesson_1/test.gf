

-- an ABSTRACT syntax defines what MEANINGS can be expressed in the grammar

abstract test = {

    -- startcat flag declaration declares that 'Greeting's are the default start
    -- category for parsing and generation
    flags startcat = Greeting ; 

    -- category declaration defines the categories 
    cat 
        Greeting ; 
        Recipient ;
        Morning ;
        Afternoon ;

    -- function declaration introduces meaning-building functions
    fun
        Hello : Recipient -> Greeting ;
        World, Mum, Friends : Recipient ;

        -- Option Set A
        AMGreet : Recipient -> Greeting ;
        PMGreet : Recipient -> Greeting ; 

        -- Option Set B for morning
        GreetMorn : Recipient -> Morning ;
        ToGreetMorn : Morning -> Greeting ;
        -- Option Set B for afternoon
        GreetAft : Recipient ->  Afternoon ;
        ToGreetAft : Afternoon -> Greeting ; 
    
        
       
        -- Recipient --> "morning, dad" (cat Morning) --> "morning, dad" (cat Greeting)
    }