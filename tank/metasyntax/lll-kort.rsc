@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Lll_kort

syntax Specification
        = 
        Rule+
 ;
syntax Rule
        = 
        Ident ":" Disjunction ";"
 ;
syntax Disjunction
        = 
        
	Conjunction
	"|"
      
 ;
syntax Conjunction
        = 
        Term+
 ;
syntax Term
        = 
        Basis Repetition?
 ;
syntax Basis
        = Ident
        | Literal
        | "%epsilon"
        | Alternation
        | Group
 ;
syntax Repetition
        = "+"
        | "*"
        | "?"
 ;
syntax Alternation
        = 
        "{" Basis Basis "}" Repetition
 ;
syntax Group
        = 
        "(" Disjunction ")"
 ;
