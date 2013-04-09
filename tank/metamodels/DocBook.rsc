@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DocBook

syntax DocBook
        = 
        ANY books+
 ;
syntax Book
        = 
        ANY articles+
 ;
syntax TitledElement
        = 
        ()
 ;
syntax Article
        = 
        ANY sections_1+
 ;
syntax Sect1
        = 
        ANY paras+
 ;
syntax Para
        = 
        content: ANY
 ;
