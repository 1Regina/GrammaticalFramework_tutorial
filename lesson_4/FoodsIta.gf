--# -path=.:present

concrete FoodsIta of Foods = open SyntaxIta,ParadigmsIta in {
    
    flags startcat=Phrase ;

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

      Wine = mkCN (mkN "vino") ;
      Pizza = mkCN (mkN "pizza") ;
      Cheese = mkCN (mkN "formaggio") ;
      Fish = mkCN (mkN "pesce") ;
      Fresh = mkAP (mkA "fresca") ;
      Warm = mkAP (mkA "caldo") ;
      Italian = mkAP (mkA "Italiano") ;
      Expensive = mkAP (mkA "caro") ;
      Delicious = mkAP (mkA "delizioso") ;
      Boring = mkAP (mkA "noioso") ;
    }