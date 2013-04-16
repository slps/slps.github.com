@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Antlr

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = 
        Function f+
 ;
syntax Function
        = 
        ID n ID a+ "=" Expr e NEWLINE+
 ;
syntax Expr
        = b: Binary
        | a: Apply
        | i: IfThenElse
 ;
syntax Binary
        = 
        Atom l (Ops o Atom r)*
 ;
syntax Apply
        = 
        ID i Atom a+
 ;
syntax IfThenElse
        = 
        "if" Expr c "then" Expr e1 "else" Expr e2
 ;
syntax Atom
        = ID
        | INT
        | "(" Expr e ")"
 ;
syntax Ops
        = "=="
        | "+"
        | "-"
 ;
