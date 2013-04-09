@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bgf

syntax Grammar
        = 
        Nonterminal root* Production*
 ;
syntax Production
        = 
        Label label? Nonterminal nonterminal Expression
 ;
syntax Expression
        = epsilon: ()
        | empty: ()
        | value: Value
        | any: ()
        | terminal: Terminal
        | nonterminal: Nonterminal
        | selectable: Selector selector Expression
        | marked: Expression
        | sequence: Expression+
        | choice: Expression+
        | allof: Expression+
        | not: Expression
        | optional: Expression
        | plus: Expression
        | star: Expression
        | seplistplus: Expression Expression
        | sepliststar: Expression Expression
 ;
syntax Value
        = int: ()
        | string: ()
 ;
syntax Label
        = 
        String
 ;
syntax Nonterminal
        = 
        String
 ;
syntax Selector
        = 
        String
 ;
syntax Terminal
        = 
        String
 ;
