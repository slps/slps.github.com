@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bql

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = 
        Entry
 ;
syntax Query
        = 
        Entry entries+ Predicate predicates+
 ;
syntax Entry
        = 
        String name String type Boolean allFields Field fields+ Predicate predicate
 ;
syntax Field
        = 
        String name Entry entry
 ;
syntax Predicate
        = 
        Entry entry Expression expression+
 ;
syntax Expression
        = 
        String field String value
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
