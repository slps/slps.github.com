@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module AsmL

syntax LocatedElement
        = 
        ()
 ;
syntax Body
        = 
        ANY rules+
 ;
syntax InWhereHolds
        = 
        ANY var ANY in ANY where ANY holds
 ;
syntax AsmLFile
        = 
        ANY elements+ ANY main
 ;
syntax AsmLElement
        = 
        ()
 ;
syntax VarDeclaration
        = 
        ANY isConstant ANY isDeclaration ANY isLocal ANY name ANY type
 ;
syntax Namespace
        = 
        name: ANY
 ;
syntax Structure
        = 
        ANY name ANY varOrCase+ ANY superStructureName
 ;
syntax VarOrCase
        = 
        ()
 ;
syntax Case
        = 
        ANY name ANY variables+
 ;
syntax Class
        = 
        ANY name ANY isAbstract ANY superClassName ANY varOrMethod+
 ;
syntax VarOrMethod
        = 
        ownerClass: ANY
 ;
syntax Enumeration
        = 
        ANY name ANY enumerators+
 ;
syntax Enumerator
        = 
        ANY name ANY value
 ;
syntax Function
        = 
        ()
 ;
syntax Method
        = 
        ANY isAbstract ANY isShared ANY isEntryPoint ANY isOverride ANY returnType ANY parameters+
 ;
syntax Parameter
        = 
        ANY name ANY type ANY ownerMethod
 ;
syntax Main
        = 
        ANY mainFile ANY initialisations+
 ;
syntax Initially
        = 
        ANY id ANY val
 ;
syntax Rule
        = 
        ()
 ;
syntax SkipRule
        = 
        ANY ownerBody
 ;
syntax Step
        = 
        ()
 ;
syntax StepUntilFixPoint
        = 
        ANY name
 ;
syntax StepExpression
        = 
        ()
 ;
syntax StepWhile
        = 
        ANY expression
 ;
syntax StepUntil
        = 
        ANY expression
 ;
syntax StepForEach
        = 
        ANY expressions+
 ;
syntax MethodInvocation
        = 
        called: ANY
 ;
syntax UpdateRule
        = 
        ()
 ;
syntax UpdateVarRule
        = 
        updateVar: ANY
 ;
syntax UpdateFieldRule
        = 
        path: ANY
 ;
syntax UpdateMapRule
        = 
        ANY updateMap ANY parameters+
 ;
syntax ChooseRule
        = 
        ANY expressions+ ANY ifChoosenRules ANY ifNotChoosenRule
 ;
syntax ForallRule
        = 
        ANY expressions+ ANY doRule
 ;
syntax ConditionalRule
        = 
        ANY condition ANY thenRule ANY elseRule ANY elseIfRule
 ;
syntax ElseIf
        = 
        ()
 ;
syntax ReturnRule
        = 
        term: ANY
 ;
syntax AddRule
        = 
        ANY val ANY set
 ;
syntax RemoveRule
        = 
        ANY val ANY set
 ;
syntax Type
        = 
        ()
 ;
syntax NamedType
        = 
        name: ANY
 ;
syntax MapType
        = 
        ANY ofType ANY toType
 ;
syntax TupletType
        = 
        types: ANY
 ;
syntax SetType
        = 
        of: ANY
 ;
syntax SequenceType
        = 
        of: ANY
 ;
syntax Term
        = 
        ()
 ;
syntax VarTerm
        = 
        name: ANY
 ;
syntax Operator
        = 
        ANY opName ANY leftExp ANY rightExp
 ;
syntax MapTerm
        = 
        ANY ofTerm ANY toTerm ANY separator
 ;
syntax TulpletTerm
        = 
        terms: ANY
 ;
syntax MethodCallTerm
        = 
        ANY name ANY parameters+
 ;
syntax NewInstance
        = 
        ()
 ;
syntax PredicateTerm
        = 
        ANY expressions+
 ;
syntax ForAllTerm
        = 
        ()
 ;
syntax ExistsTerm
        = 
        isUnique: ANY
 ;
syntax AnyIn
        = 
        ()
 ;
syntax SetTerm
        = 
        ()
 ;
syntax EnumerateSet
        = 
        ANY vals+
 ;
syntax RangeSet
        = 
        ANY minval ANY maxval
 ;
syntax AlgorithmSet
        = 
        ANY expressions+
 ;
syntax SequenceTerm
        = 
        ()
 ;
syntax EnumerateSequence
        = 
        ANY vals+
 ;
syntax RangeSequence
        = 
        ANY minval ANY maxval
 ;
syntax Constant
        = 
        ()
 ;
syntax BooleanConstant
        = 
        val: ANY
 ;
syntax IntegerConstant
        = 
        val: ANY
 ;
syntax StringConstant
        = 
        val: ANY
 ;
syntax NullConstant
        = 
        
 ;
