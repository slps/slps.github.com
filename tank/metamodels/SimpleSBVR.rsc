@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SimpleSBVR

syntax Root
        = 
        ANY elements+
 ;
syntax Element
        = 
        objectName: ANY
 ;
syntax Representation
        = 
        meaning: ANY
 ;
syntax Designation
        = 
        text: ANY
 ;
syntax Text
        = 
        value: ANY
 ;
syntax Meaning
        = 
        ANY representations+
 ;
syntax Concept
        = 
        ()
 ;
syntax NounConcept
        = 
        ()
 ;
syntax ObjectType
        = 
        ANY specializes ANY generalizes+
 ;
syntax IndividualConcept
        = 
        instanceOf: ANY
 ;
syntax DataType
        = 
        ()
 ;
syntax NonEmptyString
        = 
        value: ANY
 ;
syntax NonNegativeInteger
        = 
        value: ANY
 ;
syntax FactType
        = 
        ()
 ;
syntax BinaryFactType
        = 
        ANY role1 ANY role2
 ;
syntax IsPropertyOfFactType
        = 
        ()
 ;
syntax AssociativeFactType
        = 
        ()
 ;
syntax CategorizationFactType
        = 
        ()
 ;
syntax ObjectificationFactType
        = 
        ()
 ;
syntax Role
        = 
        nounConcept: ANY
 ;
syntax FactTypeRole
        = 
        ()
 ;
syntax LogicalFormulation
        = 
        ()
 ;
syntax AtomicFormulation
        = 
        isBasedOn: ANY
 ;
syntax BinaryAtomicFormulation
        = 
        ANY roleBinding1 ANY roleBinding2
 ;
syntax NecessityFormulation
        = 
        ()
 ;
syntax Quantification
        = 
        ANY introducedVariable ANY scopesOver
 ;
syntax UniversalQuantification
        = 
        ()
 ;
syntax AtLeastNQuantification
        = 
        minCardinality: ANY
 ;
syntax ExactlyNQuantification
        = 
        cardinality: ANY
 ;
syntax AtMostNQuantification
        = 
        maxCardinality: ANY
 ;
syntax BindableTarget
        = 
        ()
 ;
syntax Variable
        = 
        rangesOver: ANY
 ;
syntax RoleBinding
        = 
        ANY occursIn ANY isOf ANY bindsTo
 ;
