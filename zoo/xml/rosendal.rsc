@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Rosendal

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Node
        = Attribute
        | Text
        | Element
 ;
syntax Attribute
        = 
        Integer startLine Integer startColumn Integer endLine Integer endColumn String name String value Element parent
 ;
syntax Text
        = 
        Integer startLine Integer startColumn Integer endLine Integer endColumn String name String value Element parent
 ;
syntax Element
        = Root
        | Node children+
 ;
syntax Root
        = 
        Node children+
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
