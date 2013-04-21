@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pnml_strings

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax BuiltInSort
        = 
        String
 ;
syntax BuiltInOperator
        = 
        StringOperator
 ;
syntax BuiltInConstant
        = 
        StringConstant
 ;
syntax String
        = 
        string: ()
 ;
syntax StringConstant_content
        = 
        value: String
 ;
syntax StringConstant
        = 
        stringconstant: StringConstant_content BuiltInConstant_content
 ;
syntax StringOperator_content
        = 
        BuiltInOperator_content
 ;
syntax StringOperator
        = StringLessThan
        | StringLessThanOrEqual
        | StringGreaterThan
        | StringGreaterThanOrEqual
        | StringConcatenation
        | StringAppend
        | StringLength
        | Substring
 ;
syntax StringLessThan
        = 
        lts: StringOperator_content
 ;
syntax StringLessThanOrEqual
        = 
        leqs: StringOperator_content
 ;
syntax StringGreaterThan
        = 
        gts: StringOperator_content
 ;
syntax StringGreaterThanOrEqual
        = 
        geqs: StringOperator_content
 ;
syntax StringConcatenation
        = 
        stringconcatenation: StringOperator_content
 ;
syntax StringLength
        = 
        stringlength: StringOperator_content
 ;
syntax StringAppend
        = 
        stringappend: StringOperator_content
 ;
syntax Substring
        = 
        substring: Integer start Integer length StringOperator_content
 ;
