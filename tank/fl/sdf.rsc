@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Sdf

syntax Program
        = 
        Function+
 ;
syntax Function
        = 
        Name Name+ "=" Expr Newline+
 ;
syntax Expr
        = binary: Expr Ops Expr
        | apply: Name Expr+
        | ifThenElse: "if" Expr "then" Expr "else" Expr
        | "(" Expr ")"
        | argument: Name
        | literal: Int
 ;
syntax Ops
        = minus: "-"
        | plus: "+"
        | equal: "=="
 ;
