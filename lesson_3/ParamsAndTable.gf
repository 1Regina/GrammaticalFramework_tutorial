resource ParamsAndTable = {
    param -- see https://github.com/GrammaticalFramework/gf-rgl/blob/master/src/korean/ParamKor.gf#L115-L118
    
    Number = 
      Sg 
    | Pl                       ;


    VerbForm =
      VPresent Number 
    | VConti
    | VPast       
    | VPresPart
    | VPastPart   
    -- | NounSg      
    -- | NounPl                    
    ; 
  
    NounForm = 
      Noun Number  
    ;
 
   oper
     regNoun : Str -> {s : NounForm => Str} = \noun -> {s =
       table {
      Noun Sg      => noun     ;     -- 21 Jan 2021: Added Noun to Sg to compile
      Noun Pl      => noun  + "s"    -- 21 Jan 2021: Added Noun to Pl to compile     
               }
       }; 


     regVerb : Str -> {s : VerbForm => Str} = \verb -> {s =
       table {
      VPresent Sg => verb + "s"     ;
      VPresent Pl => verb           ;
      VConti      => verb + "ing"   ;
      _           => verb + "ed"    
      -- NounSg      => verb           ;
      -- NounPl      => verb + "s"     ;
              }
       }; 



    -- Verb --

   regTalk : Str -> {s : VerbForm => Str} = \talk -> {
      s = table {
        VPresent Sg => talk + "s" ;
        VPresent Pl => talk ;
        VConti      => talk + "ing" ;
        _           => talk + "ed"
        }
      } ;

   verbDrink = --remember to insert for each table
    table {      
      VPresent Sg => "drinks"   ;
      VPresent Pl => "drink"    ;
      VConti      => "drinking" ;
      VPast       => "drank"    ;
      VPresPar    => "drunk"    ;
      VPastPart   => "drunk"    

      -- NounSg      => "drink"    ;
      -- NounPl      => "drinks"
      };

  
   -- Noun --
   nounDress : Str -> {s : Number => Str} = \dress -> {s = 
    table {
      Sg    => dress      ;
      Pl    => dress + "es"
        }
      } ;
 

   childNoun : Str -> {s: Number => Str} = \child -> {s = 
    table{
      Sg          => child      ;
      Pl          => child + "ren"
          }
      };

   }

