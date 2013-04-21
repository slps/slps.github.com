@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pnml_integers

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax BuiltInSort
        = 
        Number
 ;
syntax BuiltInOperator
        = 
        IntegerOperator
 ;
syntax BuiltInConstant
        = 
        NumberConstant
 ;
syntax Number
        = Natural
        | Positive
        | Integer
 ;
syntax Integer
        = 
        integer: ()
 ;
syntax Natural
        = 
        natural: ()
 ;
syntax Positive
        = 
        positive: ()
 ;
syntax IntegerOperator_content
        = 
        BuiltInOperator_content
 ;
syntax IntegerOperator
        = Addition
        | Subtraction
        | Multiplication
        | Division
        | Modulo
        | GreaterThan
        | GreaterThanOrEqual
        | LessThan
        | LessThanOrEqual
 ;
syntax NumberConstant
        = 
        numberconstant: Integer value (BuiltInConstant_content Number)
 ;
syntax LessThan
        = 
        lt: IntegerOperator
 ;
syntax LessThanOrEqual
        = 
        leq: IntegerOperator
 ;
syntax GreaterThan
        = 
        gt: IntegerOperator
 ;
syntax GreaterThanOrEqual
        = 
        geq: IntegerOperator
 ;
syntax Addition
        = 
        addition: IntegerOperator
 ;
syntax Subtraction
        = 
        subtraction: IntegerOperator
 ;
syntax Multiplication
        = 
        mult: IntegerOperator
 ;
syntax Division
        = 
        div: IntegerOperator
 ;
syntax Modulo
        = 
        mod: IntegerOperator
 ;
