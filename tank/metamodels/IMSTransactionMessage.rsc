@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IMSTransactionMessage

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax OIMAPrefixFormats
        = opp_one: ()
        | opp_two: ()
 ;
syntax TwoByteField
        = 
        ()
 ;
syntax VariableLengthField
        = 
        ()
 ;
syntax IMSTransactionMessage
        = 
        OIMAPrefixFormats OIMAPrefixFormat Boolean standardFieldsFlag OIMAPrefix OIMAPrefixComponent StandardFields standardFieldComponent ApplicationData messageComponent
 ;
syntax OIMAPrefix
        = 
        ControlData controlDataComponent StateData stateDataComponent SecurityData securityDataComponent UserData userDataComponent
 ;
syntax ControlData
        = 
        ()
 ;
syntax StateData
        = 
        ()
 ;
syntax SecurityData
        = 
        ()
 ;
syntax UserData
        = 
        ()
 ;
syntax StandardFields
        = 
        TwoByteField length TwoByteField reservedField VariableLengthField transactionCode
 ;
syntax ApplicationData
        = 
        TDLangElement languageElements+ Field fieldComponents+
 ;
syntax Field
        = 
        fieldContainer: ApplicationData
 ;
syntax TDLangElement
        = 
        ()
 ;
