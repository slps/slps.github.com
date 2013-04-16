@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Xsd

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = 
        Function function+
 ;
syntax Fragment
        = 
        Expr
 ;
syntax Function
        = 
        String name String arg+ Expr rhs
 ;
syntax Expr
        = Literal
        | Argument
        | Binary
        | IfThenElse
        | Apply
 ;
syntax Literal
        = 
        info: Integer
 ;
syntax Argument
        = 
        name: String
 ;
syntax Binary
        = 
        Ops ops Expr left Expr right
 ;
syntax Ops
        = Equal: ()
        | Plus: ()
        | Minus: ()
 ;
syntax IfThenElse
        = 
        Expr ifExpr Expr thenExpr Expr elseExpr
 ;
syntax Apply
        = 
        String name Expr arg+
 ;

public void main()
{
	registerLanguage("Xsd", "ext", Program(str input, loc org) {return parse(#Program, input, org);});
	println("Language registered.");
}
