@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XML

syntax Node
        = 
        ()
 ;
syntax Attribute
        = 
        ANY startLine ANY startColumn ANY endLine ANY endColumn ANY name ANY value ANY parent
 ;
syntax Text
        = 
        ANY startLine ANY startColumn ANY endLine ANY endColumn ANY name ANY value ANY parent
 ;
syntax Element
        = 
        ANY children+
 ;
syntax Root
        = 
        ()
 ;
