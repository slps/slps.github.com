@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Yuml

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
