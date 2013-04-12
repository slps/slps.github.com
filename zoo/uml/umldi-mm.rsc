@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Umldi_mm

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
        | ElementImport elementImport+
 ;
syntax Model
        = 
        ()
 ;
syntax Subsystem
        = 
        isInstantiable: Boolean
 ;
syntax ElementImport
        = 
        Package package ModelElement importedElement VisibilityKind visibility String alias Boolean isSpecification
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
