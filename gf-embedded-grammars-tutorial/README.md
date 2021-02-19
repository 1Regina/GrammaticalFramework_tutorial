# Tutorial: How to use GF grammars from another program

This repository contains code examples to complement my blog post on [embedding grammars](https://inariksit.github.io/gf/2019/12/12/embedding-grammars.html). For general introduction, here's the intro of the blog post.

> This post will show how to use GF grammars from an external program, and how to manipulate GF trees from that program.
> The topic is introduced in [Lesson 7](http://www.grammaticalframework.org/doc/tutorial/gf-tutorial.html#toc143) of the tutorial, and I will cover parts that I find missing in the tutorial:

> * Installation, other practicalities of the GF ecosystem
> * Linguistically motivated example of tree manipulation
> * Examples in both Haskell and Python (the examples are the same, so only knowing one is enough)



Steps (added by RC) See step 7.
1. ➜  GrammaticalFramework_tutorial git:(master) <<DO>> git clone https://github.com/inariksit/gf-embedded-grammars-tutorial.git
2. ➜  GrammaticalFramework_tutorial git:(master) ✗ <<DO>> cd gf-embedded-grammars-tutorial 
3. ➜  gf-embedded-grammars-tutorial git:(master) <<DO ONCE ONLY for this project>> stack build
4. ➜  gf-embedded-grammars-tutorial git:(master) ✗ <<DO>> stack run ReflTransfer 
5. ➜  gf-embedded-grammars-tutorial git:(master) ✗ <<DO>> gf -make -f haskell resource/MiniLangEng.gf
6.  Dont need to change "gf-embedded-grammars-tutorial.cabal" so keep ReflTransfer as it is.
7. ➜  gf-embedded-grammars-tutorial git:(master) ✗ <<FUTURE JUST DO THIS>> stack run ReflTransfer     
8. <<Test with>> 
   1. I see me   
   >> I see myself
   2. John sees John
   >> John sees itself
   3. John drinks water
   >> John drinks water
   >> quit
9. <<Others>>
   1.  stack ghci
   2.  *Main MiniLang> <<DO>> import PGF
   3.  <<Open MiniLang>>
      ``` *Main MiniLang PGF> gr <- readPGF "MiniLang.pgf"
          PGF> :t gr
          gr :: PGF
          PGF> languages gr
          [MiniLangEng]
          PGF > categories gr
          [A,AP,Adv,CN,Cl,Conj, … ,VP]
      ```
   4. To parse or linearise (ie with a concrete language):
      ```PGF> let eng = head $ languages gr
         PGF> parse gr eng (startCat gr) "I sleep"
         [EApp (EFun UttS) (EApp (EApp (EFun UsePresCl) (EFun PPos)) (EApp (EApp (EFun PredVP) (EApp (EFun UsePron) (EFun i_Pron))) (EApp (EFun UseV) (EFun sleep_V))))]
      ```
   5. To see trees like the GF trees:
      ```PGF> let trees = parse gr eng (startCat gr) "I sleep"
         PGF> map (showExpr []) trees
         ["UttS (UsePresCl PPos (PredVP (UsePron i_Pron) (UseV sleep_V)))"]
      ```   
   6.  <<TO QUIT>> :q
10.   <<Reflexive>> : two arguments that are identical, and will trigger the change into reflexive bcos ComplV2’s NP argument same as PredVP’s NP
    *  ```
       -- Sentence
       PredVP    : NP -> VP -> Cl ;        -- John walks / John does not walk
       -- Verb
       ComplV2   : V2  -> NP -> VP ;       -- love it
       ReflV2    : V2 -> VP ;              -- use itself  
       ```  
    *  "the water" must pair with "the water" and "water" with "water" . Not more nor less. 
    *  The verb form must be correct.
    1.  John sleeps and the water drinks the water
    >>  John sleeps and the water drinks itself
    2.  Water sleeps and the water drinks the water
    >>  NO PARSE
    3.  The water sleeps and the water drinks the water
    >>  NO PARSE
    4. water drinks water
    >> water drinks itself
    5. water drink water
    >> NO PARSE
    6. John sleeps and water drinks water
    >> John sleeps and water drinks itself
    7. John sleeps and the water drinks water
    >> John sleeps and the water drinks water
    8. John sleeps and water drinks the water
    >> John sleeps and water drinks the water