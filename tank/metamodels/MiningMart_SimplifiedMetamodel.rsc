@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MiningMart_SimplifiedMetamodel

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
