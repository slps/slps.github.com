@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Umldi_uc

syntax Instance
        = ComponentInstance
        | NodeInstance
        | UseCaseInstance
 ;
syntax AttributeLink
        = 
        Instance instance Instance value LinkEnd linkEnd Attribute attribute
 ;
syntax Link
        = 
        Association association LinkEnd connection
 ;
syntax LinkEnd
        = 
        Link link AttributeLink qualifiedValue+ Instance instance AssociationEnd associationEnd
 ;
syntax ComponentInstance
        = 
        Instance resident+ NodeInstance nodeInstance
 ;
syntax NodeInstance
        = 
        ComponentInstance resident+
 ;
syntax UseCase
        = 
        Include include+ Extend extend+ ExtensionPoint extensionPoint+
 ;
syntax Actor
        = 
        Generalization powertypeRange+ Feature feature+
 ;
syntax UseCaseInstance
        = 
        Instance ownedInstance+ LinkEnd linkEnd+ Classifier classifier+ ComponentInstance componentInstance AttributeLink slot+ Link ownedLink+
 ;
syntax Extend
        = 
        ExtensionPoint extensionPoint+ UseCase extension UseCase base BooleanExpression condition
 ;
syntax Include
        = 
        UseCase addition UseCase base
 ;
syntax ExtensionPoint
        = 
        UseCase useCase String location
 ;
syntax Element
        = 
        ModelElement
 ;
syntax ModelElement
        = Instance
        | AttributeLink
        | Link
        | LinkEnd
        | ExtensionPoint
        | GeneralizableElement
        | Namespace
        | Feature
        | AssociationEnd
        | Relationship
 ;
syntax Classifier
        = UseCase
        | Actor
 ;
syntax Feature
        = 
        StructuralFeature
 ;
syntax StructuralFeature
        = 
        Attribute
 ;
syntax AssociationEnd
        = 
        Association association Classifier specification+ Classifier participant Attribute qualifier+ Boolean isNavigable OrderingKind ordering AggregationKind aggregation ScopeKind targetScope Multiplicity multiplicity ChangeableKind changeability
 ;
syntax Relationship
        = Extend
        | Include
        | Generalization
 ;
syntax Association
        = 
        connection: AssociationEnd
 ;
syntax Attribute
        = 
        AssociationEnd associationEnd Expression initialValue
 ;
syntax Generalization
        = 
        GeneralizableElement parent Classifier powertype GeneralizableElement child String discriminator
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
        MultiplicityRange range+
 ;
syntax MultiplicityRange
        = 
        Multiplicity multiplicity Integer lower Integer upper
 ;
syntax Expression
        = BooleanExpression
        | String language String body
 ;
syntax BooleanExpression
        = 
        ()
 ;
