@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SimulinkStateFlow

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
