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
        = COBOLRedefiningElement
        | String level Boolean refined String name COBOLClassifier sharedType COBOLComposedType group COBOLElementInitialValue initial+ COBOL88Element contains+ COBOLSourceText source COBOLFixedLengthArray array
 ;
syntax COBOLClassifier
        = COBOLSimpleType
        | COBOLComposedType
        | Boolean typeded String name COBOLElement typedElements+
 ;
syntax COBOLSimpleType
        = 
        COBOLUsageValue usageValue String pictureString Boolean usage
 ;
syntax COBOLComposedType
        = 
        COBOLElement elements+
 ;
syntax COBOLElementInitialValue
        = 
        String initVal COBOLInitialValueKind valueKind
 ;
syntax COBOL88Element
        = 
        String name COBOL88ElementValue has+
 ;
syntax COBOL88ElementValue
        = 
        String lowerLimit String upperLimit Boolean range
 ;
syntax COBOLRedefiningElement
        = 
        redefines: COBOLElement
 ;
syntax COBOL66Element
        = 
        String name COBOLElement end COBOLElement start
 ;
syntax COBOLSourceText
        = 
        String source String fileName
 ;
syntax COBOLFixedLengthArray
        = COBOLVariableLengthArray
        | maxUpper: Integer
 ;
syntax COBOLVariableLengthArray
        = 
        Integer minUpper COBOLElement dependingOn
 ;
