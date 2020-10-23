--# -path=.:../foods:present
  
    concrete FoodsFin of Foods = FoodsI with
      (Syntax = SyntaxFin),
      (LexFoods = LexFoodsFin) ;