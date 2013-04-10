@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GAIA

syntax OrganizationalStructure
        = 
        Organization organization+
 ;
syntax Organization
        = 
        Organization collaborates Organization interacts AgentType member+ OrganizationalRule observes+
 ;
syntax OrganizationalRule
        = SafetyRule
        | LivenessRule
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
        Service provides+ AgentType collaborates AgentType agentType Role plays+
 ;
syntax Service
        = 
        String inputs String outputs String pre-conditions String post-conditions
 ;
syntax Role
        = 
        Activity activity+ Communication communication+ Responsibility responsibility+ AssociationConnector actsOn
 ;
syntax Activity
        = 
        ()
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
syntax AssociationConnector
        = 
        Resource actsOn+ Role role Permission permission+
 ;
syntax Permission
        = 
        association: AssociationConnector
 ;
syntax Resource
        = 
        String name String description Action permitted_action+ Environnement environnement
 ;
syntax Environnement
        = 
        Resource resource+
 ;
syntax Action
        = 
        type: String
 ;
syntax Communication
        = 
        OrganizationalRule observes+ Protocol protocol
 ;
syntax Protocol
        = 
        String name String initiator String partner String inputs String outputs String description
 ;
