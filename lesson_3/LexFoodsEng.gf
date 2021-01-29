resource LexFoodsEng = open MySyntaxEng, Prelude in {
    oper
      wine_N = regNoun "wine" ;
      cheese_N = regNoun "cheese" ;
      fish_N = noun "fish" "fish" ;
      pizza_N = regNoun "pizza" ;
      fresh_A = ss "fresh" ;
      warm_A = ss "warm" ;
      italian_A = ss "Italian" ;
      expensive_A = ss "expensive" ;
      delicious_A = ss "delicious" ;
      boring_A = ss "boring" ;
}