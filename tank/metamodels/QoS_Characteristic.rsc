@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS_Characteristic

syntax QoSCharacteristic
        = 
        ANY invariant ANY parallel_and_composition ANY parallel_or_composition ANY sequential_composition ANY values ANY statisticalAttribute+ ANY parameter ANY domain
 ;
syntax BooleanExpression
        = 
        value: ANY
 ;
syntax MappingExpression
        = 
        value: ANY
 ;
syntax StatisticalAttributekindKind
        = 
        ()
 ;
syntax Parameter
        = 
        ()
 ;
syntax DataType
        = 
        ()
 ;
syntax Domain
        = 
        direction: ANY
 ;
syntax DirectionKind
        = 
        value: ANY
 ;
syntax Numeric
        = 
        ()
 ;
syntax Set
        = 
        ANY stringSet+
 ;
syntax Enumeration
        = 
        ()
 ;
syntax StringSet
        = 
        ANY string+
 ;
