@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_IV

syntax InvariantSchema
        = 
        ANY constrainer_AT+ ANY constrainer_ATy+ ANY constrainer_SC+ ANY constrainer_S+ ANY constrainer_IOT+ ANY constrainer_IOTy+
 ;
syntax InformationObjectTemplate
        = 
        ANY IOT_IO+ ANY IOT_constrainer+
 ;
syntax InformationObjectType
        = 
        ANY IOTy_IO+ ANY IOTy_constrainer+
 ;
syntax InformationObject
        = 
        ANY describer+ ANY IO_IOT+ ANY IO_IOTy+ ANY IO_A+ ANY IO_S
 ;
syntax State
        = 
        ANY change ANY causeSC ANY S_IO ANY S_constrainer+
 ;
syntax StateChange
        = 
        ANY startState ANY endState ANY specifier+ ANY cause+ ANY SC_constrainer+
 ;
syntax DynamicSchema
        = 
        ANY dsStateChange+
 ;
syntax StaticSchema
        = 
        ANY locationTime ANY SS_IO+
 ;
syntax Action
        = 
        ANY effect+ ANY A_AT+ ANY participant+ ANY A_ATy+
 ;
syntax ActionType
        = 
        ANY ATy_A+ ANY ATy_constrainer+
 ;
syntax ActionTemplate
        = 
        ANY AT_A+ ANY AT_constrainer+
 ;
