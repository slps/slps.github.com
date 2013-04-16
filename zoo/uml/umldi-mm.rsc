@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Umldi_mm

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Element
        = 
        ModelElement
 ;
syntax ModelElement
        = GeneralizableElement
        | Namespace
        | Feature
        | Relationship
 ;
syntax GeneralizableElement
        = Classifier
        | Package
 ;
syntax Namespace
        = Classifier
        | Package
 ;
syntax Classifier
        = 
        Subsystem
 ;
syntax Relationship
        = 
        Generalization
 ;
syntax Generalization
        = 
        GeneralizableElement parent Classifier powertype GeneralizableElement child String discriminator
 ;
syntax Package
        = Model
        | Subsystem
        | ElementImport elementImport+
 ;
syntax Model
        = 
        ElementImport elementImport+
 ;
syntax Subsystem
        = 
        isInstantiable: Boolean
 ;
syntax ElementImport
        = 
        Package package ModelElement importedElement VisibilityKind visibility String alias Boolean isSpecification
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
syntax ScopeKind
        = sk_instance: ()
        | sk_classifier: ()
 ;
syntax VisibilityKind
        = vk_public: ()
        | vk_protected: ()
        | vk_private: ()
        | vk_package: ()
 ;
