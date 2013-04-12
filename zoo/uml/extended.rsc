@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Extended

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
