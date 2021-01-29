concrete FoodsEng of Foods = open Prelude, MySyntaxEng, LexFoodsEng in {
  
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
      Wine = wine_N ; -- comes from LexFoodsEng
      Cheese =cheese_N ;
      Fish = noun "fish" "fish" ;
      Pizza = regNoun "pizza" ;
      Very = prefixSS "very" ;
      Fresh = ss "fresh" ;
      Warm = ss "warm" ;
      Italian = ss "Italian" ;
      Expensive = ss "expensive" ;
      Delicious = ss "delicious" ;
      Boring = ss "boring" ;

    }