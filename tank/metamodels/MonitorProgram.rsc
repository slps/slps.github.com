@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MonitorProgram

syntax LocatedElement
        = 
        ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Structure
        = 
        ()
 ;
syntax ProcContainerElement
        = 
        ()
 ;
syntax Program
        = 
        ANY monitors+
 ;
syntax Monitor
        = 
        program: ANY
 ;
syntax Procedure
        = 
        ANY container ANY parameters+ ANY statements+
 ;
syntax VariableDeclaration
        = 
        ANY type ANY initialValue ANY structure
 ;
syntax Parameter
        = 
        ANY direction ANY procedure
 ;
syntax Direction
        = in: ()
        | out: ()
 ;
syntax Type
        = 
        ANY name
 ;
syntax Expression
        = 
        ()
 ;
syntax VariableExp
        = 
        declaration: ANY
 ;
syntax PropertyCallExp
        = 
        ()
 ;
syntax OperatorCallExp
        = 
        right: ANY
 ;
syntax AttributeCallExp
        = 
        ANY source ANY name
 ;
syntax ProcedureCallExp
        = 
        ANY arguments+
 ;
syntax LiteralExp
        = 
        ()
 ;
syntax BooleanExp
        = 
        symbol: ANY
 ;
syntax IntegerExp
        = 
        symbol: ANY
 ;
syntax Statement
        = 
        ()
 ;
syntax AssignmentStat
        = 
        ANY target ANY value
 ;
syntax ConditionalStat
        = 
        ANY condition ANY thenStats+ ANY elseStats+
 ;
syntax WhileStat
        = 
        ANY condition ANY doStats+
 ;
syntax ExpressionStat
        = 
        expression: ANY
 ;
