@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Expressions

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
