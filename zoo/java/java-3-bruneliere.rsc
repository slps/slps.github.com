@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Java_3_bruneliere

syntax Modifier
        = Class
        | Interface
        | Method
        | Field
 ;
syntax Class
        = 
        Class superClass Interface implement+ Method methods+ Field fields+
 ;
syntax Interface
        = 
        Interface superInterface+ Class implementedBy+ Method abstractMethods+ Field constants+
 ;
syntax Method
        = 
        Boolean share Class class Interface interface Type resultOf Parameter parameters+
 ;
syntax Field
        = 
        Boolean share Class class Interface interface Value value Type typeOf
 ;
syntax Value
        = 
        ()
 ;
syntax Parameter
        = 
        String name Type typeOf Method owner
 ;
syntax Type
        = ReferenceType
        | PrimitiveType
 ;
syntax ReferenceType
        = 
        reference: Class
 ;
syntax PrimitiveType
        = 
        Int
 ;
syntax Int
        = 
        ()
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
