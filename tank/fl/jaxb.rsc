@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Jaxb

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
