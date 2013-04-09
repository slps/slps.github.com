@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Perceptory

syntax RelationSchip
        = 
        ANY affectCharacteristic+ ANY constraint ANY steriotype+ ANY packages+ ANY associatePackages
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
        = 
        ()
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
        ANY steriotype ANY children+ ANY parent ANY classes+ ANY relationSchip+ ANY connectedRelationSchip+
 ;
syntax Steriotype
        = 
        ANY descriptiveAttribute+ ANY operations+ ANY relationSchip+ ANY theClass+ ANY thePackage+
 ;
syntax Class
        = 
        ANY characteristic+ ANY details ANY operations ANY myOperations+ ANY constraint+ ANY steriotype ANY packages+
 ;
syntax Constraint
        = 
        ANY caracteristic ANY theClass ANY relationSchip+
 ;
syntax Operation
        = 
        ANY detail ANY inCharacteristic+ ANY affectFeature+ ANY steriotype ANY behaviour
 ;
syntax Characteristic
        = 
        ANY details ANY rule ANY operations ANY theClass ANY relationSchip ANY constraint
 ;
syntax BusnissRule
        = 
        characteristic: ANY
 ;
syntax MetaData
        = 
        ANY source ANY characteristic ANY operations ANY theClass
 ;
syntax Source
        = 
        metaData: ANY
 ;
syntax Domain
        = 
        ANY descriptiveAttribute+
 ;
syntax DescriptiveAttribute
        = 
        ANY tempsDef ANY specialDef ANY steriotype ANY domain
 ;
syntax Geometry
        = 
        ANY tempsDef ANY descriptiveAttributeg
 ;
syntax Temporality
        = 
        ANY geometry ANY descriptiveAttributet
 ;
syntax VisualInfo
        = 
        ()
 ;
syntax Value
        = 
        enumeratedDomain: ANY
 ;
syntax RangeDomain
        = 
        ()
 ;
syntax EnumeratedDomain
        = 
        ANY value+
 ;
syntax PerceptorySteriotype
        = 
        ()
 ;
