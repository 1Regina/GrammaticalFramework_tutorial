abstract NonContextFreeCopyLang = {

    flags startcat = Expr ;

    cat 

        Terminal;
        Subexpr ;
        Expr ;


    fun 
        empty           : Subexpr; 
        a , b           : Terminal;

        append          : Terminal -> Subexpr -> Subexpr ;

        mk_expr         : Subexpr -> Expr ;
}