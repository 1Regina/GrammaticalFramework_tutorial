concrete NonFreeCopy of NonContextFreeCopyLang = {


-- lincat
--      _ = {s: Str};

lin 
    empty       = ss "";

    -- Terminal--
    a           = ss "a"; 
    b           = ss "b"; --or  {s ="b"}-- takes a string -> string

    -- : Terminal -> Subexpr -> Subexpr; 
    --append t s = { s = t.s ++ s.s};
    append_a x = { s = "a"++ x.s};
    append_b x = { s = "b" ++ x.s};
    
    -- : Subexpr -> Expr;
    mkExpr sub = { s = sub.s ++ sub.s};


oper
    SS                  : Type = {s : Str} ;
    ss                  : Str -> SS = \x -> {s = x} ;
    
}