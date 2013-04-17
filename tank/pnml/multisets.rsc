@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Multisets

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax BuiltInOperator
        = Cardinality
        | CardinalityOf
        | Contains
 ;
syntax MultisetOperator
        = Add
        | All
        | NumberOf
        | Subtract
        | ScalarProduct
        | Empty
 ;
syntax Add
        = 
        add: MultisetOperator_content
 ;
syntax Subtract
        = 
        subtract: MultisetOperator_content
 ;
syntax All
        = 
        all: MultisetOperator_content Sort
 ;
syntax Empty
        = 
        empty: MultisetOperator_content Sort
 ;
syntax ScalarProduct
        = 
        scalarproduct: MultisetOperator_content
 ;
syntax NumberOf
        = 
        numberof: MultisetOperator_content
 ;
syntax Cardinality
        = 
        cardinality: BuiltInOperator_content
 ;
syntax CardinalityOf
        = 
        cardinalityof: BuiltInOperator_content
 ;
syntax Contains
        = 
        contains: BuiltInOperator_content
 ;
