@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Make

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
