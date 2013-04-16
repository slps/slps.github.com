@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SEE_Design

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
