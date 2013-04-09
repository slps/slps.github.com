@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WTIP_SimpleRDBMS

syntax Table
        = 
        ANY name ANY fkeys+ ANY pkey+ ANY cols+
 ;
syntax Column
        = 
        ANY name ANY type
 ;
syntax FKey
        = 
        ANY references ANY cols+
 ;
