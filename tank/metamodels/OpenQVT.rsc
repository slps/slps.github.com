@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module OpenQVT

syntax Variable
        = 
        String name String type String value String visibility Context context
 ;
syntax Context
        = 
        Variable variables+ Rule rule
 ;
syntax Rule
        = RootRule
        | RuleSetCall
        | QARule
        | Context context Rule subRule Rule superRule Service services+
 ;
syntax RootRule
        = 
        ruleSet: RuleSet
 ;
syntax RuleSetCall
        = 
        ruleSet: RuleSet
 ;
syntax QARule
        = 
        Query query Action action
 ;
syntax RuleSet
        = 
        rootRule: RootRule
 ;
syntax Service
        = OCLService
        | RTransService
        | JavaService
        | String visibility String signature Rule rule
 ;
syntax OCLService
        = 
        String visibility String signature Rule rule
 ;
syntax RTransService
        = 
        String visibility String signature Rule rule
 ;
syntax JavaService
        = 
        String visibility String signature Rule rule
 ;
syntax RulePart
        = Action
        | Query
 ;
syntax Action
        = RTransAction
        | JavaAction
        | qARule: QARule
 ;
syntax RTransAction
        = 
        qARule: QARule
 ;
syntax JavaAction
        = 
        qARule: QARule
 ;
syntax Query
        = OCLFilter
        | RTransQuery
        | JavaQuery
        | JavaFilter
        | qARule: QARule
 ;
syntax OCLFilter
        = 
        qARule: QARule
 ;
syntax RTransQuery
        = 
        qARule: QARule
 ;
syntax JavaQuery
        = 
        qARule: QARule
 ;
syntax JavaFilter
        = 
        qARule: QARule
 ;
syntax String
        = 
        String
 ;
