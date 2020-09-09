abstract alfredNonContextFreeCopyLangAbstr = {

    flags startcat = Expr ;

    cat 
        Expr ;
        Subexpr ;

    fun 
        atomic : Subexpr ;
        append_a : Subexpr -> Subexpr ;
        append_b : Subexpr -> Subexpr ;
        mk_expr  : Subexpr -> Expr ;
}