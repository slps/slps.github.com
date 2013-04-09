@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS

syntax QoSComponent
        = 
        ANY profile+ ANY operations
 ;
syntax QoSProfile
        = 
        ()
 ;
syntax QoSContraints
        = 
        ()
 ;
syntax Operation
        = 
        ()
 ;
syntax CompoundProfile
        = 
        ANY profileTransition+ ANY simpleProfile+
 ;
syntax SimpleProfile
        = 
        ANY compoundProfile ANY use ANY provides
 ;
syntax ProfileTransition
        = 
        ANY operations+ ANY from ANY to ANY compoundProfile
 ;
syntax QoSStatement
        = 
        ANY contraints+ ANY relation ANY parameter+
 ;
syntax SingleQoSStatement
        = 
        contraint: ANY
 ;
syntax CoumpoundQoSStatement
        = 
        statement: ANY
 ;
syntax QoSContraint
        = 
        qualification: ANY
 ;
syntax QualificationKind
        = 
        value: ANY
 ;
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
