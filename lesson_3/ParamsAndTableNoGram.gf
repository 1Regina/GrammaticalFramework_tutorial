resource ParamsAndTableNoGram = {
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
  
    -- NounForm = 
    --   Noun Number  
    -- ;
 
   oper
     regNoun : Str -> {s : Number => Str} = \noun -> {s =
       table {
      Sg      => noun   ;
      Pl      => noun + "s"             
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

   
    regTalk : Str -> {s : VerbForm => Str} = \talk -> {
      s = table {
        VPresent Sg => talk ++ "s" ;  -- ++ Temporary workaround for the + operator til bugfix
        VPresent Pl => talk ;
        VPresPart   => talk ++ "ing" ;
        _           => talk ++ "ed"
        }
      } ;  


  
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

