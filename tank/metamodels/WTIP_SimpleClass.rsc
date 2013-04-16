@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WTIP_SimpleClass

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        name: String
 ;
syntax Association
        = 
        String name Class src Class dest
 ;
syntax Attribute
        = 
        String name Boolean is_primary Classifier type
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
