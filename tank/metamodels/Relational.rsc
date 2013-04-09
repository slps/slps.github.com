@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Relational

syntax Named
        = 
        ()
 ;
syntax Table
        = 
        ANY col+ ANY key+
 ;
syntax Column
        = 
        ANY owner ANY keyOf ANY type
 ;
syntax Type
        = 
        ANY name
 ;
