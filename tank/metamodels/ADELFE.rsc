@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ADELFE

syntax Classifier
        = 
        ()
 ;
syntax Environnement
        = 
        element: ANY
 ;
syntax Element
        = 
        ANY environnement ANY action ANY perception
 ;
syntax CooperativeAgent
        = 
        ANY elementA ANY elementP ANY representation+ ANY skill+ ANY aptitude+ ANY characteristic+ ANY communication+ ANY observes+
 ;
syntax Representation
        = 
        ANY cooperativeAgentR ANY element
 ;
syntax Skill
        = 
        cooperativeAgentS: ANY
 ;
syntax Aptitude
        = 
        cooperativeAgentA: ANY
 ;
syntax Characteristic
        = 
        cooperativeAgentCha: ANY
 ;
syntax Communication
        = 
        ANY cooperativeAgentCom ANY aip+
 ;
syntax AIP
        = 
        ()
 ;
syntax CooperationRules
        = 
        ANY detects+
 ;
syntax NCS
        = 
        cooperationRules: ANY
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
