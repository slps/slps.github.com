@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WorkDefinitions

syntax WorkDefinition
        = 
        ANY parentWorks+ ANY subWorks+ ANY owner
 ;
syntax ProcessPerformer
        = 
        ANY features+
 ;
syntax Role
        = 
        ANY products+
 ;
syntax WorkProduct
        = 
        responsible: ANY
 ;
syntax Lifecycle
        = 
        ANY phases+
 ;
syntax Phase
        = 
        ANY lifeCycle ANY iterations+
 ;
syntax Iteration
        = 
        ANY phase ANY activities+
 ;
syntax Activity
        = 
        ANY iteration ANY steps+
 ;
syntax Step
        = 
        ()
 ;
