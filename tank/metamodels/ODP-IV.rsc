@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_IV

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax InvariantSchema
        = 
        ActionTemplate constrainer_AT+ ActionType constrainer_ATy+ StateChange constrainer_SC+ State constrainer_S+ InformationObjectTemplate constrainer_IOT+ InformationObjectType constrainer_IOTy+
 ;
syntax InformationObjectTemplate
        = 
        InformationObject IOT_IO+ InvariantSchema IOT_constrainer+
 ;
syntax InformationObjectType
        = 
        InformationObject IOTy_IO+ InvariantSchema IOTy_constrainer+
 ;
syntax InformationObject
        = 
        StaticSchema describer+ InformationObjectTemplate IO_IOT+ InformationObjectType IO_IOTy+ Action IO_A+ State IO_S
 ;
syntax State
        = 
        StateChange change StateChange causeSC InformationObject S_IO InvariantSchema S_constrainer+
 ;
syntax StateChange
        = 
        State startState State endState DynamicSchema specifier+ Action cause+ InvariantSchema SC_constrainer+
 ;
syntax DynamicSchema
        = 
        StateChange dsStateChange+
 ;
syntax StaticSchema
        = 
        Double locationTime InformationObject SS_IO+
 ;
syntax Action
        = 
        StateChange effect+ ActionTemplate A_AT+ InformationObject participant+ ActionType A_ATy+
 ;
syntax ActionType
        = 
        Action ATy_A+ InvariantSchema ATy_constrainer+
 ;
syntax ActionTemplate
        = 
        Action AT_A+ InvariantSchema AT_constrainer+
 ;
