@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Jess

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = Root
        | Expression
        | SlotOp
        | VarDefinition
        | DeclareRule
        | DeclareVar
        | DeclareBloc
        | ASlotDef
        | SlotOptions
        | ConditionAction
        | ElifConditionAction
 ;
syntax Root
        = 
        Expression expressions+
 ;
syntax Expression
        = Integ
        | Floa
        | Str
        | Ident
        | TemplateExpression
        | DefinitionExp
        | UseFuncExp
 ;
syntax Integ
        = 
        val: Integer
 ;
syntax Floa
        = 
        val: Double
 ;
syntax Str
        = 
        val: String
 ;
syntax Ident
        = ValidIdentifier
        | SlotName
        | JessVariable
 ;
syntax ValidIdentifier
        = 
        val: String
 ;
syntax SlotName
        = 
        val: String
 ;
syntax JessVariable
        = 
        val: String
 ;
syntax TemplateExpression
        = 
        ValidIdentifier templateName SlotOp firstSlot SlotOp slotOp+
 ;
syntax SlotOp
        = 
        SlotName slotIdent ValidIdentifier operator Expression exp
 ;
syntax DefinitionExp
        = GlobalDefinition
        | FunctionDefinition
        | AdviceDefinition
        | UnDefAdvice
        | FactDefinition
        | RuleDefinition
        | ModuleDefinition
        | QueryDefinition
        | TemplateDefinition
 ;
syntax GlobalDefinition
        = 
        VarDefinition varDef+
 ;
syntax VarDefinition
        = 
        JessVariable jessVar ValidIdentifier eq Expression expression
 ;
syntax FunctionDefinition
        = 
        ValidIdentifier funcName JessVariable parameters+ Expression expressions+
 ;
syntax AdviceDefinition
        = 
        Advice direction Ident op Expression advice+
 ;
syntax UnDefAdvice
        = 
        op: Expression
 ;
syntax FactDefinition
        = 
        ValidIdentifier factName Str documentation Expression fact+
 ;
syntax RuleDefinition
        = 
        ValidIdentifier ruleName Str documentation DeclareRule declare Expression conditions+ UseFuncExp functionCall+
 ;
syntax DeclareRule
        = 
        Expression salience Expression nodeIndexHash ValidIdentifier autoFocus ValidIdentifier noLoop
 ;
syntax ModuleDefinition
        = 
        ValidIdentifier moduleName Str documentation
 ;
syntax QueryDefinition
        = 
        ValidIdentifier queryName Str documentation DeclareVar declare Expression expressions+
 ;
syntax DeclareVar
        = 
        JessVariable var+ Expression node Expression max
 ;
syntax TemplateDefinition
        = 
        ValidIdentifier templateName ValidIdentifier inherits+ Str documentation DeclareBloc declareBloc ASlotDef slotDef+
 ;
syntax DeclareBloc
        = 
        ValidIdentifier slotSpecific ValidIdentifier backchainReaction ValidIdentifier fromClass ValidIdentifier includeVariable ValidIdentifier order
 ;
syntax ASlotDef
        = SlotDef
        | MultiSlotDef
        | SlotName slotName SlotOptions optionals+
 ;
syntax SlotDef
        = 
        SlotName slotName SlotOptions optionals+
 ;
syntax MultiSlotDef
        = 
        SlotName slotName SlotOptions optionals+
 ;
syntax SlotOptions
        = 
        ValidIdentifier type Expression def Expression defaultDyn Expression allowedValues+
 ;
syntax UseFuncExp
        = WhileExp
        | ForExp
        | ForeachExp
        | FuncCall
        | EngineExp
        | ExitExp
        | IfExpression
 ;
syntax WhileExp
        = 
        Boolean hasDo Expression boolExp Expression actions+
 ;
syntax ForExp
        = 
        Expression initializer Expression condition Expression increment Expression expressions+
 ;
syntax ForeachExp
        = 
        JessVariable var Expression list Expression expressions+
 ;
syntax FuncCall
        = 
        ValidIdentifier funcName Expression funcParam+
 ;
syntax EngineExp
        = 
        ()
 ;
syntax ExitExp
        = 
        ()
 ;
syntax IfExpression
        = 
        ConditionAction ifthen ElifConditionAction elifthen+ Expression else+
 ;
syntax ConditionAction
        = 
        Expression condition Expression actions+
 ;
syntax ElifConditionAction
        = 
        condAct: ConditionAction
 ;
syntax Advice
        = before: ()
        | after: ()
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
