@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GAIA

syntax OrganizationalStructure
        = 
        ANY organization+
 ;
syntax Organization
        = 
        ANY collaborates ANY interacts ANY member+ ANY observes+
 ;
syntax OrganizationalRule
        = 
        ()
 ;
syntax SafetyRule
        = 
        ()
 ;
syntax LivenessRule
        = 
        ()
 ;
syntax AgentType
        = 
        ANY provides+ ANY collaborates ANY agentType ANY plays+
 ;
syntax Service
        = 
        ANY inputs ANY outputs ANY pre-conditions ANY post-conditions
 ;
syntax Role
        = 
        ANY activity+ ANY communication+ ANY responsibility+ ANY actsOn
 ;
syntax Activity
        = 
        ()
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
syntax AssociationConnector
        = 
        ANY actsOn+ ANY role ANY permission+
 ;
syntax Permission
        = 
        association: ANY
 ;
syntax Resource
        = 
        ANY name ANY description ANY permitted_action+ ANY environnement
 ;
syntax Environnement
        = 
        ANY resource+
 ;
syntax Action
        = 
        type: ANY
 ;
syntax Communication
        = 
        ANY observes+ ANY protocol
 ;
syntax Protocol
        = 
        ANY name ANY initiator ANY partner ANY inputs ANY outputs ANY description
 ;
