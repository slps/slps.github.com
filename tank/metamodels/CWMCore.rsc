@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CWMCore

syntax VisibilityKind
        = vk_public_vis: ()
        | vk_private_vis: ()
        | vk_protected_vis: ()
 ;
syntax BooleanExpression
        = 
        expresssion: ANY
 ;
syntax ModelElement
        = 
        ANY name ANY visibility ANY contraints+ ANY clientDependencies+ ANY supplierDependencies+ ANY namespace ANY importers+
 ;
syntax Dependency
        = 
        ANY kind ANY clients+ ANY suppliers+
 ;
syntax Constraint
        = 
        ANY body ANY constrainedElements+
 ;
syntax Feature
        = 
        owner: ANY
 ;
syntax StructuralFeature
        = 
        type: ANY
 ;
syntax Attribute
        = 
        ()
 ;
syntax NameSpace
        = 
        ANY ownedElements+
 ;
syntax Classifier
        = 
        ANY features+
 ;
syntax Package
        = 
        ANY importedElements+
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
