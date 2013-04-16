@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MonitorProgram

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = NamedElement
        | Expression
        | Statement
 ;
syntax NamedElement
        = Structure
        | VariableDeclaration
        | Type
 ;
syntax Structure
        = ProcContainerElement
        | Procedure
 ;
syntax ProcContainerElement
        = Program
        | Monitor
 ;
syntax Program
        = 
        Monitor monitors+
 ;
syntax Monitor
        = 
        program: Program
 ;
syntax Procedure
        = 
        ProcContainerElement container Parameter parameters+ Statement statements+
 ;
syntax VariableDeclaration
        = Parameter
        | Type type Expression initialValue Structure structure
 ;
syntax Parameter
        = 
        Direction direction Procedure procedure
 ;
syntax Direction
        = in: ()
        | out: ()
 ;
syntax Type
        = 
        name: String
 ;
syntax Expression
        = VariableExp
        | PropertyCallExp
        | LiteralExp
 ;
syntax VariableExp
        = 
        declaration: VariableDeclaration
 ;
syntax PropertyCallExp
        = OperatorCallExp
        | AttributeCallExp
        | ProcedureCallExp
 ;
syntax OperatorCallExp
        = 
        right: Expression
 ;
syntax AttributeCallExp
        = 
        Expression source String name
 ;
syntax ProcedureCallExp
        = 
        Expression arguments+
 ;
syntax LiteralExp
        = BooleanExp
        | IntegerExp
 ;
syntax BooleanExp
        = 
        symbol: Boolean
 ;
syntax IntegerExp
        = 
        symbol: Integer
 ;
syntax Statement
        = AssignmentStat
        | ConditionalStat
        | WhileStat
        | ExpressionStat
 ;
syntax AssignmentStat
        = 
        VariableExp target Expression value
 ;
syntax ConditionalStat
        = 
        Expression condition Statement thenStats+ Statement elseStats+
 ;
syntax WhileStat
        = 
        Expression condition Statement doStats+
 ;
syntax ExpressionStat
        = 
        expression: Expression
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
