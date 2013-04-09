@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EG

syntax ExecutionGraph
        = 
        ANY node+ ANY nodeNested
 ;
syntax Node
        = 
        ANY predecessor+ ANY successor+ ANY executionGraph ANY nested+
 ;
syntax Start
        = 
        ()
 ;
syntax End
        = 
        ()
 ;
syntax Control
        = 
        ()
 ;
syntax Basic
        = 
        ()
 ;
syntax Branch
        = 
        ()
 ;
syntax Loop
        = 
        ()
 ;
syntax Fork
        = 
        ()
 ;
syntax Join
        = 
        ()
 ;
syntax Acquire
        = 
        ()
 ;
syntax Release
        = 
        ()
 ;
syntax Split
        = 
        ()
 ;
