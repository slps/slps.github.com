@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RequisitePro

syntax DescribedElt
        = Document
        | ContainerElt
 ;
syntax NamedElt
        = ContainerElt
        | Requirement
 ;
syntax ContainerElt
        = Project
        | Package
 ;
syntax Project
        = 
        ContainedElt content+ Package packages+
 ;
syntax Package
        = 
        parentPackage: ContainerElt
 ;
syntax TypedElt
        = 
        Attribute
 ;
syntax Document
        = 
        description: String
 ;
syntax Attribute
        = 
        value: String
 ;
syntax Requirement
        = 
        String text Attribute attributes+ Document location Requirement parent Requirement children+ Requirement coverLink+
 ;
syntax String
        = 
        String
 ;
