	readPGF   :: FilePath -> IO PGF
  
    linearize :: PGF -> Language -> Tree -> String
    parse     :: PGF -> Language -> Category -> String -> [Tree]
  
    linearizeAll     :: PGF -> Tree -> [String]
    linearizeAllLang :: PGF -> Tree -> [(Language,String)]
  
    parseAll     :: PGF -> Category -> String -> [[Tree]]
    parseAllLang :: PGF -> Category -> String -> [(Language,[Tree])]
  
    languages    :: PGF -> [Language]
    categories   :: PGF -> [Category]
    startCat     :: PGF -> Category
