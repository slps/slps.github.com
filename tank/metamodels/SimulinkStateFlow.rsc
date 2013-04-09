@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SimulinkStateFlow

syntax Simulink
        = 
        ANY subSystem+
 ;
syntax System
        = 
        ANY name ANY simulink ANY blocks ANY lines ANY subSystem+
 ;
syntax Connector
        = 
        ()
 ;
syntax Line
        = 
        ANY name ANY block ANY system
 ;
syntax BranchPoint
        = 
        ()
 ;
syntax Port
        = 
        units: ANY
 ;
syntax Block
        = 
        ANY description ANY name ANY priority ANY natagme ANY blockType ANY lines+ ANY parameters+ ANY annotations+ ANY blockRefs+ ANY system
 ;
syntax BlockRef
        = 
        ()
 ;
syntax Primitive
        = 
        ANY deadLine ANY period ANY executionTime
 ;
syntax OutPut
        = 
        number: ANY
 ;
syntax TriggerPort
        = 
        triggerType: ANY
 ;
syntax EnablePort
        = 
        statesWhenEnabling: ANY
 ;
syntax Reference
        = 
        ANY sourceBlock ANY sourceType
 ;
syntax Annotation
        = 
        ANY text ANY block
 ;
syntax Parameter
        = 
        ANY value ANY block
 ;
syntax Units
        = alpha: ()
        | beta: ()
 ;
syntax TriggerEnum
        = alpha: ()
        | beta: ()
 ;
syntax EnableEnum
        = alpha: ()
        | beta: ()
 ;
