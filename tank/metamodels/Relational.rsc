@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Relational

syntax Named
        = Table
        | Column
        | Type
 ;
syntax Table
        = 
        Column col+ Column key+
 ;
syntax Column
        = 
        Table owner Table keyOf Type type
 ;
syntax Type
        = 
        name: String
 ;
