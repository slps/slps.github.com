@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MoMM

syntax ModelElement
        = Attribute
        | Relationship
        | Integer level String name String potency ModelElement hasClass ModelElement classElement+ Relationship elementTarget Relationship elementSource Attribute attributes+ Attribute attType
 ;
syntax Attribute
        = 
        type: ModelElement
 ;
syntax Relationship
        = Generalization
        | Association
 ;
syntax Generalization
        = 
        ModelElement target ModelElement source
 ;
syntax Association
        = 
        String maxSource String maxTarget String minSource String minTarget
 ;
