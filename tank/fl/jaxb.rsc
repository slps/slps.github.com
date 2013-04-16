@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Jaxb

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Apply
        = 
        String Name Expr* Arg
 ;
syntax Argument
        = 
        Name: String
 ;
syntax Binary
        = 
        Ops Ops Expr Left Expr Right
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
        String Name String* Arg Expr Rhs
 ;
syntax IfThenElse
        = 
        Expr IfExpr Expr ThenExpr Expr ElseExpr
 ;
syntax Literal
        = 
        Info: Integer
 ;
syntax ObjectFactory
        = 
        ()
 ;
syntax Ops
        = EQUAL: ()
        | PLUS: ()
        | MINUS: ()
 ;
syntax Package_info
        = 
        ()
 ;
syntax Program
        = 
        Function: Function*
 ;
