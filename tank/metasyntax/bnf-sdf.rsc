@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bnf_sdf

syntax Rules
        = 
        Rule*
 ;
syntax Rule
        = 
        NonTerminal "::=" Elements
 ;
syntax NonTerminal
        = 
        "\<" String "\>"
 ;
syntax Elements
        = 
        Element ("|" Element)*
 ;
syntax Element
        = NonTerminal
        | Terminal
        | "[" Element ("|" Element)* "]"
        | "{" Element ("|" Element)* "}"
        | "|"
        | "["
        | "]"
        | "{"
        | "}"
        | "\<"
        | "\>"
        | "..."
        | "::="
        | Element Element
 ;
syntax Terminal
        = 
        String
 ;
