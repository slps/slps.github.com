@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WTIP_SimpleClass

syntax Classifier
        = 
        name: ANY
 ;
syntax Class
        = 
        ANY is_persistent ANY parent ANY attrs+
 ;
syntax PrimitiveDataType
        = 
        ()
 ;
syntax Association
        = 
        ANY name ANY src ANY dest
 ;
syntax Attribute
        = 
        ANY name ANY is_primary ANY type
 ;
