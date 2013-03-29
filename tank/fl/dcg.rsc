@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Dcg

syntax Program
        = 
        Function+
 ;
syntax Function
        = 
        Name Name+ "=" Expr Newline+
 ;
syntax Expr
        = binary: Atom (Ops Atom)*
        | apply: Name Atom+
        | ifThenElse: "if" Expr "then" Expr "else" Expr
 ;
syntax Atom
        = literal: Int
        | argument: Name
        | "(" Expr ")"
 ;
syntax Ops
        = equal: "=="
        | plus: "+"
        | minus: "-"
 ;
