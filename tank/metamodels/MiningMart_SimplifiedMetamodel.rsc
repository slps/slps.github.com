@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MiningMart_SimplifiedMetamodel

syntax ModelElement
        = Classifier
        | StructuralFeature
 ;
syntax Classifier
        = Class
        | DataType
 ;
syntax StructuralFeature
        = 
        Attribute
 ;
syntax Class
        = Concept
        | ColumnSet
        | String name Attribute attributes+
 ;
syntax DataType
        = Integer
        | String
        | DomainDataType
        | attribute: Attribute
 ;
syntax Attribute
        = Column
        | FeatureAttribute
        | Value
        | RoleRestriction
        | Class class DataType has
 ;
syntax Concept
        = 
        String name Attribute attributes+
 ;
syntax ColumnSet
        = 
        String name Attribute attributes+
 ;
syntax Column
        = 
        Class class DataType has
 ;
syntax FeatureAttribute
        = 
        Class class DataType has
 ;
syntax Value
        = 
        Class class DataType has
 ;
syntax RoleRestriction
        = 
        Class class DataType has
 ;
syntax Integer
        = 
        attribute: Attribute
 ;
syntax String
        = 
        attribute: Attribute
 ;
syntax DomainDataType
        = 
        attribute: Attribute
 ;
