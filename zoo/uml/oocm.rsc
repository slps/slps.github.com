@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Oocm

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        = Classifier
        | name: String
 ;
syntax GeneralizableElement
        = Classifier
        | Boolean isRoot Boolean isLeaf Boolean isAbstract
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
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
