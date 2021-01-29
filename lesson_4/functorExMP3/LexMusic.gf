interface LexMusic = open Syntax in {
    oper
      song_N : N ;
      movie_N : N ;
      singer_N : N ;
      artist_N : N ;

      nice_A : A ;
      fast_A : A ;
      loud_A : A ;
      boring_A : A ;

      previous_A : A ; -- NEED THIS!!
      
      play_V2 : V2 ;
      remove_V2 : V2 ;
      repeat_V2 : V2 ;
      stop_V2 : V2;



      -- Required given the abstract? No need bcos it is in the grammmar library. Even "Very" bcos it is Quality
      -- 1) adjective phrase  
      -- very_nice_AP   : AP ;
      -- very_fast_AP   : AP ;
      -- very_loud_AP   : AP ;
      -- very_boring_AP : AP ; 

      -- -- 2) Common Noun
      -- nice_song_CN    : CN;
      -- nice_movie_CN   : CN;
      -- nice_singer_CN  : CN;
      -- nice_artist_CN  : CN; 

      -- fast_song_CN    : CN;
      -- fast_movie_CN   : CN;
      -- fast_singer_CN  : CN;
      -- fast_artist_CN  : CN; 

      -- loud_song_CN    : CN;
      -- loud_movie_CN   : CN;
      -- loud_singer_CN  : CN;
      -- loud_artist_CN  : CN; 

      -- boring_song_CN    : CN;
      -- boring_movie_CN   : CN;
      -- boring_singer_CN  : CN;
      -- boring_artist_CN  : CN; 


      -- this_song_NP    : NP;
      -- this_movie_NP   : NP;
      -- this_singer_NP  : NP;
      -- this_artist_NP  : NP; 

      -- previous_song_NP    : NP;
      -- previous_movie_NP   : NP;
      -- previous_singer_NP  : NP;
      -- previous_artist_NP  : NP; 
      }