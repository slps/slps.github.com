@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Lll_ldta

syntax Grammar
        = 
        Rule+
 ;
syntax Rule
        = 
        Sort ":" Alts ";"
 ;
syntax Alts
        = 
        Alt Alts_tail*
 ;
syntax Alts_tail
        = 
        "|" Alt
 ;
syntax Alt
        = 
        Term*
 ;
syntax Term
        = 
        Basis Repetition?
 ;
syntax Basis
        = Literal
        | Sort
 ;
syntax Repetition
        = "*"
        | "+"
        | "?"
 ;
