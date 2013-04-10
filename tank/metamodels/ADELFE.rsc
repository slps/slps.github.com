@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ADELFE

syntax Classifier
        = Environnement
        | Element
 ;
syntax Environnement
        = 
        element: Element
 ;
syntax Element
        = 
        Environnement environnement CooperativeAgent action CooperativeAgent perception
 ;
syntax CooperativeAgent
        = 
        Element elementA Element elementP Representation representation+ Skill skill+ Aptitude aptitude+ Characteristic characteristic+ Communication communication+ CooperationRules observes+
 ;
syntax Representation
        = 
        CooperativeAgent cooperativeAgentR Element element
 ;
syntax Skill
        = 
        cooperativeAgentS: CooperativeAgent
 ;
syntax Aptitude
        = 
        cooperativeAgentA: CooperativeAgent
 ;
syntax Characteristic
        = 
        cooperativeAgentCha: CooperativeAgent
 ;
syntax Communication
        = 
        CooperativeAgent cooperativeAgentCom AIP aip+
 ;
syntax AIP
        = 
        ()
 ;
syntax CooperationRules
        = 
        NCS detects+
 ;
syntax NCS
        = Incomprehension
        | Ambiguity
        | Incompetence
        | Unproductiveness
        | Concurrency
        | Conflict
        | Uselessness
        | cooperationRules: CooperationRules
 ;
syntax Incomprehension
        = 
        ()
 ;
syntax Ambiguity
        = 
        ()
 ;
syntax Incompetence
        = 
        ()
 ;
syntax Unproductiveness
        = 
        ()
 ;
syntax Concurrency
        = 
        ()
 ;
syntax Conflict
        = 
        ()
 ;
syntax Uselessness
        = 
        ()
 ;
