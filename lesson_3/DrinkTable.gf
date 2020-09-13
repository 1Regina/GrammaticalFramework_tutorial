resource DrinkTable = {
    param -- see https://github.com/GrammaticalFramework/gf-rgl/blob/master/src/korean/ParamKor.gf#L115-L118
    
    Number = Sg | Pl ;


    VForm =
      VPresent Number 
    | VPast       
    | VPastPart   
    | VPresPart   
    | NounSg      
    | NounPl         ; 
   
   oper --remember to insert for each table
   drink =
   table {      
      VPresent Sg => "drinks" ;
      VPresent Pl => "drink" ;
      VPast       => "drank" ;
      VPastPart   => "drunk" ;
      VPresPart   => "drinking";
      NounSg      => "drink";
      NounPl      => "drinks"
      };
   }