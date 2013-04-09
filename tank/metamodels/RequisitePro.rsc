@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RequisitePro

syntax DescribedElt
        = 
        ()
 ;
syntax NamedElt
        = 
        ()
 ;
syntax ContainerElt
        = 
        ()
 ;
syntax Project
        = 
        ANY content+ ANY packages+
 ;
syntax Package
        = 
        parentPackage: ANY
 ;
syntax ContainedElt
        = 
        ()
 ;
syntax TypedElt
        = 
        ()
 ;
syntax Document
        = 
        ()
 ;
syntax Attribute
        = 
        value: ANY
 ;
syntax Requirement
        = 
        ANY text ANY attributes+ ANY location ANY parent ANY children+ ANY coverLink+
 ;
