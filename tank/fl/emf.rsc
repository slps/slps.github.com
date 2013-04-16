@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Emf

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Apply
        = 
        String name Expr arg+
 ;
syntax Argument
        = 
        name: String
 ;
syntax Binary
        = 
        Ops ops Expr left Expr right
 ;
syntax Expr
        = Apply
        | Argument
        | Binary
        | IfThenElse
        | Literal
 ;
syntax Function
        = 
        String name String arg+ Expr rhs
 ;
syntax IfThenElse
        = 
        Expr ifExpr Expr thenExpr Expr elseExpr
 ;
syntax Literal
        = 
        info: Integer
 ;
syntax Ops
        = Equal: ()
        | Plus: ()
        | Minus: ()
 ;
syntax ProgramType
        = 
        Function function+
 ;
