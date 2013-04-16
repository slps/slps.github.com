@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax QoSComponent
        = 
        QoSProfile profile+ Operation operations
 ;
syntax QoSProfile
        = CompoundProfile
        | SimpleProfile
 ;
syntax QoSContraints
        = 
        BooleanExpression invariant MappingExpression parallel_and_composition MappingExpression parallel_or_composition MappingExpression sequential_composition MappingExpression values StatisticalAttributekindKind statisticalAttribute+ Parameter parameter Domain domain
 ;
syntax Operation
        = 
        ()
 ;
syntax CompoundProfile
        = 
        ProfileTransition profileTransition+ SimpleProfile simpleProfile+
 ;
syntax SimpleProfile
        = 
        CompoundProfile compoundProfile QoSStatement use QoSStatement provides
 ;
syntax ProfileTransition
        = 
        Operation operations+ SimpleProfile from SimpleProfile to CompoundProfile compoundProfile
 ;
syntax QoSStatement
        = SingleQoSStatement
        | CoumpoundQoSStatement
        | QoSContraints contraints+ CoumpoundQoSStatement relation Parameter parameter+
 ;
syntax SingleQoSStatement
        = 
        contraint: QoSContraint
 ;
syntax CoumpoundQoSStatement
        = 
        statement: QoSStatement
 ;
syntax QoSContraint
        = 
        qualification: QualificationKind
 ;
syntax QualificationKind
        = 
        value: String
 ;
syntax QoSCharacteristic
        = QoSContraints
        | QualificationKind
        | BooleanExpression invariant MappingExpression parallel_and_composition MappingExpression parallel_or_composition MappingExpression sequential_composition MappingExpression values StatisticalAttributekindKind statisticalAttribute+ Parameter parameter Domain domain
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
