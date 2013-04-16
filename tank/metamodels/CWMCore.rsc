@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CWMCore

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        type: Classifier
 ;
syntax NameSpace
        = Classifier
        | Package
        | ModelElement ownedElements+
 ;
syntax Classifier
        = Class
        | Datatype
        | Subsystem
        | Feature features+
 ;
syntax Package
        = Model
        | Subsystem
        | ModelElement importedElements+
 ;
syntax Class
        = 
        Feature features+
 ;
syntax Datatype
        = 
        Feature features+
 ;
syntax Subsystem
        = 
        Feature features+ ModelElement importedElements+
 ;
syntax Model
        = 
        ModelElement importedElements+
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
