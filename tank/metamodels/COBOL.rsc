@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module COBOL

syntax COBOLUsageValue
        = cuv_binary: ()
        | cuv_dbcs: ()
        | cuv_double: ()
        | cuv_display: ()
        | cuv_float: ()
        | cuv_index: ()
        | cuv_objectReference: ()
        | cuv_packedDecimal: ()
        | cuv_pointer: ()
        | cuv_procedurePointer: ()
 ;
syntax COBOLInitialValueKind
        = civk_string_value: ()
        | civk_low_value: ()
        | civk_high_value: ()
        | civk_zero_value: ()
        | civk_quotes: ()
        | civk_null: ()
        | civk_all_literal: ()
 ;
syntax COBOLElement
        = 
        ANY level ANY refined ANY name ANY sharedType ANY group ANY initial+ ANY contains+ ANY source ANY array
 ;
syntax COBOLClassifier
        = 
        ANY typeded ANY name ANY typedElements+
 ;
syntax COBOLSimpleType
        = 
        ANY usageValue ANY pictureString ANY usage
 ;
syntax COBOLComposedType
        = 
        ANY elements+
 ;
syntax COBOLElementInitialValue
        = 
        ANY initVal ANY valueKind
 ;
syntax COBOL88Element
        = 
        ANY name ANY has+
 ;
syntax COBOL88ElementValue
        = 
        ANY lowerLimit ANY upperLimit ANY range
 ;
syntax COBOLRedefiningElement
        = 
        redefines: ANY
 ;
syntax COBOL66Element
        = 
        ANY name ANY end ANY start
 ;
syntax COBOLSourceText
        = 
        ANY source ANY fileName
 ;
syntax COBOLFixedLengthArray
        = 
        maxUpper: ANY
 ;
syntax COBOLVariableLengthArray
        = 
        ANY minUpper ANY dependingOn
 ;
