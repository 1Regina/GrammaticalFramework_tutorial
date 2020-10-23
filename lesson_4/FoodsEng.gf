-- this is functor instantiator method. Alternatively can use FoodsEngAlt.gf
--# -path=.:../foods:present
  
    concrete FoodsEng of Foods = FoodsI with
      (Syntax = SyntaxEng),
      (LexFoods = LexFoodsEng) ;