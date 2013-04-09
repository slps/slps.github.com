@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SEE_Design

syntax LogFile
        = 
        ANY file ANY instance ANY logger
 ;
syntax Logger
        = 
        ANY instance ANY expression ANY logFile
 ;
syntax Expression
        = 
        ANY loggingOn ANY logger
 ;
syntax Literal
        = 
        value: ANY
 ;
syntax VariableExpression
        = 
        name: ANY
 ;
syntax NumberExpression
        = 
        ()
 ;
syntax UnaryOperator
        = 
        operand: ANY
 ;
syntax UnaryPlusOp
        = 
        ()
 ;
syntax UnaryMinusOp
        = 
        ()
 ;
syntax BinaryOperator
        = 
        ANY operand1 ANY operand2
 ;
syntax PlusOperator
        = 
        ()
 ;
syntax MinusOperator
        = 
        ()
 ;
