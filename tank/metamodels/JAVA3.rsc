@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module JAVA3

syntax Modifier
        = 
        ()
 ;
syntax Class
        = 
        ANY superClass ANY implement+ ANY methods+ ANY fields+
 ;
syntax Interface
        = 
        ANY superInterface+ ANY implementedBy+ ANY abstractMethods+ ANY constants+
 ;
syntax Method
        = 
        ANY share ANY class ANY interface ANY resultOf ANY parameters+
 ;
syntax Field
        = 
        ANY share ANY class ANY interface ANY value ANY typeOf
 ;
syntax Value
        = 
        ()
 ;
syntax Parameter
        = 
        ANY name ANY typeOf ANY owner
 ;
syntax Type
        = 
        ()
 ;
syntax ReferenceType
        = 
        reference: ANY
 ;
syntax PrimitiveType
        = 
        ()
 ;
syntax Int
        = 
        ()
 ;
