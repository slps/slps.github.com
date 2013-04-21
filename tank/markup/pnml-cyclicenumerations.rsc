@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pnml_cyclicenumerations

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax BuiltInSort
        = 
        CyclicEnumeration
 ;
syntax BuiltInOperator
        = 
        CyclicEnumOperator
 ;
syntax CyclicEnumeration
        = 
        cyclicenumeration: FiniteEnumeration_content
 ;
syntax CyclicEnumOperator_content
        = 
        BuiltInOperator_content
 ;
syntax CyclicEnumOperator
        = Successor
        | Predecessor
 ;
syntax Successor
        = 
        successor: CyclicEnumOperator_content
 ;
syntax Predecessor
        = 
        predecessor: CyclicEnumOperator_content
 ;
