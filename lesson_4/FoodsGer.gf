    --# -path=.:../foods:present
  
    concrete FoodsGer of Foods = FoodsI with
      (Syntax = SyntaxGer),
      (LexFoods = LexFoodsGer) ;