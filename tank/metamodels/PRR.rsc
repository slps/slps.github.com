@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PRR

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
