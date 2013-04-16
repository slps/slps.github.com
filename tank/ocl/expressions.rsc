@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Expressions

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax OclExpression
        = SelfExp
        | ResultExp
        | VariableExp
        | OperationExp
        | QueryExp
 ;
syntax SelfExp
        = 
        QueryExp queryArg+ QueryExp querySrc+ Type resultType VariableDeclaration varDec+ VariableInitialisation varInit+
 ;
syntax ResultExp
        = 
        QueryExp queryArg+ QueryExp querySrc+ Type resultType VariableDeclaration varDec+ VariableInitialisation varInit+
 ;
syntax VariableExp
        = 
        var: String
 ;
syntax VariableDeclaration
        = 
        String var Type varType OclExpression oclExpression+ QueryExp queryExp+ VariableInitialisation varInit+
 ;
syntax VariableInitialisation
        = 
        OclExpression initExpression VariableDeclaration varDec IterateExp iterateExp
 ;
syntax ForAllExp
        = 
        ()
 ;
syntax ExistsExp
        = 
        ()
 ;
syntax SelectExp
        = 
        ()
 ;
syntax RejectExp
        = 
        ()
 ;
syntax CollectExp
        = 
        ()
 ;
syntax IterateExp
        = 
        varInit: VariableInitialisation
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
