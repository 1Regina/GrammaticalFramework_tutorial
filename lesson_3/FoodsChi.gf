concrete FoodsChi of Foods = open Prelude in {
  
    lincat
      Statement, Phrase, Quality , Kind = SS ; -- in prelude, SS = {s : Str}
                                               -- while ss is an oper that creates an SS
    --   Kind = {s : Number => Str} ;
      Item = {s : Str ; n : Number} ;  -- classifier
 
    lin
      NoPrefix phrase                            = {s  =  phrase.s} ;
      ExcuseMe phrase                            = {s  = "请问"++ phrase.s ++ "吗"} ;      
    --   Is item quality = ss (item.s ++ copula item.n ++ quality.s) ; formerly from FoodsEng

     -- 这 几 条 鱼 是 美味 的" --predicative
     -- 这 些 ß是 美味 的" 鱼 -- some other project another day
      Is item quality = ss (item.s ++ "是" ++ quality.s ++ "的") ;  
      This  = det Sg  "这";
      That  = det Sg "那" ;
      These = det Pl "这几 " ;
      Those = det Pl "那几 " ;
      -- myfunc x y = x + y 
       -- QKind not required anymore bcos we dont want quality ++ kind phrase
    --   QKind quality kind = {s = n => quality.s ++ kind.s}} ; -- "xin xian" ++ "yu" = "xin xian yu"
      Wine = ss "杯酒" ; 
      Cheese = ss "块乳酪" ; 
      Fish = ss "条鱼"  ; -- "条"
      Pizza = ss "片比萨" ; -- "片" -- {s="pian pi sa"}
      Very = prefixSS "很" ;
      Fresh = ss "新鲜" ;
      Warm = ss "温" ;
      Italian = ss "意大利式" ;
      Expensive = ss "贵" ;
      Delicious = ss "美味" ;
      Boring = ss "无味" ;

    param
      Number = Sg | Pl ;
  
    oper

    -- String  is a type alias for [Char]
      CommNoun : Type = {s : Str} ;      -- pizza/pizzas
      NounPhr : Type = {s : Str ; n : Number} ;   -- pizza (decided)
      
      -- 这 几 条 鱼 :: Plural 
      -- 这 条 鱼 :: Singular
      -- det 
      -- CN : yu
      -- determiner : zhe
      -- Number : Sg | Pl 
 
      -- det Sg "zhe" "yu" -> {s="zhe tiao tu", n = Sg}
      det :  Number -> Str -> CommNoun -> NounPhr = \n,d,cn -> {   
                                                        s = d ++ cn.s ;
                                                        n = n
                                                                              } ;

    --Chinese dont have plural or singular for noun ie man vs men
    --   noun : Str -> Str -> {s : Number => Str} = \man,men -> {s = table {
    --                                                                         Sg => man ;
    --                                                                         Pl => men
    --                                                                         }
    --                                                                      } ;

    --   regNoun : Str -> {s : Number => Str} = \car -> noun car (car + "s") ;


      --quantifier. taken care of in these and those
    --   copula : Number -> Str = \n -> case n of {
    --                                                 Sg => "" ;
    --                                                 Pl => "几"
    --                                                 } ;

}