resource OperOverload = {

  param
    VerbForm = PresentSg | PresentPl | Continuous | Past | PastPart ;

  oper

    vowel : pattern Str = #("a"|"i"|"e"|"o"|"u") ;
    consonant : pattern Str = #("z"|"d"|"l"|"b"|"k");

    Verb : Type = {s : VerbForm => Str} ;

    regVerb : (walk : Str) -> Verb = \walk ->
      let walked : Str = case walk of {
            _ + #vowel => walk + "d" ; -- waste+d
            _          => walk + "ed" } ;
       in irregVerb walk walked walked ;


    irregVerb : (sing, sang, sung : Str) -> Verb = \sing,sang,sung ->
      let
        sings : Str = case sing of {
          _ + ("s"|"sh"|"x"|"o") => sing + "es" ;
          _ + "z"                => sing + "zes" ;
          fl + "y"                => fl + "ies" ; --fly
          _                      => sing + "s"
          } ;
        singing : Str = case sing of {
          saddl + "e"            => saddl + "ing" ;-- saddling
          qui + z@#consonant    => qui + z + z + "ing"; -- quizzing
          x + "e" => x + "ing" ;
          _       => sing + "ing"
          } ;
        sang : Str = case sing of {
          tr + "y"              => tr + "ied";
          _                     => sing + "ed"
          } ;
        sung : Str = case sing of {
          tr + "y"              => tr + "ied";
          _                     => sing + "ed"
          } ; 

       in worstCaseVerb sings sing singing sang sung ;

    -- this shouldn't be exposed to the API
    worstCaseVerb : (x1,_,_,_,x5 : Str) -> Verb =
      \psg,ppl,co,pa,psp -> {
      s = table {
        PresentSg => psg ;
        PresentPl => ppl ;
        Continuous => co ;
        Past => pa ;
        PastPart => psp
        }
      } ;
}