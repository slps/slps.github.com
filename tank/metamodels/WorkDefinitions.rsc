@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WorkDefinitions

syntax WorkDefinition
        = Lifecycle
        | Phase
        | Iteration
        | Activity
        | WorkDefinition parentWorks+ WorkDefinition subWorks+ ProcessPerformer owner
 ;
syntax ProcessPerformer
        = Role
        | WorkDefinition features+
 ;
syntax Role
        = 
        WorkProduct products+
 ;
syntax WorkProduct
        = 
        responsible: Role
 ;
syntax Lifecycle
        = 
        Phase phases+
 ;
syntax Phase
        = 
        Lifecycle lifeCycle Iteration iterations+
 ;
syntax Iteration
        = 
        Phase phase Activity activities+
 ;
syntax Activity
        = 
        Iteration iteration Step steps+
 ;
syntax Step
        = 
        ()
 ;
syntax Boolean
        = "true"
        | "false"
 ;
