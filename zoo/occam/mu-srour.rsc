@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Mu_srour

syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax Process
        = StopProcess
        | SkipProcess
        | Action
        | Construction
        | Instance
        | Specification
 ;
syntax StopProcess
        = 
        ()
 ;
syntax SkipProcess
        = 
        ()
 ;
syntax Action
        = Assignment
        | Input
        | Output
 ;
syntax Construction
        = Sequence
        | Conditional
        | Loop
        | Parallel
        | Alternation
 ;
syntax Instance
        = 
        name: String
 ;
syntax Assignment
        = 
        Variable variable Expression expression
 ;
syntax Input
        = 
        Channel channel Variable variable
 ;
syntax Output
        = 
        Channel channel Expression expression
 ;
syntax Sequence
        = NormalSequence
        | ReplicatorSequence
 ;
syntax NormalSequence
        = 
        process: Process
 ;
syntax ReplicatorSequence
        = 
        replicator: Replicator
 ;
syntax Conditional
        = NormalConditional
        | ReplicatorConditional
 ;
syntax NormalConditional
        = 
        choice: Choice
 ;
syntax ReplicatorConditional
        = 
        replicator: Replicator
 ;
syntax Loop
        = 
        BooleanRef boolean Process process
 ;
syntax Parallel
        = NormalParallel
        | ReplicatorParallel
        | NormalAlternation
        | ReplicatorAlternation
 ;
syntax NormalParallel
        = 
        process: Process
 ;
syntax ReplicatorParallel
        = 
        replicator: Replicator
 ;
syntax Alternation
        = 
        alternative: Alternative
 ;
syntax NormalAlternation
        = 
        process: Process
 ;
syntax ReplicatorAlternation
        = 
        replicator: Replicator
 ;
syntax Choice
        = 
        BooleanRef boolean Process process
 ;
syntax BooleanRef
        = 
        expression: Expression
 ;
syntax Alternative
        = 
        Guard guard Process process
 ;
syntax Guard
        = InputGuard
        | BooleanGuard
 ;
syntax InputGuard
        = 
        input: Input
 ;
syntax BooleanGuard
        = 
        boolean: BooleanRef
 ;
syntax Replicator
        = 
        String name Base base Count count
 ;
syntax Base
        = 
        expression: Expression
 ;
syntax Count
        = 
        expression: Expression
 ;
syntax Type
        = 
        PrimitiveType primitiveType Expression expression
 ;
syntax PrimitiveType
        = 
        Boolean isInt Boolean isChan
 ;
syntax Literal
        = LiteralOperand
        | integer: Integer
 ;
syntax Element
        = 
        String name Subscript subscript
 ;
syntax Subscript
        = 
        expression: Expression
 ;
syntax Variable
        = VariableOPerand
        | element: Element
 ;
syntax Channel
        = 
        element: Element
 ;
syntax VariableOPerand
        = 
        element: Element
 ;
syntax LiteralOperand
        = 
        integer: Integer
 ;
syntax ExpressionOperand
        = 
        operand: Operand
 ;
syntax Expression
        = ExpressionOperand
        | MonadicExpression
        | DyadicExpression
        | SimpleExpression
 ;
syntax MonadicExpression
        = 
        monadicOperator: MonadicOperator
 ;
syntax DyadicExpression
        = 
        Operand operandRight DyadicOperator dyadicOperator
 ;
syntax SimpleExpression
        = 
        operand: Operand
 ;
syntax Specification
        = Declaration
        | Definition
 ;
syntax Declaration
        = TypeDeclaration
        | IntDeclaration
        | ValDeclaration
 ;
syntax TypeDeclaration
        = 
        type: Type
 ;
syntax IntDeclaration
        = 
        String name Expression expression
 ;
syntax ValDeclaration
        = 
        String name Expression expression
 ;
syntax Definition
        = 
        String name ProcedureBody procedureBody
 ;
syntax Formal
        = 
        String name PrimitiveType primitiveType
 ;
syntax ProcedureBody
        = 
        String name Process process
 ;
syntax Actual
        = 
        element: Element
 ;
syntax MonadicOperator
        = 
        Boolean minus Boolean not
 ;
syntax DyadicOperator
        = 
        Boolean plus Boolean minus Boolean star Boolean slash Boolean or Boolean inverseSlash Boolean and Boolean eq Boolean ne Boolean lt Boolean gt Boolean le Boolean ge
 ;
