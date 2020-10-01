concrete DiscontConstConcrete of DiscontConst ={



    lincat
        Sentence , Object  = {s :Str};
        Subject = {s : Str ; n : Number} ; 
        Verb = {s : Number => Str ; part : Str} ;  -- part refers "off"
    
    lin
       MkSentence subj verb obj =
      {s = subj.s ++ verb.s ! subj.n ++ obj.s ++ verb.part} ;
    -- ! is the table selector. So here is select the verb s table Sg or Pl according to subj.n (Sg or Pl)
 
       He =  { s=  "He"; n = Sg} ;
       They =  { s=  "They"; n = Pl} ;

        Run = { s= table { Sg => "runs" ; 
                           Pl => "run" 
                            };
                part = "off"
                          };
        Switch ={ s= table { Sg => "switches" ; 
                           Pl => "switch" 
                            };
                part = "off"
                          };
        It = {s = "it"};
        Them = {s= "them"};


    param
      Number = Sg | Pl ;
}