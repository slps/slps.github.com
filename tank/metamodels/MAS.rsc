@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MAS

syntax Agent
        = 
        ANY service+ ANY non_Functionnal_Requirement+ ANY requirement+ ANY belongs ANY cooperationRules+ ANY fipa_Platform_Agent ANY role ANY representation ANY characteristic ANY skill ANY aptitude
 ;
syntax Service
        = 
        ANY inputs ANY outputs ANY pre-conditions ANY post-conditions
 ;
syntax Non Functionnal Requirement
        = 
        ()
 ;
syntax Requirement
        = 
        ()
 ;
syntax Organization
        = 
        ANY observes+ ANY organizational_Structure
 ;
syntax Organizational Structure
        = 
        ANY organization+
 ;
syntax SafetyRule
        = 
        ()
 ;
syntax LivenessRule
        = 
        ()
 ;
syntax CooperationRules
        = 
        ncs: ANY
 ;
syntax NCS
        = 
        cooperationRules: ANY
 ;
syntax FIPA_Platform Agent
        = 
        ANY agentF ANY fipa_Platform_Task+
 ;
syntax FIPA_Platform Task
        = 
        ANY fipa_Platform_AgentF ANY task
 ;
syntax Task
        = 
        ANY name ANY fipa_Platform_TaskT
 ;
syntax Role
        = 
        ANY agentR ANY activity+ ANY actsOn+ ANY scenario+ ANY participant+ ANY has+
 ;
syntax Representation
        = 
        ANY agentRep ANY ontology ANY environnement
 ;
syntax Characteristic
        = 
        agentC: ANY
 ;
syntax Skill
        = 
        agentS: ANY
 ;
syntax Aptitude
        = 
        agentA: ANY
 ;
syntax Ontology
        = 
        environnement: ANY
 ;
syntax Concept
        = 
        ()
 ;
syntax Predicat
        = 
        ()
 ;
syntax Action
        = 
        ()
 ;
syntax Environnement
        = 
        resource: ANY
 ;
syntax Responsibility
        = 
        ()
 ;
syntax LivenessProperty
        = 
        ()
 ;
syntax SafetyProperty
        = 
        ()
 ;
syntax Resource
        = 
        ANY name ANY environnement ANY action
 ;
syntax Communication
        = 
        ANY name ANY Exchanged Knoledge ANY scenario+ ANY aip ANY message+
 ;
syntax AIP
        = 
        ANY name ANY performative
 ;
syntax Performative
        = 
        aip: ANY
 ;
syntax Message
        = 
        ANY communication ANY Comm_Act
 ;
syntax Scenario
        = 
        ()
 ;
