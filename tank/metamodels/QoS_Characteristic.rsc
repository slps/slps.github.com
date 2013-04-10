@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS_Characteristic

syntax QoSCharacteristic
        = 
        BooleanExpression invariant MappingExpression parallel_and_composition MappingExpression parallel_or_composition MappingExpression sequential_composition MappingExpression values StatisticalAttributekindKind statisticalAttribute+ Parameter parameter Domain domain
 ;
syntax BooleanExpression
        = 
        value: String
 ;
syntax MappingExpression
        = 
        value: String
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
        Domain
 ;
syntax Domain
        = Numeric
        | Set
        | Enumeration
        | direction: DirectionKind
 ;
syntax DirectionKind
        = 
        value: String
 ;
syntax Numeric
        = 
        ()
 ;
syntax Set
        = 
        StringSet stringSet+
 ;
syntax Enumeration
        = 
        ()
 ;
syntax StringSet
        = 
        String string+
 ;
