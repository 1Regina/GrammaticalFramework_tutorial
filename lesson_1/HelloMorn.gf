--a "Heello & Morning" grammar

abstract HelloMorn = {

    flags startcat = Greeting ;

    cat 
        Greeting ; 
        Recipient;
        Morning;
        Afternoon;

    fun 
    -- function names must not be the same as categories
        Hello                                           : Recipient -> Greeting;
        World, Mum, Friends, Dad, Everyone, NoOne       : Recipient ;
        GreetMorning                                    : Recipient -> Morning;
        GreetAfternoon                                  : Recipient -> Afternoon;

}