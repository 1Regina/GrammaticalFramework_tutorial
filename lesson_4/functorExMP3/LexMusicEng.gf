   instance LexMusicEng of LexMusic = open SyntaxEng, ParadigmsEng in {
    oper
  
      song_N = mkN "song" ;
      movie_N = mkN "moive";
      singer_N = mkN "singer" ;
      artist_N = mkN "artist" ;

      -- Anything taking a string comes from Paradigm
      nice_A = mkA "nice" ;
      fast_A = mkA "fast";
      loud_A = mkA "loud" ;
      boring_A = mkA "boring";

      previous_A =mkA "previous"; 

      play_V2 = mkV2 "play";
      remove_V2 = mkV2 "remove" ;
      repeat_V2 = mkV2 "repeat";
      stop_V2 = mkV2 "stop";




      -- Required given the abstract? -- No need bcos it is in the grammmar library. Even "Very" bcos it is Quality. See that similarly removed in LexMusic.gf

      -- 1) adjective phrase  
      -- Very shoudld be mkAP very_Ada(mkA "nice")
      -- very_nice_AP  = mkA "very nice" ;
      -- very_fast_AP  = mkA "very fast" ;
      -- very_loud_AP  = mkA "very loud" ;
      -- very_boring_AP = mkA "very boring" ; 

      -- -- 2) Common Noun
      -- nice_song_CN   = mkCN "nice song";
      -- nice_movie_CN   = mkCN "nice movie";
      -- nice_singer_CN   = mkCN "nice singer";
      -- nice_artist_CN   = mkCN "nice artist"; 

      -- fast_song_CN   = mkCN "fast song";
      -- fast_movie_CN   = mkCN "fast movie";
      -- fast_singer_CN  = mkCN "fast singer";
      -- fast_artist_CN  = mkCN "fast artist"; 

      -- loud_song_CN   = mkCN "loud song" ;
      -- loud_movie_CN   = mkCN "loud movie" ;
      -- loud_singer_CN  = mkCN "loud singer" ;
      -- loud_artist_CN  = mkCN "loud artist" ;

      -- boring_song_CN   = mkCN "boring song";
      -- boring_movie_CN   = mkCN "boring movie";
      -- boring_singer_CN  = mkCN "boring singer";
      -- boring_artist_CN  = mkCN "boring artist" ; 


      -- this_song_NP    = mkNP "this song";
      -- this_movie_NP   = mkNP "this movie";
      -- this_singer_NP  = mkNP "this singer";
      -- this_artist_NP  = mkNP "this artist"; 

      -- previous_song_NP    = mkNP "previous song";
      -- previous_movie_NP   = mkNP "previous movie";
      -- previous_singer_NP  = mkNP "previous singer";
      -- previous_artist_NP  = mkNP "previous artist"; 
      
    }