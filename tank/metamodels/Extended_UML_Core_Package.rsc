@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Extended_UML_Core_Package

syntax ModelElement
        = 
        name: ANY
 ;
syntax Name
        = 
        ()
 ;
syntax AssociationEnd
        = 
        ANY isNavigable ANY isOrdered ANY aggregation ANY multiplicity ANY changeable ANY TargetScope ANY rfIntegrety ANY rlIntegrety
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
        ()
 ;
syntax GeneralizableElement
        = 
        ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax Class
        = 
        ANY isActive ANY mutliplicity ANY key+
 ;
syntax Key
        = 
        ()
 ;
syntax Feature
        = 
        ()
 ;
syntax StructureFeature
        = 
        ()
 ;
syntax Constraint
        = 
        ()
 ;
syntax Attribute
        = 
        ANY initialValue ANY isKey ANY isUnique
 ;
syntax Expression
        = 
        ()
 ;
