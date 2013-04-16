@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS_Characteristic

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        direction: DirectionKind
 ;
syntax Set
        = 
        StringSet stringSet+
 ;
syntax Enumeration
        = 
        direction: DirectionKind
 ;
syntax StringSet
        = 
        String string+
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
