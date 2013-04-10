@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Perceptory

syntax RelationSchip
        = Association
        | Generalisation
        | Dependency
        | Characteristic affectCharacteristic+ Constraint constraint Steriotype steriotype+ Package packages+ Package associatePackages
 ;
syntax ConstrainedRelationSchip
        = 
        ()
 ;
syntax Aggregation
        = 
        ()
 ;
syntax Composition
        = 
        ()
 ;
syntax Association
        = Aggregation
        | Composition
 ;
syntax Generalisation
        = 
        ()
 ;
syntax Dependency
        = 
        ()
 ;
syntax AssociationEnd
        = 
        ()
 ;
syntax Package
        = 
        Steriotype steriotype Package children+ Package parent Class classes+ RelationSchip relationSchip+ RelationSchip connectedRelationSchip+
 ;
syntax Steriotype
        = PerceptorySteriotype
        | DescriptiveAttribute descriptiveAttribute+ Operation operations+ RelationSchip relationSchip+ Class theClass+ Package thePackage+
 ;
syntax Class
        = 
        Characteristic characteristic+ MetaData details Operation operations Operation myOperations+ Constraint constraint+ Steriotype steriotype Package packages+
 ;
syntax Constraint
        = 
        Characteristic caracteristic Class theClass RelationSchip relationSchip+
 ;
syntax Operation
        = 
        MetaData detail Characteristic inCharacteristic+ Class affectFeature+ Steriotype steriotype Class behaviour
 ;
syntax Characteristic
        = DescriptiveAttribute
        | MetaData details BusnissRule rule Operation operations Class theClass RelationSchip relationSchip Constraint constraint
 ;
syntax BusnissRule
        = 
        characteristic: Characteristic
 ;
syntax MetaData
        = 
        Source source Characteristic characteristic Operation operations Class theClass
 ;
syntax Source
        = 
        metaData: MetaData
 ;
syntax Domain
        = RangeDomain
        | EnumeratedDomain
        | DescriptiveAttribute descriptiveAttribute+
 ;
syntax DescriptiveAttribute
        = 
        Temporality tempsDef Geometry specialDef Steriotype steriotype Domain domain
 ;
syntax Geometry
        = 
        Temporality tempsDef DescriptiveAttribute descriptiveAttributeg
 ;
syntax Temporality
        = 
        Geometry geometry DescriptiveAttribute descriptiveAttributet
 ;
syntax VisualInfo
        = 
        ()
 ;
syntax Value
        = 
        enumeratedDomain: EnumeratedDomain
 ;
syntax RangeDomain
        = 
        ()
 ;
syntax EnumeratedDomain
        = 
        Value value+
 ;
syntax PerceptorySteriotype
        = 
        ()
 ;
