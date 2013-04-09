@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module µOCCAM

syntax Process
        = 
        ()
 ;
syntax StopProcess
        = 
        
 ;
syntax SkipProcess
        = 
        
 ;
syntax Action
        = 
        ()
 ;
syntax Construction
        = 
        
 ;
syntax Instance
        = 
        name: ANY
 ;
syntax Assignment
        = 
        ANY variable ANY expression
 ;
syntax Input
        = 
        ANY channel ANY variable
 ;
syntax Output
        = 
        ANY channel ANY expression
 ;
syntax Sequence
        = 
        ()
 ;
syntax NormalSequence
        = 
        ANY process
 ;
syntax ReplicatorSequence
        = 
        replicator: ANY
 ;
syntax Conditional
        = 
        ()
 ;
syntax NormalConditional
        = 
        ANY choice
 ;
syntax ReplicatorConditional
        = 
        replicator: ANY
 ;
syntax Loop
        = 
        ANY boolean ANY process
 ;
syntax Parallel
        = 
        ()
 ;
syntax NormalParallel
        = 
        ANY process
 ;
syntax ReplicatorParallel
        = 
        replicator: ANY
 ;
syntax Alternation
        = 
        alternative: ANY
 ;
syntax NormalAlternation
        = 
        ANY process
 ;
syntax ReplicatorAlternation
        = 
        replicator: ANY
 ;
syntax Choice
        = 
        ANY boolean ANY process
 ;
syntax BooleanRef
        = 
        expression: ANY
 ;
syntax Alternative
        = 
        ANY guard ANY process
 ;
syntax Guard
        = 
        ()
 ;
syntax InputGuard
        = 
        ANY input
 ;
syntax BooleanGuard
        = 
        boolean: ANY
 ;
syntax Replicator
        = 
        ANY name ANY base ANY count
 ;
syntax Base
        = 
        expression: ANY
 ;
syntax Count
        = 
        expression: ANY
 ;
syntax Type
        = 
        ANY primitiveType ANY expression
 ;
syntax PrimitiveType
        = 
        ANY isInt ANY isChan
 ;
syntax Literal
        = 
        integer: ANY
 ;
syntax Element
        = 
        ANY name ANY subscript
 ;
syntax Subscript
        = 
        expression: ANY
 ;
syntax Variable
        = 
        element: ANY
 ;
syntax Channel
        = 
        element: ANY
 ;
syntax Operand
        = 
        ()
 ;
syntax VariableOPerand
        = 
        ()
 ;
syntax LiteralOperand
        = 
        ()
 ;
syntax ExpressionOperand
        = 
        ANY operand
 ;
syntax Expression
        = 
        ()
 ;
syntax MonadicExpression
        = 
        monadicOperator: ANY
 ;
syntax DyadicExpression
        = 
        ANY operandRight ANY dyadicOperator
 ;
syntax SimpleExpression
        = 
        ANY operand
 ;
syntax Specification
        = 
        ()
 ;
syntax Declaration
        = 
        ()
 ;
syntax TypeDeclaration
        = 
        type: ANY
 ;
syntax IntDeclaration
        = 
        ANY name ANY expression
 ;
syntax ValDeclaration
        = 
        ANY name ANY expression
 ;
syntax Definition
        = 
        ANY name ANY procedureBody
 ;
syntax Formal
        = 
        ANY name ANY primitiveType
 ;
syntax ProcedureBody
        = 
        ANY name ANY process
 ;
syntax Actual
        = 
        element: ANY
 ;
syntax MonadicOperator
        = 
        ANY minus ANY not
 ;
syntax DyadicOperator
        = 
        ANY plus ANY minus ANY star ANY slash ANY or ANY inverseSlash ANY and ANY eq ANY ne ANY lt ANY gt ANY le ANY ge
 ;
