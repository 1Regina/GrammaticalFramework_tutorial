    resource StringOper = {
      oper
        SS      : Type = {s : Str} ;
        ss      : Str -> SS = \x -> {s = x} ;

        cc      : SS -> SS -> SS = \x,y -> ss (x.s ++ y.s) ;
        prefix  : Str -> SS -> SS = \p,x -> ss (p ++ x.s) ;
        suffix  : SS -> Str -> SS = \x,p -> ss (x.s ++ p);
        infix   : SS -> Str -> SS -> SS = \x,p,y -> ss ( x.s ++ p ++ y.s );

        qnis    :  Str -> SS -> SS -> SS = \i,x,y -> ss ( i ++ x.s ++ y.s ); 
        -- (see QIs item quality = {s = "is" ++ item.s ++ quality.s} ; in gf website)
    }