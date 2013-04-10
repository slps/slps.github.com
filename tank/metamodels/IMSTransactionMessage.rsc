@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IMSTransactionMessage

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
