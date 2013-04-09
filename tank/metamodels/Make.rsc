@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Make

syntax Makefile
        = 
        ANY name ANY comment ANY elements+
 ;
syntax Element
        = 
        ()
 ;
syntax Rule
        = 
        ANY dependencies+ ANY shellLines+
 ;
syntax Macro
        = 
        value: ANY
 ;
syntax ShellLine
        = 
        ANY command ANY display ANY ruleShellLine
 ;
syntax Comment
        = 
        text: ANY
 ;
syntax Dependency
        = 
        ()
 ;
syntax RuleDep
        = 
        ruledep: ANY
 ;
syntax FileDep
        = 
        name: ANY
 ;
