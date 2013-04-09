@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MiningMart_SimplifiedMetamodel

syntax ModelElement
        = 
        ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax StructuralFeature
        = 
        ()
 ;
syntax Class
        = 
        ANY name ANY attributes+
 ;
syntax DataType
        = 
        attribute: ANY
 ;
syntax Attribute
        = 
        ANY class ANY has
 ;
syntax Concept
        = 
        ()
 ;
syntax ColumnSet
        = 
        ()
 ;
syntax Column
        = 
        ()
 ;
syntax FeatureAttribute
        = 
        ()
 ;
syntax Value
        = 
        ()
 ;
syntax RoleRestriction
        = 
        ()
 ;
syntax Integer
        = 
        ()
 ;
syntax String
        = 
        ()
 ;
syntax DomainDataType
        = 
        ()
 ;
