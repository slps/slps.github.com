@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Ebnf_sdf

syntax Grammar
        = 
        Rule*
 ;
syntax Rule
        = 
        IdCon "::=" Expression
 ;
syntax IdCon
        = 
        String
 ;
syntax Expression
        = IdCon
        | String
        | "(" Expression ")"
        | Expression "?"
        | Expression "*"
        | Expression "+"
        | Expression "|" Expression
        | Expression Expression
 ;
syntax String
        = 
        "\"" String "\""
 ;
