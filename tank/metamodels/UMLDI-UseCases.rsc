@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UMLDI_UseCases

syntax Instance
        = 
        ()
 ;
syntax AttributeLink
        = 
        ANY instance ANY value ANY linkEnd ANY attribute
 ;
syntax Link
        = 
        ANY association ANY connection
 ;
syntax LinkEnd
        = 
        ANY link ANY qualifiedValue+ ANY instance ANY associationEnd
 ;
syntax ComponentInstance
        = 
        ANY resident+ ANY nodeInstance
 ;
syntax NodeInstance
        = 
        ANY resident+
 ;
syntax UseCase
        = 
        ANY include+ ANY extend+ ANY extensionPoint+
 ;
syntax Actor
        = 
        ANY powertypeRange+ ANY feature+
 ;
syntax UseCaseInstance
        = 
        ANY ownedInstance+ ANY linkEnd+ ANY classifier+ ANY componentInstance ANY slot+ ANY ownedLink+
 ;
syntax Extend
        = 
        ANY extensionPoint+ ANY extension ANY base ANY condition
 ;
syntax Include
        = 
        ANY addition ANY base
 ;
syntax ExtensionPoint
        = 
        ANY useCase ANY location
 ;
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
syntax StructuralFeature
        = 
        ()
 ;
syntax AssociationEnd
        = 
        ANY association ANY specification+ ANY participant ANY qualifier+ ANY isNavigable ANY ordering ANY aggregation ANY targetScope ANY multiplicity ANY changeability
 ;
syntax Relationship
        = 
        ()
 ;
syntax Association
        = 
        connection: ANY
 ;
syntax Attribute
        = 
        ANY associationEnd ANY initialValue
 ;
syntax Generalization
        = 
        ANY parent ANY powertype ANY child ANY discriminator
 ;
syntax AggregationKind
        = ak_none: ()
        | ak_aggregate: ()
        | ak_composite: ()
 ;
syntax ChangeableKind
        = ck_changeable: ()
        | ck_frozen: ()
        | ck_addOnly: ()
 ;
syntax OrderingKind
        = ok_unordered: ()
        | ok_ordered: ()
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
syntax Multiplicity
        = 
        ANY range+
 ;
syntax MultiplicityRange
        = 
        ANY multiplicity ANY lower ANY upper
 ;
syntax Expression
        = 
        ANY language ANY body
 ;
syntax BooleanExpression
        = 
        ()
 ;
