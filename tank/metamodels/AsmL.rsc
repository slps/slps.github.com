@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module AsmL

syntax LocatedElement
        = Body
        | InWhereHolds
        | AsmLFile
        | AsmLElement
        | VarOrCase
        | VarOrMethod
        | Enumerator
        | Parameter
        | Initially
        | Rule
        | Term
 ;
syntax Body
        = 
        Rule rules+
 ;
syntax InWhereHolds
        = 
        Term var Term in Term where Term holds
 ;
syntax AsmLFile
        = 
        AsmLElement elements+ Main main
 ;
syntax AsmLElement
        = Namespace
        | Structure
        | Class
        | Enumeration
        | Function
        | Type
 ;
syntax VarDeclaration
        = 
        Boolean isConstant Boolean isDeclaration Boolean isLocal String name Type type
 ;
syntax Namespace
        = 
        name: String
 ;
syntax Structure
        = 
        String name VarOrCase varOrCase+ String superStructureName
 ;
syntax VarOrCase
        = 
        Case
 ;
syntax Case
        = 
        String name VarDeclaration variables+
 ;
syntax Class
        = 
        String name Boolean isAbstract String superClassName VarOrMethod varOrMethod+
 ;
syntax VarOrMethod
        = 
        ownerClass: Class
 ;
syntax Enumeration
        = 
        String name Enumerator enumerators+
 ;
syntax Enumerator
        = 
        String name Term value
 ;
syntax Function
        = 
        Main
 ;
syntax Method
        = 
        Boolean isAbstract Boolean isShared Boolean isEntryPoint Boolean isOverride Type returnType Parameter parameters+
 ;
syntax Parameter
        = 
        String name Type type Method ownerMethod
 ;
syntax Main
        = 
        AsmLFile mainFile Initially initialisations+
 ;
syntax Initially
        = 
        VarTerm id Term val
 ;
syntax Rule
        = SkipRule
        | Step
        | MethodInvocation
        | UpdateRule
        | ChooseRule
        | ForallRule
        | ConditionalRule
        | ReturnRule
        | AddRule
        | RemoveRule
 ;
syntax SkipRule
        = 
        ownerBody: Body
 ;
syntax Step
        = StepUntilFixPoint
        | StepExpression
        | StepForEach
 ;
syntax StepUntilFixPoint
        = 
        name: String
 ;
syntax StepExpression
        = StepWhile
        | StepUntil
 ;
syntax StepWhile
        = 
        expression: Term
 ;
syntax StepUntil
        = 
        expression: Term
 ;
syntax StepForEach
        = 
        InWhereHolds expressions+
 ;
syntax MethodInvocation
        = 
        called: MethodCallTerm
 ;
syntax UpdateRule
        = UpdateVarRule
        | UpdateFieldRule
        | UpdateMapRule
 ;
syntax UpdateVarRule
        = 
        updateVar: Term
 ;
syntax UpdateFieldRule
        = 
        path: VarTerm
 ;
syntax UpdateMapRule
        = 
        VarTerm updateMap Term parameters+
 ;
syntax ChooseRule
        = 
        InWhereHolds expressions+ Body ifChoosenRules Body ifNotChoosenRule
 ;
syntax ForallRule
        = 
        InWhereHolds expressions+ Body doRule
 ;
syntax ConditionalRule
        = ElseIf
        | Term condition Body thenRule Body elseRule ElseIf elseIfRule
 ;
syntax ElseIf
        = 
        ()
 ;
syntax ReturnRule
        = 
        term: Term
 ;
syntax AddRule
        = 
        Term val VarTerm set
 ;
syntax RemoveRule
        = 
        Term val VarTerm set
 ;
syntax Type
        = NamedType
        | MapType
        | TupletType
        | SetType
        | SequenceType
 ;
syntax NamedType
        = 
        name: String
 ;
syntax MapType
        = 
        Type ofType Type toType
 ;
syntax TupletType
        = 
        types: Type
 ;
syntax SetType
        = 
        of: Type
 ;
syntax SequenceType
        = 
        of: Type
 ;
syntax Term
        = VarTerm
        | Operator
        | MapTerm
        | TulpletTerm
        | MethodCallTerm
        | PredicateTerm
        | SetTerm
        | SequenceTerm
        | Constant
 ;
syntax VarTerm
        = 
        name: String
 ;
syntax Operator
        = 
        String opName Term leftExp Term rightExp
 ;
syntax MapTerm
        = 
        Term ofTerm Term toTerm String separator
 ;
syntax TulpletTerm
        = 
        terms: Term
 ;
syntax MethodCallTerm
        = NewInstance
        | String name Term parameters+
 ;
syntax NewInstance
        = 
        ()
 ;
syntax PredicateTerm
        = ForAllTerm
        | ExistsTerm
        | AnyIn
        | InWhereHolds expressions+
 ;
syntax ForAllTerm
        = 
        ()
 ;
syntax ExistsTerm
        = 
        isUnique: Boolean
 ;
syntax AnyIn
        = 
        ()
 ;
syntax SetTerm
        = EnumerateSet
        | RangeSet
        | AlgorithmSet
 ;
syntax EnumerateSet
        = 
        Term vals+
 ;
syntax RangeSet
        = 
        Term minval Term maxval
 ;
syntax AlgorithmSet
        = 
        InWhereHolds expressions+
 ;
syntax SequenceTerm
        = EnumerateSequence
        | RangeSequence
 ;
syntax EnumerateSequence
        = 
        Term vals+
 ;
syntax RangeSequence
        = 
        Term minval Term maxval
 ;
syntax Constant
        = BooleanConstant
        | IntegerConstant
        | StringConstant
        | NullConstant
 ;
syntax BooleanConstant
        = 
        val: Boolean
 ;
syntax IntegerConstant
        = 
        val: Integer
 ;
syntax StringConstant
        = 
        val: String
 ;
syntax NullConstant
        = 
        ()
 ;
