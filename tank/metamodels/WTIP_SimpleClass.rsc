@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WTIP_SimpleClass

syntax Classifier
        = Class
        | PrimitiveDataType
        | name: String
 ;
syntax Class
        = 
        Boolean is_persistent Class parent Attribute attrs+
 ;
syntax PrimitiveDataType
        = 
        ()
 ;
syntax Association
        = 
        String name Class src Class dest
 ;
syntax Attribute
        = 
        String name Boolean is_primary Classifier type
 ;
