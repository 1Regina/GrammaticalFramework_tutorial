abstract MoreFood = Food ** {
    flags startcat = Question ;
    cat
     Question ;
    fun
     QIs : Item -> Quality -> Question ;
     Pizza : Kind ;
}