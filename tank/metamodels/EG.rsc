@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EG

syntax ExecutionGraph
        = 
        Node node+ Node nodeNested
 ;
syntax Node
        = Start
        | End
        | Control
        | Basic
        | Node predecessor+ Node successor+ ExecutionGraph executionGraph ExecutionGraph nested+
 ;
syntax Start
        = 
        Node predecessor+ Node successor+ ExecutionGraph executionGraph ExecutionGraph nested+
 ;
syntax End
        = 
        Node predecessor+ Node successor+ ExecutionGraph executionGraph ExecutionGraph nested+
 ;
syntax Control
        = Branch
        | Loop
        | Fork
        | Join
        | Acquire
        | Release
        | Split
 ;
syntax Basic
        = 
        Node predecessor+ Node successor+ ExecutionGraph executionGraph ExecutionGraph nested+
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
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
