@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SimulinkStateFlow

syntax Simulink
        = 
        System subSystem+
 ;
syntax System
        = 
        String name Simulink simulink Block blocks Line lines System subSystem+
 ;
syntax Connector
        = BranchPoint
        | Port
 ;
syntax Line
        = 
        String name Block block System system
 ;
syntax BranchPoint
        = 
        ()
 ;
syntax Port
        = OutPut
        | TriggerPort
        | EnablePort
        | units: Units
 ;
syntax Block
        = Primitive
        | Reference
        | String description String name String priority String natagme String blockType Line lines+ Parameter parameters+ Annotation annotations+ BlockRef blockRefs+ System system
 ;
syntax BlockRef
        = 
        ()
 ;
syntax Primitive
        = 
        String deadLine String period String executionTime
 ;
syntax OutPut
        = 
        number: Integer
 ;
syntax TriggerPort
        = 
        triggerType: TriggerEnum
 ;
syntax EnablePort
        = 
        statesWhenEnabling: EnableEnum
 ;
syntax Reference
        = 
        String sourceBlock String sourceType
 ;
syntax Annotation
        = 
        String text Block block
 ;
syntax Parameter
        = 
        String value Block block
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
