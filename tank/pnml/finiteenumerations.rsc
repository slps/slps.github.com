@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Finiteenumerations

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax OperatorDeclaration
        = 
        FEConstant
 ;
syntax BuiltInSort
        = 
        FiniteEnumeration
 ;
syntax FiniteEnumeration_content
        = 
        FEConstant*
 ;
syntax FiniteEnumeration
        = 
        finiteenumeration: FiniteEnumeration_content
 ;
syntax FEConstant
        = 
        feconstant: OperatorDeclaration_content
 ;
