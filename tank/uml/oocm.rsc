@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Oocm

syntax VisibilityKind
        = vk_public_vis: ()
        | vk_private_vis: ()
        | vk_protected_vis: ()
 ;
syntax ScopeKind
        = sk_instance_level: ()
        | sk_classifier_level: ()
 ;
syntax MultiplicityType
        = 
        Integer lower Integer upper Boolean isOrdered Boolean isUnique
 ;
syntax ModelElement
        = Feature
        | NameSpace
        | GeneralizableElement
        | name: String
 ;
syntax Feature
        = StructuralFeature
        | BehavioralFeature
        | ScopeKind ownerScope VisibilityKind visibility Classifier owner
 ;
syntax NameSpace
        = 
        ()
 ;
syntax GeneralizableElement
        = 
        Boolean isRoot Boolean isLeaf Boolean isAbstract
 ;
syntax Classifier
        = Class
        | Feature feature+
 ;
syntax Class
        = 
        isActive: Boolean
 ;
syntax StructuralFeature
        = Attribute
        | MultiplicityType multiplicity Boolean isChangeable ScopeKind targetScope
 ;
syntax Attribute
        = 
        initialValue: String
 ;
syntax BehavioralFeature
        = Operation
        | isQuery: Boolean
 ;
syntax Operation
        = 
        Boolean isRoot Boolean isLeaf Boolean isAbstract String specification
 ;
