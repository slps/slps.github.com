@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Jess

syntax LocatedElement
        = 
        ()
 ;
syntax Root
        = 
        ANY expressions+
 ;
syntax Expression
        = 
        ()
 ;
syntax Integ
        = 
        val: ANY
 ;
syntax Floa
        = 
        val: ANY
 ;
syntax Str
        = 
        val: ANY
 ;
syntax Ident
        = 
        ()
 ;
syntax ValidIdentifier
        = 
        val: ANY
 ;
syntax SlotName
        = 
        val: ANY
 ;
syntax JessVariable
        = 
        val: ANY
 ;
syntax TemplateExpression
        = 
        ANY templateName ANY firstSlot ANY slotOp+
 ;
syntax SlotOp
        = 
        ANY slotIdent ANY operator ANY exp
 ;
syntax DefinitionExp
        = 
        ()
 ;
syntax GlobalDefinition
        = 
        ANY varDef+
 ;
syntax VarDefinition
        = 
        ANY jessVar ANY eq ANY expression
 ;
syntax FunctionDefinition
        = 
        ANY funcName ANY parameters+ ANY expressions+
 ;
syntax AdviceDefinition
        = 
        ANY direction ANY op ANY advice+
 ;
syntax UnDefAdvice
        = 
        op: ANY
 ;
syntax FactDefinition
        = 
        ANY factName ANY documentation ANY fact+
 ;
syntax RuleDefinition
        = 
        ANY ruleName ANY documentation ANY declare ANY conditions+ ANY functionCall+
 ;
syntax DeclareRule
        = 
        ANY salience ANY nodeIndexHash ANY autoFocus ANY noLoop
 ;
syntax ModuleDefinition
        = 
        ANY moduleName ANY documentation
 ;
syntax QueryDefinition
        = 
        ANY queryName ANY documentation ANY declare ANY expressions+
 ;
syntax DeclareVar
        = 
        ANY var+ ANY node ANY max
 ;
syntax TemplateDefinition
        = 
        ANY templateName ANY inherits+ ANY documentation ANY declareBloc ANY slotDef+
 ;
syntax DeclareBloc
        = 
        ANY slotSpecific ANY backchainReaction ANY fromClass ANY includeVariable ANY order
 ;
syntax ASlotDef
        = 
        ANY slotName ANY optionals+
 ;
syntax SlotDef
        = 
        ()
 ;
syntax MultiSlotDef
        = 
        ()
 ;
syntax SlotOptions
        = 
        ANY type ANY def ANY defaultDyn ANY allowedValues+
 ;
syntax UseFuncExp
        = 
        ()
 ;
syntax WhileExp
        = 
        ANY hasDo ANY boolExp ANY actions+
 ;
syntax ForExp
        = 
        ANY initializer ANY condition ANY increment ANY expressions+
 ;
syntax ForeachExp
        = 
        ANY var ANY list ANY expressions+
 ;
syntax FuncCall
        = 
        ANY funcName ANY funcParam+
 ;
syntax EngineExp
        = 
        
 ;
syntax ExitExp
        = 
        
 ;
syntax IfExpression
        = 
        ANY ifthen ANY elifthen+ ANY else+
 ;
syntax ConditionAction
        = 
        ANY condition ANY actions+
 ;
syntax ElifConditionAction
        = 
        condAct: ANY
 ;
syntax Advice
        = before: ()
        | after: ()
 ;
