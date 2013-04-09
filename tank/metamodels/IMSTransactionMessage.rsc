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
        ANY OIMAPrefixFormat ANY standardFieldsFlag ANY OIMAPrefixComponent ANY standardFieldComponent ANY messageComponent
 ;
syntax OIMAPrefix
        = 
        ANY controlDataComponent ANY stateDataComponent ANY securityDataComponent ANY userDataComponent
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
        ANY length ANY reservedField ANY transactionCode
 ;
syntax ApplicationData
        = 
        ANY languageElements+ ANY fieldComponents+
 ;
syntax Field
        = 
        fieldContainer: ANY
 ;
syntax TDLangElement
        = 
        ()
 ;
