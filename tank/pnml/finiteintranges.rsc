@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Finiteintranges

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax BuiltInSort
        = 
        FiniteIntRange
 ;
syntax BuiltInOperator
        = 
        FiniteIntRangeOperator
 ;
syntax BuiltInConstant
        = 
        FiniteIntRangeConstant
 ;
syntax FiniteIntRange
        = 
        finiteintrange: Integer start Integer end
 ;
syntax FiniteIntRangeOperator_content
        = 
        BuiltInOperator_content
 ;
syntax FiniteIntRangeOperator
        = FIRLessThan
        | FIRLessThanOrEqual
        | FIRGreaterThan
        | FIRGreaterThanOrEqual
 ;
syntax FIRLessThan
        = 
        lessthan: FiniteIntRangeOperator_content
 ;
syntax FIRLessThanOrEqual
        = 
        lessthanorequal: FiniteIntRangeOperator_content
 ;
syntax FIRGreaterThan
        = 
        greaterthan: FiniteIntRangeOperator_content
 ;
syntax FIRGreaterThanOrEqual
        = 
        greaterthanorequal: FiniteIntRangeOperator_content
 ;
syntax FiniteIntRangeConstant
        = 
        finiteintrangeconstant: Integer value FiniteIntRange BuiltInConstant_content
 ;
