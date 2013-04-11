@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MAS

syntax String
        = 
        String
 ;
syntax Agent
        = 
        Service service+ Non Functionnal Requirement non_Functionnal_Requirement+ Requirement requirement+ Organization belongs CooperationRules cooperationRules+ FIPA_Platform Agent fipa_Platform_Agent Role role Representation representation Characteristic characteristic Skill skill Aptitude aptitude
 ;
syntax Service
        = 
        String inputs String outputs String pre-conditions String post-conditions
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
        Organizational Structure observes+ Organizational Structure organizational_Structure
 ;
syntax Organizational Structure
        = SafetyRule
        | LivenessRule
        | Organization organization+
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
        ncs: NCS
 ;
syntax NCS
        = 
        cooperationRules: CooperationRules
 ;
syntax FIPA_Platform Agent
        = 
        Agent agentF FIPA_Platform Task fipa_Platform_Task+
 ;
syntax FIPA_Platform Task
        = 
        FIPA_Platform Agent fipa_Platform_AgentF Task task
 ;
syntax Task
        = 
        String name FIPA_Platform Task fipa_Platform_TaskT
 ;
syntax Role
        = 
        Agent agentR Task activity+ Resource actsOn+ Scenario scenario+ Communication participant+ Responsibility has+
 ;
syntax Representation
        = 
        Agent agentRep Ontology ontology Environnement environnement
 ;
syntax Characteristic
        = 
        agentC: Agent
 ;
syntax Skill
        = 
        agentS: Agent
 ;
syntax Aptitude
        = 
        agentA: Agent
 ;
syntax Ontology
        = Concept
        | Predicat
        | Action
        | environnement: Environnement
 ;
syntax Concept
        = 
        environnement: Environnement
 ;
syntax Predicat
        = 
        environnement: Environnement
 ;
syntax Action
        = 
        environnement: Environnement
 ;
syntax Environnement
        = 
        resource: Resource
 ;
syntax Responsibility
        = LivenessProperty
        | SafetyProperty
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
        String name Environnement environnement Action action
 ;
syntax Communication
        = 
        String name Ontology Exchanged Knoledge Scenario scenario+ AIP aip Message message+
 ;
syntax AIP
        = 
        String name Performative performative
 ;
syntax Performative
        = 
        aip: AIP
 ;
syntax Message
        = 
        Communication communication Performative Comm_Act
 ;
syntax Scenario
        = 
        ()
 ;
