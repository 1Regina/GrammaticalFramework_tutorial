resource MySyntaxEng = {
    param
      Number = Sg | Pl ;
  
    oper
      CN : Type = {s : Number => Str} ;      -- pizza/pizzas
      NP : Type = {s : Str ; n : Number} ;   -- pizza (decided)
      
      -- det :  Number -> (determiner : Str) -> CN -> NP = \d,n,cn -> { 
      det :  Number -> Str -> CN -> NP = \n,d,cn -> {   
                                                        s = d ++ cn.s ! n ;
                                                        n = n
                                                                              } ;


      noun : Str -> Str -> {s : Number => Str} = \man,men -> {s = table {
                                                                            Sg => man ;
                                                                            Pl => men
                                                                            }
                                                                         } ;

      regNoun : Str -> {s : Number => Str} = \car -> noun car (car + "s") ;


      copula : Number -> Str = \n -> case n of {
                                                    Sg => "is" ;
                                                    Pl => "are"
                                                    } ;
}