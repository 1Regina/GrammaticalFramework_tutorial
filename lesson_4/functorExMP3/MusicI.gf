    -- from gf tutorial: "Code for the Foods Functor"
    --# -path=.:../music
  
    incomplete concrete MusicI of Music = open Syntax, LexMusic in {
    lincat
      Phrase = Imp ;
      Quality = AP ;
      Kind = CN  ;
      Action = V2   ; 
      Item = NP ;

    lin
   

      Command action item  = mkImp action item ;
      Very quality = mkAP very_AdA quality ;  
     
      This kind = mkNP this_Det kind ;
      
      ThePrevious kind = 
        let previous_AP = mkAP previous_A;
         in mkNP the_Det (mkCN previous_AP kind) ;  

      -- This quality kind = mkNP this quality kind ;
      -- ThePrevious quality kind = mkNP thePrevious quality kind ; 
      QKind quality kind = mkCN quality kind ;

      Song = mkCN song_N ;
      Movie = mkCN movie_N ; 
      Singer = mkCN singer_N ; 
      Artist = mkCN artist_N ;

      Nice = mkAP nice_A ;  
      Fast = mkAP fast_A ;
      Loud = mkAP loud_A ;
      Boring = mkAP boring_A; 

      Play = play_V2;
      Remove = remove_V2;
      Repeat = repeat_V2;
      Step = stop_V2; 

    }