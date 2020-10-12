oper artIndef : Str =
      pre {"a" ; "an" / strs {"a" ; "e" ; "i" ; "o"}} ;

-- Thus 

--     artIndef ++ "cheese"  --->  "a" ++ "cheese"
--     artIndef ++ "apple"   --->  "an" ++ "apple"