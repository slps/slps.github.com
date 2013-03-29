@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Txl

syntax Program
        = 
        Fun+
 ;
syntax Fun
        = 
        Id Id+ "=" Expression Newline
 ;
syntax Expression
        = Expression Op Expression
        | Id Expression+
        | "if" Expression "then" Expression "else" Expression
        | "(" Expression ")"
        | Id
        | Number
 ;
syntax Op
        = "+"
        | "-"
        | "=="
 ;
