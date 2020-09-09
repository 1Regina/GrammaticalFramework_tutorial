concrete alfredNonContextFreeCopyLangConc of alfredNonContextFreeCopyLangAbstr= {
    
-- CopyLang defined by {x x | x <- (a|b)*}
--  * "x <- (a|b)*" means "x is made up of 0 or more characters 
--    of a or b
--  * "x x" means "whatever x is, put two copies side by side"
    
    lincat
        Expr, Subexpr = SS ;

    lin
        -- : Subexpr ;
        atomic = ss "" ;
        
        -- : Subexpr -> Subexpr ;
        append_a = ss2 "a" ;
        append_b = ss2 "b" ;

        -- : Subexpr -> Expr ;
        mk_expr = cc ;

    oper
        SS : Type = {s : Str} ;


        ss : Str -> SS = \x -> {s = x} ;

        ss2 : Str -> SS -> SS = \x,y -> ss (x ++ y.s) ;
     
        cc : SS -> SS = \x -> ss (x.s ++ x.s) ;

}