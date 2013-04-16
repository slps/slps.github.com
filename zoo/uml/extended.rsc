@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Extended

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax ModelElement
        = AssociationEnd
        | Namespace
        | Key
        | Feature
        | name: Name
 ;
syntax Name
        = 
        ()
 ;
syntax AssociationEnd
        = 
        Boolean isNavigable Boolean isOrdered AggregationKind aggregation Multiplicity multiplicity ChangeableKind changeable ScopeKind TargetScope RlIntegretyKind rfIntegrety RlIntegretyKind rlIntegrety
 ;
syntax AggregationKind
        = 
        ()
 ;
syntax Multiplicity
        = 
        ()
 ;
syntax ChangeableKind
        = 
        ()
 ;
syntax ScopeKind
        = 
        ()
 ;
syntax RfIntegretyKind
        = 
        ()
 ;
syntax RlIntegretyKind
        = 
        ()
 ;
syntax Namespace
        = 
        GeneralizableElement
 ;
syntax GeneralizableElement
        = 
        Classifier
 ;
syntax Classifier
        = 
        Class
 ;
syntax Class
        = 
        Boolean isActive Multiplicity mutliplicity Key key+
 ;
syntax Feature
        = StructureFeature
        | Constraint
 ;
syntax StructureFeature
        = 
        Attribute
 ;
syntax Attribute
        = 
        Expression initialValue Boolean isKey Boolean isUnique
 ;
syntax Expression
        = 
        ()
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
