@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Java_3_bruneliere

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
