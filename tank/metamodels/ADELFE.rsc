@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ADELFE

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        cooperationRules: CooperationRules
 ;
syntax Ambiguity
        = 
        cooperationRules: CooperationRules
 ;
syntax Incompetence
        = 
        cooperationRules: CooperationRules
 ;
syntax Unproductiveness
        = 
        cooperationRules: CooperationRules
 ;
syntax Concurrency
        = 
        cooperationRules: CooperationRules
 ;
syntax Conflict
        = 
        cooperationRules: CooperationRules
 ;
syntax Uselessness
        = 
        cooperationRules: CooperationRules
 ;
