@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SEE_Design

syntax LogFile
        = 
        String file LogFile instance Logger logger
 ;
syntax Logger
        = 
        Logger instance Expression expression LogFile logFile
 ;
syntax Expression
        = Literal
        | UnaryOperator
        | BinaryOperator
        | Boolean loggingOn Logger logger
 ;
syntax Literal
        = VariableExpression
        | NumberExpression
        | value: Integer
 ;
syntax VariableExpression
        = 
        name: String
 ;
syntax NumberExpression
        = 
        value: Integer
 ;
syntax UnaryOperator
        = UnaryPlusOp
        | UnaryMinusOp
        | operand: Expression
 ;
syntax UnaryPlusOp
        = 
        operand: Expression
 ;
syntax UnaryMinusOp
        = 
        operand: Expression
 ;
syntax BinaryOperator
        = PlusOperator
        | MinusOperator
        | Expression operand1 Expression operand2
 ;
syntax PlusOperator
        = 
        Expression operand1 Expression operand2
 ;
syntax MinusOperator
        = 
        Expression operand1 Expression operand2
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
