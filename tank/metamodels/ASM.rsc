@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ASM

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax LocatedElement
        = XAsmFile
        | Asm
        | Signature
        | MetaInformation
        | AccessUpdateFunction
        | Declaration
        | Parameter
        | Initialization
        | Term
        | Rule
        | ElseIf
        | ElementDecl
        | Extension
 ;
syntax XAsmFile
        = XAsmSpec
        | Body
 ;
syntax XAsmSpec
        = 
        Asm Asm+
 ;
syntax Asm
        = 
        Signature signature String returnType MetaInformation metaInformation Body body
 ;
syntax Signature
        = 
        Boolean isMain String name Argument arguments+
 ;
syntax Argument
        = 
        type: String
 ;
syntax Body
        = 
        Declaration declarations+ Initialization initialization Rule rules+
 ;
syntax MetaInformation
        = 
        Signature usedAsIn+ AsmType usedAs AccessUpdateFunction accessUpdateFunctions+
 ;
syntax AccessUpdateFunction
        = 
        AccessUpdateType type Function functions+
 ;
syntax Declaration
        = Universe
        | Function
 ;
syntax Function
        = 
        Parameter parameters+ String returnType Term initTerm Boolean isExternal
 ;
syntax Parameter
        = 
        String name String type
 ;
syntax Universe
        = 
        String name String contents+ Universe superUniverses+
 ;
syntax Initialization
        = 
        Rule rules+
 ;
syntax Term
        = Constant
        | FunctionOrVariableTerm
        | OperatorTerm
 ;
syntax Constant
        = BooleanConstant
        | IntegerConstant
        | StringConstant
        | UndefConstant
 ;
syntax FunctionOrVariableTerm
        = 
        ElementDecl declaration Term terms+
 ;
syntax OperatorTerm
        = 
        String opName Term leftExp Term rightExp
 ;
syntax BooleanConstant
        = 
        value: Boolean
 ;
syntax IntegerConstant
        = 
        value: Integer
 ;
syntax StringConstant
        = 
        value: String
 ;
syntax UndefConstant
        = 
        ()
 ;
syntax Rule
        = SkipRule
        | AsmInvocation
        | UpdateRule
        | ChooseRule
        | DoForallRule
        | ConditionalRule
        | ExtendRule
        | ReturnRule
 ;
syntax SkipRule
        = 
        inSequence: Boolean
 ;
syntax AsmInvocation
        = 
        String asmName Term arguments+
 ;
syntax UpdateRule
        = 
        FunctionOrVariableTerm function Term updateTerm
 ;
syntax ChooseRule
        = 
        VariableDecl chooseId Universe inSet Term guard Rule ifChoosenRules+ Rule ifNotChoosenRule
 ;
syntax DoForallRule
        = 
        VariableDecl id Universe inSet Term condition Rule doRule+
 ;
syntax ConditionalRule
        = 
        Term condition Rule thenRule+ Rule elseRule ElseIf elseIfRule
 ;
syntax ElseIf
        = 
        Term condition Rule thenRule+ Rule elseRule ElseIf elseIfRule
 ;
syntax ExtendRule
        = 
        Extension extensions+ Rule rules+
 ;
syntax ElementDecl
        = VariableDecl
        | Function
 ;
syntax VariableDecl
        = 
        Argument
 ;
syntax Extension
        = 
        VariableDecl elements+ Universe universe
 ;
syntax ReturnRule
        = 
        term: Term
 ;
syntax AccessUpdateType
        = access: ()
        | update: ()
 ;
syntax AsmType
        = function: ()
        | subasm: ()
 ;
