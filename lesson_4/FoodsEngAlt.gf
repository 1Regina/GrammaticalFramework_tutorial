--   # -path=.:/Users/regina/Code/GrammaticalFramework_tutorial/lesson_4/foods:present
-- This is renamed in order to test the alternative FoodsEng functor instantiator. 

--# -path=.:present

concrete FoodsEng of Foods = open SyntaxEng,ParadigmsEng in {

    lincat
      Phrase = Cl ;
      Item = NP ;
      Kind = CN ;
      Quality = AP ;


    lin
      Is item quality = mkCl item quality ;
      This kind = mkNP this_Det kind ;
      That kind = mkNP that_Det kind ;
      These kind = mkNP these_Det kind ;
      Those kind = mkNP those_Det kind ;
      QKind quality kind = mkCN quality kind ;
      Very quality = mkAP very_AdA quality ;

      Wine = mkCN (mkN "wine") ;
      Pizza = mkCN (mkN "pizza") ;
      Cheese = mkCN (mkN "cheese") ;
      Fish = mkCN (mkN "fish" "fish") ;
      Fresh = mkAP (mkA "fresh") ;
      Warm = mkAP (mkA "warm") ;
      Italian = mkAP (mkA "Italian") ;
      Expensive = mkAP (mkA "expensive") ;
      Delicious = mkAP (mkA "delicious") ;
      Boring = mkAP (mkA "boring") ;
    }
    -- Foods.gf
    --     Cl ;   -- clause             e.g. "this pizza is good"
    --     NP ;   -- noun phrase        e.g. "this pizza"
    --     CN ;   -- common noun        e.g. "warm pizza"
    --     AP ;   -- adjectival phrase  e.g. "very warm"

    --     mkCl : NP -> AP -> Cl ;      -- e.g. "this pizza is very warm"
    --     mkNP : Det -> CN -> NP ;     -- e.g. "this pizza"
    --     mkCN : AP -> CN -> CN ;      -- e.g. "warm pizza"
    --     mkAP : AdA -> AP -> AP ;     -- e.g. "very warm"

    --     mkCN : N -> CN ;
    --     mkAP : A -> AP ;