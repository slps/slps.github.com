@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MoMM

syntax ModelElement
        = 
        ANY level ANY name ANY potency ANY hasClass ANY classElement+ ANY elementTarget ANY elementSource ANY attributes+ ANY attType
 ;
syntax Attribute
        = 
        type: ANY
 ;
syntax Relationship
        = 
        ()
 ;
syntax Generalization
        = 
        ANY target ANY source
 ;
syntax Association
        = 
        ANY maxSource ANY maxTarget ANY minSource ANY minTarget
 ;
