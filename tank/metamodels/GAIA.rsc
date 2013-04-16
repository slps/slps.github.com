@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GAIA

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax String
        = 
        String
 ;
