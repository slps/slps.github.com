@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CWMCore

syntax VisibilityKind
        = vk_public_vis: ()
        | vk_private_vis: ()
        | vk_protected_vis: ()
 ;
syntax BooleanExpression
        = 
        expresssion: String
 ;
syntax ModelElement
        = Dependency
        | Constraint
        | Feature
        | NameSpace
        | String name VisibilityKind visibility Constraint contraints+ Dependency clientDependencies+ Dependency supplierDependencies+ NameSpace namespace Package importers+
 ;
syntax Dependency
        = 
        String kind ModelElement clients+ ModelElement suppliers+
 ;
syntax Constraint
        = 
        BooleanExpression body ModelElement constrainedElements+
 ;
syntax Feature
        = StructuralFeature
        | owner: Classifier
 ;
syntax StructuralFeature
        = Attribute
        | type: Classifier
 ;
syntax Attribute
        = 
        ()
 ;
syntax NameSpace
        = Classifier
        | Package
        | ModelElement ownedElements+
 ;
syntax Classifier
        = Class
        | Datatype
        | Feature features+
 ;
syntax Package
        = Model
        | ModelElement importedElements+
 ;
syntax Class
        = 
        ()
 ;
syntax Datatype
        = 
        ()
 ;
syntax Subsystem
        = 
        ()
 ;
syntax Model
        = 
        ()
 ;
