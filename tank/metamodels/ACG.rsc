@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ACG

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = ACG
        | ACGElement
        | StatementBlock
        | Statement
        | VariableDecl
        | Expression
 ;
syntax ACG
        = 
        String metamodel String startsWith ACGElement elements+
 ;
syntax ACGElement
        = Function
        | Attribute
        | Node
 ;
syntax Function
        = 
        String context String name Parameter parameters+ Expression body
 ;
syntax Attribute
        = 
        String context String name Expression body
 ;
syntax Parameter
        = 
        name: String
 ;
syntax Node
        = ASMNode
        | CodeNode
        | SimpleNode
 ;
syntax ASMNode
        = 
        name: Expression
 ;
syntax CodeNode
        = 
        String element String mode Expression guard
 ;
syntax SimpleNode
        = 
        String element String mode Expression guard
 ;
syntax StatementBlock
        = Node
        | CompoundStat
 ;
syntax Statement
        = ReportStat
        | FieldStat
        | ParamStat
        | EmitStat
        | CompoundStat
 ;
syntax CompoundStat
        = ForEachStat
        | OnceStat
        | VariableStat
        | OperationStat
        | ConditionalStat
        | LetStat
        | AnalyzeStat
 ;
syntax ForEachStat
        = 
        VariableDecl iterator Expression collection
 ;
syntax OnceStat
        = 
        ()
 ;
syntax VariableStat
        = 
        Expression definition Expression name
 ;
syntax OperationStat
        = 
        Expression context Expression name
 ;
syntax ConditionalStat
        = 
        Expression condition Statement elseStatements+
 ;
syntax LetStat
        = 
        VariableDecl variable Expression value
 ;
syntax AnalyzeStat
        = 
        Expression target String mode
 ;
syntax ReportStat
        = 
        Severity severity Expression message
 ;
syntax Severity
        = critic: ()
        | error: ()
        | warning: ()
 ;
syntax FieldStat
        = 
        Expression name Expression type
 ;
syntax ParamStat
        = 
        Expression name Expression type
 ;
syntax EmitStat
        = LabelStat
        | NewStat
        | DupStat
        | DupX1Stat
        | PopStat
        | SwapStat
        | IterateStat
        | EndIterateStat
        | GetAsmStat
        | FindMEStat
        | PushTStat
        | PushFStat
        | EmitWithOperandStat
        | EmitWithLabelRefStat
 ;
syntax LabelStat
        = 
        String name Expression id
 ;
syntax NewStat
        = 
        ()
 ;
syntax DupStat
        = 
        ()
 ;
syntax DupX1Stat
        = 
        ()
 ;
syntax PopStat
        = 
        ()
 ;
syntax SwapStat
        = 
        ()
 ;
syntax IterateStat
        = 
        ()
 ;
syntax EndIterateStat
        = 
        ()
 ;
syntax GetAsmStat
        = 
        ()
 ;
syntax FindMEStat
        = 
        ()
 ;
syntax PushTStat
        = 
        ()
 ;
syntax PushFStat
        = 
        ()
 ;
syntax EmitWithOperandStat
        = PushStat
        | PushIStat
        | PushDStat
        | LoadStat
        | StoreStat
        | CallStat
        | PCallStat
        | SuperCallStat
        | GetStat
        | SetStat
 ;
syntax PushStat
        = 
        operand: Expression
 ;
syntax PushIStat
        = 
        operand: Expression
 ;
syntax PushDStat
        = 
        operand: Expression
 ;
syntax LoadStat
        = 
        operand: Expression
 ;
syntax StoreStat
        = 
        operand: Expression
 ;
syntax CallStat
        = 
        operand: Expression
 ;
syntax PCallStat
        = 
        operand: Expression
 ;
syntax SuperCallStat
        = 
        operand: Expression
 ;
syntax GetStat
        = 
        operand: Expression
 ;
syntax SetStat
        = 
        operand: Expression
 ;
syntax EmitWithLabelRefStat
        = IfStat
        | GotoStat
 ;
syntax IfStat
        = 
        label: LabelStat
 ;
syntax GotoStat
        = 
        label: LabelStat
 ;
syntax VariableDecl
        = Parameter
        | name: String
 ;
syntax Expression
        = VariableExp
        | SelfExp
        | LastExp
        | IfExp
        | IsAExp
        | LetExp
        | PropertyCallExp
        | LiteralExp
 ;
syntax VariableExp
        = 
        variable: VariableDecl
 ;
syntax SelfExp
        = 
        ()
 ;
syntax LastExp
        = 
        ()
 ;
syntax IfExp
        = 
        Expression condition Expression thenExp Expression elseExp
 ;
syntax IsAExp
        = 
        Expression source String type
 ;
syntax LetExp
        = 
        VariableDecl variable Expression value Expression in
 ;
syntax PropertyCallExp
        = NavigationExp
        | IteratorExp
        | OperationCallExp
 ;
syntax NavigationExp
        = 
        Expression source String name
 ;
syntax IteratorExp
        = 
        VariableDecl iterator Expression body
 ;
syntax OperationCallExp
        = OperatorCallExp
        | Expression arguments+
 ;
syntax OperatorCallExp
        = 
        Expression arguments+
 ;
syntax LiteralExp
        = OclUndefinedExp
        | CollectionExp
        | BooleanExp
        | IntegerExp
        | StringExp
 ;
syntax OclUndefinedExp
        = 
        ()
 ;
syntax CollectionExp
        = 
        SequenceExp
 ;
syntax SequenceExp
        = 
        Expression elements+
 ;
syntax BooleanExp
        = 
        value: Boolean
 ;
syntax IntegerExp
        = 
        value: Integer
 ;
syntax StringExp
        = 
        value: String
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
