@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module OpenQVT

syntax Variable
        = 
        ANY name ANY type ANY value ANY visibility ANY context
 ;
syntax Context
        = 
        ANY variables+ ANY rule
 ;
syntax Rule
        = 
        ANY context ANY subRule ANY superRule ANY services+
 ;
syntax RootRule
        = 
        ruleSet: ANY
 ;
syntax RuleSetCall
        = 
        ruleSet: ANY
 ;
syntax QARule
        = 
        ANY query ANY action
 ;
syntax RuleSet
        = 
        rootRule: ANY
 ;
syntax Service
        = 
        ANY visibility ANY signature ANY rule
 ;
syntax OCLService
        = 
        ()
 ;
syntax RTransService
        = 
        ()
 ;
syntax JavaService
        = 
        ()
 ;
syntax RulePart
        = 
        ()
 ;
syntax Action
        = 
        qARule: ANY
 ;
syntax RTransAction
        = 
        ()
 ;
syntax JavaAction
        = 
        ()
 ;
syntax Query
        = 
        qARule: ANY
 ;
syntax OCLFilter
        = 
        ()
 ;
syntax RTransQuery
        = 
        ()
 ;
syntax JavaQuery
        = 
        ()
 ;
syntax JavaFilter
        = 
        ()
 ;
