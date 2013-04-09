@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module KDMSimplified

syntax Element
        = 
        ()
 ;
syntax ModelElement
        = 
        ()
 ;
syntax KDMEntity
        = 
        ()
 ;
syntax KDMContainer
        = 
        ()
 ;
syntax KDMGroup
        = 
        ()
 ;
syntax KDMRelationship
        = 
        ()
 ;
syntax Annotation
        = 
        note: ANY
 ;
syntax Attribute
        = 
        ANY tag ANY value
 ;
syntax KDMExtensionFamily
        = 
        ANY name ANY stereotype+
 ;
syntax Stereotype
        = 
        ANY baseClass ANY name ANY family ANY extendedElement ANY tag+
 ;
syntax TagDefinition
        = 
        ANY tag ANY type
 ;
syntax TaggedValue
        = 
        ANY value ANY tag
 ;
syntax KDMFramework
        = 
        ()
 ;
syntax KDMModel
        = 
        ()
 ;
