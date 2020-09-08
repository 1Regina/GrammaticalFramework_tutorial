concrete NonContextFreeCopyLang of NonContextFreeCopy = {


lincat
    Terminal, Subexpr, Expr = {s: Str}; -- or  = SS;

lin
    empty                   = {s = ""} ;

    -- Terminal--
    a                       = {s = "a"} ; 
    b                       = {s = "b"} ;

    -- Terminal -> Subexpr -> Subexpr; 
    
    append t sub            = { s = t.s ++ sub.s}; -- {s = t.s} ++ {s = sub.s} but not defined in oper
     
    -- Subexpr -> Expr;
    mk_expr sub              = { s = sub.s}; -- ss sub


-- oper
--     SS                  : Type = {s : Str} ;
--     ss                  : Str -> SS = \x -> {s = x} ; 
--                           "A" -> {s = "A"} ;
    
}