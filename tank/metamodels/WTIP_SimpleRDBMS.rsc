@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WTIP_SimpleRDBMS

syntax Table
        = 
        String name FKey fkeys+ Column pkey+ Column cols+
 ;
syntax Column
        = 
        String name String type
 ;
syntax FKey
        = 
        Table references Column cols+
 ;
syntax String
        = 
        String
 ;
