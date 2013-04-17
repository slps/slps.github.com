@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Booleans

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Operator
        = Equality
        | Inequality
 ;
syntax BuiltInSort
        = 
        Bool
 ;
syntax BuiltInOperator
        = 
        BooleanOperator
 ;
syntax BuiltInConstant
        = 
        BooleanConstant
 ;
syntax Bool
        = 
        bool: ()
 ;
syntax BooleanOperator_content
        = 
        BuiltInOperator_content
 ;
syntax BooleanOperator
        = And
        | Or
        | Imply
        | Not
 ;
syntax And
        = 
        and: BooleanOperator_content
 ;
syntax Or
        = 
        or: BooleanOperator_content
 ;
syntax Not
        = 
        not: BooleanOperator_content
 ;
syntax Imply
        = 
        imply: BooleanOperator_content
 ;
syntax Equality
        = 
        equality: Operator_content
 ;
syntax Inequality
        = 
        inequality: Operator_content
 ;
syntax BooleanConstant
        = 
        booleanconstant: ("true" | "false") value BuiltInConstant_content
 ;
