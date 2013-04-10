@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Yuml

syntax LocatedElement
        = Model
        | Class
        | ModelElement
        | ClassDefinition
        | Cardinality
        | ClassMember
 ;
syntax Model
        = 
        Class classes+ ModelElement elements+
 ;
syntax Class
        = 
        name: String
 ;
syntax ModelElement
        = ColorableElement
        | Relationship
 ;
syntax ColorableElement
        = ClassReference
        | Note
 ;
syntax ClassReference
        = 
        Class class String stereotype ClassDefinition definition
 ;
syntax AssociationType
        = simpleAssociation: ()
        | aggregation: ()
        | composition: ()
 ;
syntax Relationship
        = Association
        | Inheritance
        | NoteAssociation
 ;
syntax ClassDefinition
        = 
        Attribute attributes+ Method methods+
 ;
syntax Association
        = 
        AssociationType type Cardinality sourceCardinality String sourceLabel Boolean navigableSource Visibility sourceVisibility Cardinality targetCardinality String targetLabel Boolean navigableTarget Visibility targetVisibility
 ;
syntax Inheritance
        = 
        ClassReference source ClassReference target
 ;
syntax Cardinality
        = 
        Integer lowerBound Integer upperBound
 ;
syntax Visibility
        = unspecified: ()
        | public: ()
        | private: ()
        | protected: ()
        | package: ()
 ;
syntax ClassMember
        = Attribute
        | Method
 ;
syntax Attribute
        = 
        type: String
 ;
syntax Method
        = 
        String arguments+
 ;
syntax Note
        = 
        String text+
 ;
syntax NoteAssociation
        = 
        note: Note
 ;
