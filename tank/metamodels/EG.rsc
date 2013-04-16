@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EG

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
