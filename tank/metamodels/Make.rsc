@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Make

syntax Makefile
        = 
        String name Comment comment Element elements+
 ;
syntax Element
        = Rule
        | Macro
 ;
syntax Rule
        = 
        Dependency dependencies+ ShellLine shellLines+
 ;
syntax Macro
        = 
        value: String
 ;
syntax ShellLine
        = 
        String command Boolean display Rule ruleShellLine
 ;
syntax Comment
        = 
        text: String
 ;
syntax Dependency
        = RuleDep
        | FileDep
 ;
syntax RuleDep
        = 
        ruledep: Rule
 ;
syntax FileDep
        = 
        name: String
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
