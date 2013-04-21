@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Docbook_touzet

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
