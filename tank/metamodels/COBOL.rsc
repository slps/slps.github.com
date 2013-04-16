@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module COBOL

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
