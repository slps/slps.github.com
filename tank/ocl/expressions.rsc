@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Expressions

syntax OclExpression
        = 
        ()
 ;
syntax SelfExp
        = 
        ANY queryArg+ ANY querySrc+ ANY resultType ANY varDec+ ANY varInit+
 ;
syntax ResultExp
        = 
        ANY queryArg+ ANY querySrc+ ANY resultType ANY varDec+ ANY varInit+
 ;
syntax VariableExp
        = 
        var: ANY
 ;
syntax OperationExp
        = 
        ()
 ;
syntax QueryExp
        = 
        ()
 ;
syntax Type
        = 
        ()
 ;
syntax VariableDeclaration
        = 
        ANY var ANY varType ANY oclExpression+ ANY queryExp+ ANY varInit+
 ;
syntax VariableInitialisation
        = 
        ANY initExpression ANY varDec ANY iterateExp
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
        varInit: ANY
 ;
