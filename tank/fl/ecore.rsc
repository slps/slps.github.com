@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Ecore

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = 
        Function function+
 ;
syntax Function
        = 
        String name Argument argument+ Exp definition
 ;
syntax Argument
        = 
        name: String
 ;
syntax Exp
        = LiteralExp
        | ArgumentExp
        | IfThenElseExp
        | ApplyExp
        | BinaryExp
 ;
syntax LiteralExp
        = 
        value: Integer
 ;
syntax ArgumentExp
        = 
        argument: Argument
 ;
syntax IfThenElseExp
        = 
        Exp if Exp then Exp else
 ;
syntax ApplyExp
        = 
        Function function Exp argument+
 ;
syntax BinaryExp
        = PlusExp
        | MinusExp
        | EqualExp
 ;
syntax PlusExp
        = 
        Exp left Exp right
 ;
syntax MinusExp
        = 
        Exp left Exp right
 ;
syntax EqualExp
        = 
        Exp left Exp right
 ;
