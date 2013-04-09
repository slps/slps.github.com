@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UMLDI_ModelManagement

syntax Element
        = 
        ()
 ;
syntax ModelElement
        = 
        ()
 ;
syntax GeneralizableElement
        = 
        ()
 ;
syntax Namespace
        = 
        ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax Feature
        = 
        ()
 ;
syntax Relationship
        = 
        ()
 ;
syntax Generalization
        = 
        ANY parent ANY powertype ANY child ANY discriminator
 ;
syntax Package
        = 
        ANY elementImport+
 ;
syntax Model
        = 
        ()
 ;
syntax Subsystem
        = 
        isInstantiable: ANY
 ;
syntax ElementImport
        = 
        ANY package ANY importedElement ANY visibility ANY alias ANY isSpecification
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
