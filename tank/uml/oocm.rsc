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
        ANY lower ANY upper ANY isOrdered ANY isUnique
 ;
syntax ModelElement
        = 
        name: ANY
 ;
syntax Feature
        = 
        ANY ownerScope ANY visibility ANY owner
 ;
syntax NameSpace
        = 
        ()
 ;
syntax GeneralizableElement
        = 
        ANY isRoot ANY isLeaf ANY isAbstract
 ;
syntax Classifier
        = 
        ANY feature+
 ;
syntax Class
        = 
        isActive: ANY
 ;
syntax StructuralFeature
        = 
        ANY multiplicity ANY isChangeable ANY targetScope
 ;
syntax Attribute
        = 
        initialValue: ANY
 ;
syntax BehavioralFeature
        = 
        isQuery: ANY
 ;
syntax Operation
        = 
        ANY isRoot ANY isLeaf ANY isAbstract ANY specification
 ;
