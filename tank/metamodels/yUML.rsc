@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module YUML

syntax LocatedElement
        = 
        ()
 ;
syntax Model
        = 
        ANY classes+ ANY elements+
 ;
syntax Class
        = 
        name: ANY
 ;
syntax ModelElement
        = 
        ()
 ;
syntax ColorableElement
        = 
        ()
 ;
syntax ClassReference
        = 
        ANY class ANY stereotype ANY definition
 ;
syntax AssociationType
        = simpleAssociation: ()
        | aggregation: ()
        | composition: ()
 ;
syntax Relationship
        = 
        ()
 ;
syntax ClassDefinition
        = 
        ANY attributes+ ANY methods+
 ;
syntax Association
        = 
        ANY type ANY sourceCardinality ANY sourceLabel ANY navigableSource ANY sourceVisibility ANY targetCardinality ANY targetLabel ANY navigableTarget ANY targetVisibility
 ;
syntax Inheritance
        = 
        ANY source ANY target
 ;
syntax Cardinality
        = 
        ANY lowerBound ANY upperBound
 ;
syntax Visibility
        = unspecified: ()
        | public: ()
        | private: ()
        | protected: ()
        | package: ()
 ;
syntax ClassMember
        = 
        ()
 ;
syntax Attribute
        = 
        type: ANY
 ;
syntax Method
        = 
        ANY arguments+
 ;
syntax Note
        = 
        ANY text+
 ;
syntax NoteAssociation
        = 
        note: ANY
 ;
