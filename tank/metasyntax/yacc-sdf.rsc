@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Yacc_sdf

syntax Grammar
        = 
        C_declarations Yacc_declarations "%%" Grammar_rules "%%" Extra_C_code
 ;
syntax Yacc_declarations
        = 
        Yacc_declaration*
 ;
syntax Yacc_declaration
        = ("%token" | "%left" | "%right" | "%nonassoc") (Terminal | Literal)+ String?
        | "%start" Terminal
 ;
syntax Grammar_rules
        = 
        Rule*
 ;
syntax Rule
        = 
        NonTerminal ":" (Expression? ("|" Expression?)*)? ";"
 ;
syntax Expression
        = Terminal
        | NonTerminal
        | Literal
        | "%prec" Terminal
        | C_code
        | Expression Expression
 ;
