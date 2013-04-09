@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PRR

syntax Element
        = 
        ANY location ANY commentsBefore+ ANY commentsAfter+
 ;
syntax NamedElement
        = 
        ()
 ;
syntax RuleSet
        = 
        ANY rules+
 ;
syntax Rule
        = 
        ANY binding ANY condition ANY actions+ ANY ruleOwner
 ;
syntax RuleAction
        = 
        actionOwner: ANY
 ;
syntax RuleCondition
        = 
        ANY ruleConditionOwner ANY conditionExp
 ;
syntax Binding
        = 
        ANY bindingOwner ANY ruleVariable+
 ;
syntax RuleVariable
        = 
        ANY ruleVariableOwner ANY filter
 ;
