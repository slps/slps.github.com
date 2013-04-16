@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PRR

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Element
        = NamedElement
        | RuleSet
        | RuleAction
        | RuleCondition
        | Binding
        | OclExpression
        | VariableDeclaration
        | String location String commentsBefore+ String commentsAfter+
 ;
syntax NamedElement
        = Rule
        | OclType
 ;
syntax RuleSet
        = 
        Rule rules+
 ;
syntax Rule
        = 
        Binding binding RuleCondition condition RuleAction actions+ RuleSet ruleOwner
 ;
syntax RuleAction
        = DeleteAction
        | AssignAction
        | InvokeAction
        | CreateAction
        | actionOwner: Rule
 ;
syntax RuleCondition
        = 
        Rule ruleConditionOwner PRRExpressions/OclExpression conditionExp
 ;
syntax Binding
        = 
        Rule bindingOwner RuleVariable ruleVariable+
 ;
syntax RuleVariable
        = 
        Binding ruleVariableOwner PRRExpressions/OclExpression filter
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
