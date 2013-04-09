@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ASM

syntax LocatedElement
        = 
        ()
 ;
syntax XAsmFile
        = 
        ()
 ;
syntax XAsmSpec
        = 
        ANY Asm+
 ;
syntax Asm
        = 
        ANY signature ANY returnType ANY metaInformation ANY body
 ;
syntax Signature
        = 
        ANY isMain ANY name ANY arguments+
 ;
syntax Argument
        = 
        type: ANY
 ;
syntax Body
        = 
        ANY declarations+ ANY initialization ANY rules+
 ;
syntax MetaInformation
        = 
        ANY usedAsIn+ ANY usedAs ANY accessUpdateFunctions+
 ;
syntax AccessUpdateFunction
        = 
        ANY type ANY functions+
 ;
syntax Declaration
        = 
        ()
 ;
syntax Function
        = 
        ANY parameters+ ANY returnType ANY initTerm ANY isExternal
 ;
syntax Parameter
        = 
        ANY name ANY type
 ;
syntax Universe
        = 
        ANY name ANY contents+ ANY superUniverses+
 ;
syntax Initialization
        = 
        ANY rules+
 ;
syntax Term
        = 
        ()
 ;
syntax Constant
        = 
        ()
 ;
syntax FunctionOrVariableTerm
        = 
        ANY declaration ANY terms+
 ;
syntax OperatorTerm
        = 
        ANY opName ANY leftExp ANY rightExp
 ;
syntax BooleanConstant
        = 
        value: ANY
 ;
syntax IntegerConstant
        = 
        value: ANY
 ;
syntax StringConstant
        = 
        value: ANY
 ;
syntax UndefConstant
        = 
        
 ;
syntax Rule
        = 
        ()
 ;
syntax SkipRule
        = 
        ANY inSequence
 ;
syntax AsmInvocation
        = 
        ANY asmName ANY arguments+
 ;
syntax UpdateRule
        = 
        ANY function ANY updateTerm
 ;
syntax ChooseRule
        = 
        ANY chooseId ANY inSet ANY guard ANY ifChoosenRules+ ANY ifNotChoosenRule
 ;
syntax DoForallRule
        = 
        ANY id ANY inSet ANY condition ANY doRule+
 ;
syntax ConditionalRule
        = 
        ANY condition ANY thenRule+ ANY elseRule ANY elseIfRule
 ;
syntax ElseIf
        = 
        ANY condition ANY thenRule+ ANY elseRule ANY elseIfRule
 ;
syntax ExtendRule
        = 
        ANY extensions+ ANY rules+
 ;
syntax ElementDecl
        = 
        ()
 ;
syntax VariableDecl
        = 
        ANY name
 ;
syntax Extension
        = 
        ANY elements+ ANY universe
 ;
syntax ReturnRule
        = 
        term: ANY
 ;
syntax AccessUpdateType
        = access: ()
        | update: ()
 ;
syntax AsmType
        = function: ()
        | subasm: ()
 ;
