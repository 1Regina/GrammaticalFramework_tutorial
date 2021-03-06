concrete FoodsIta of Foods = open Prelude in {
  

    lincat
      Phrase , Statement                    = SS ;
      -- Qualities are inflected for gender and number
      Quality                               = {s : Gender => Number => Str} ; 
      -- Kinds have a parametric number and an inherent gender        
      -- Kind                                  = {s : Number => Str ; g : Gender} ; -- = CN. Alternative
      Kind                                  = CN ;
      -- Items have an inherent number and gender
      Item                                  = {s : Str ; g : Gender ; n : Number} ;

    
    lin
      NoPrefix phrase                       = {s  =  phrase.s} ;
      ExcuseMe phrase                       = {s  = "Mi scusi" ++ phrase.s} ;    
      Is item quality                       = ss (item.s ++ copula item.n ++ quality.s ! item.g ! item.n) ;
      This                                  = det Sg "questo" "questa" ;
      That                                  = det Sg "quel"   "quella" ;
      These                                 = det Pl "questi" "queste" ;
      Those                                 = det Pl "quei"   "quelle" ;
      QKind quality kind                    = {
                                                s = \\n => kind.s ! n ++ quality.s ! kind.g ! n ;
                                                g = kind.g
                                                } ;
      Wine                                  = noun "vino" "vini" Masc ;
      Cheese                                = noun "formaggio" "formaggi" Masc ;
      Fish                                  = noun "pesce" "pesci" Masc ;
      Pizza                                 = noun "pizza" "pizze" Fem ;
      Very qual                             = {s = \\g,n => "molto" ++ qual.s ! g ! n} ;
      Fresh                                 = adjective "fresco" "fresca" "freschi" "fresche" ;
      Warm                                  = regAdj "caldo" ;
      Italian                               = regAdj "italiano" ;
      Expensive                             = regAdj "caro" ;
      Delicious                             = regAdj "delizioso" ;
      Boring                                = regAdj "noioso" ;
    

    param
      Number                                = Sg | Pl ;
      Gender                                = Masc | Fem ;

    oper
    -- Quality is an adjective, with one form for each gender-number combination
      adjective : (_,_,_,_ : Str) -> {s : Gender => Number => Str} =
        \nero,nera,neri,nere -> {
          s = table {
            Masc => table {
              Sg => nero ;
              Pl => neri
              } ;
            Fem => table {
              Sg => nera ;
              Pl => nere
              }
           }  
        } ;  

    -- Regular adjectives work by adding endings to the stem.
      regAdj : Str -> {s : Gender => Number => Str} = \nero ->
        let ner = init nero
        in adjective nero (ner + "a") (ner + "i") (ner + "e") ;

    --noun inflection has two forms and the gender:
      noun : Str -> Str -> Gender -> {s : Number => Str ; g : Gender} =
        \vino,vini,g -> {
          s = table {
            Sg => vino ;
            Pl => vini
            } ;
           g = g
        } ;
    
    -- number variation
      copula : Number -> Str =
        \n -> case n of {
          Sg => "è" ;
          Pl => "sono"
        } ;

     CN : Type = {s : Number => Str ; g : Gender} ; -- Common noun (not yet quantified/detemined)
     NP : Type = {s : Str ; g : Gender ; n : Number} ; -- Noun phrase with determined/quantified noun

      -- det : Number -> Str -> Str -> CN -> NP
       -- det : Number -> (m,f : Str) -> CN -> NP :
      det : Number -> Str -> Str -> {s : Number => Str ; g : Gender} ->
          {s : Str ; g : Gender ; n : Number} =
        \n,m,f,cn -> {
          s = case cn.g of {Masc => m ; Fem => f} ++ cn.s ! n ;
          g = cn.g ;
          n = n
        } ;
    }