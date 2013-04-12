@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Docbook

syntax DocBook
        = 
        Book books+
 ;
syntax Book
        = 
        Article articles+
 ;
syntax TitledElement
        = Article
        | Sect1
 ;
syntax Article
        = 
        Sect1 sections_1+
 ;
syntax Sect1
        = 
        Para paras+
 ;
syntax Para
        = 
        content: String
 ;
syntax String
        = 
        String
 ;
