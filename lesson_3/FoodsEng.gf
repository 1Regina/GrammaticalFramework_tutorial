concrete FoodsEng of Foods = open Prelude in {
  
    lincat
      Statement, Phrase, Quality = SS ;
      Kind = {s : Number => Str} ;
      Item = {s : Str ; n : Number} ;
  
    lin
      NoPrefix phrase                            = {s  =  phrase.s} ;
      ExcuseMe phrase                            = {s  = "Excuse Me" ++ phrase.s} ;      
      Is item quality = ss (item.s ++ copula item.n ++ quality.s) ;
      This  = det Sg "this" ;
      That  = det Sg "that" ;
      These = det Pl "these" ;
      Those = det Pl "those" ;
      QKind quality kind = {s = table {n => quality.s ++ kind.s ! n}} ;
      Wine = regNoun "wine" ;
      Cheese = regNoun "cheese" ;
      Fish = noun "fish" "fish" ;
      Pizza = regNoun "pizza" ;
      Very = prefixSS "very" ;
      Fresh = ss "fresh" ;
      Warm = ss "warm" ;
      Italian = ss "Italian" ;
      Expensive = ss "expensive" ;
      Delicious = ss "delicious" ;
      Boring = ss "boring" ;

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