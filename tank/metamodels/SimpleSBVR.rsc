@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SimpleSBVR

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Root
        = 
        Element elements+
 ;
syntax Element
        = Representation
        | Text
        | Meaning
        | Role
        | BindableTarget
        | RoleBinding
        | objectName: String
 ;
syntax Representation
        = Designation
        | meaning: Meaning
 ;
syntax Designation
        = 
        text: Text
 ;
syntax Text
        = 
        value: String
 ;
syntax Meaning
        = Concept
        | LogicalFormulation
        | Representation representations+
 ;
syntax Concept
        = NounConcept
        | FactType
 ;
syntax NounConcept
        = ObjectType
        | IndividualConcept
        | DataType
 ;
syntax ObjectType
        = 
        ObjectType specializes ObjectType generalizes+
 ;
syntax IndividualConcept
        = 
        instanceOf: ObjectType
 ;
syntax DataType
        = NonEmptyString
        | NonNegativeInteger
 ;
syntax NonEmptyString
        = 
        value: String
 ;
syntax NonNegativeInteger
        = 
        value: Integer
 ;
syntax FactType
        = 
        BinaryFactType
 ;
syntax BinaryFactType
        = IsPropertyOfFactType
        | AssociativeFactType
        | CategorizationFactType
        | ObjectificationFactType
        | FactTypeRole role1 FactTypeRole role2
 ;
syntax IsPropertyOfFactType
        = 
        FactTypeRole role1 FactTypeRole role2
 ;
syntax AssociativeFactType
        = 
        FactTypeRole role1 FactTypeRole role2
 ;
syntax CategorizationFactType
        = 
        FactTypeRole role1 FactTypeRole role2
 ;
syntax ObjectificationFactType
        = 
        FactTypeRole role1 FactTypeRole role2
 ;
syntax Role
        = FactTypeRole
        | nounConcept: NounConcept
 ;
syntax FactTypeRole
        = 
        nounConcept: NounConcept
 ;
syntax LogicalFormulation
        = AtomicFormulation
        | NecessityFormulation
        | Quantification
 ;
syntax AtomicFormulation
        = BinaryAtomicFormulation
        | isBasedOn: FactType
 ;
syntax BinaryAtomicFormulation
        = 
        RoleBinding roleBinding1 RoleBinding roleBinding2
 ;
syntax NecessityFormulation
        = 
        ()
 ;
syntax Quantification
        = UniversalQuantification
        | AtLeastNQuantification
        | ExactlyNQuantification
        | AtMostNQuantification
        | Variable introducedVariable LogicalFormulation scopesOver
 ;
syntax UniversalQuantification
        = 
        Variable introducedVariable LogicalFormulation scopesOver
 ;
syntax AtLeastNQuantification
        = 
        minCardinality: NonNegativeInteger
 ;
syntax ExactlyNQuantification
        = 
        cardinality: NonNegativeInteger
 ;
syntax AtMostNQuantification
        = 
        maxCardinality: NonNegativeInteger
 ;
syntax BindableTarget
        = 
        Variable
 ;
syntax Variable
        = 
        rangesOver: ObjectType
 ;
syntax RoleBinding
        = 
        AtomicFormulation occursIn FactType isOf BindableTarget bindsTo
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
