abstract NonContextFreeCopyLang = {

    flags startcat = Expr ;

    cat 
        Expr ;
        Subexpr ;
        Terminal ;

    fun 
        a : Terminal ;
        b : Terminal ;
        mk_subexpr : Terminal -> Terminal -> Subexpr;
        append_a : Subexpr -> Subexpr ;
        append_b : Subexpr -> Subexpr ;
        mk_expr  : Subexpr -> Expr ;
}