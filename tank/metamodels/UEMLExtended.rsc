@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UEMLExtended

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax UEMLObject
        = UEMLModel
        | Port
        | Flow
        | Object
        | Activity
        | Geometry has UEMLModel model
 ;
syntax UEMLModel
        = 
        UEMLObject contains+
 ;
syntax Geometry
        = 
        object: UEMLObject
 ;
syntax Port
        = ResourceRole
        | Anchor
 ;
syntax Flow
        = ResourceFlow
        | IOFlow
        | ControlFlow
        | associationConnector: AssociationConnector
 ;
syntax Activity
        = Process
        | Task
        | ResourceRole resourceRole+ Process parent OutputPort hasOutput+ InputPort hasInput+ ActivityType activityType
 ;
syntax Object
        = InformationObject
        | Resource
        | ioFlow: IOFlow
 ;
syntax InformationObject
        = 
        controlFlow: ControlFlow
 ;
syntax Resource
        = PassiveObject
        | Service
        | Agent
        | ResourceFlow carries ResourceRole plays+ ResourceType resourceType Commitment commitment+
 ;
syntax MaterialResource
        = 
        ()
 ;
syntax HumanResource
        = 
        Commitment obliger Commitment claimer Contract has_parties
 ;
syntax ResourceFlow
        = 
        Resource resourceCarries+
 ;
syntax IOFlow
        = 
        Object carries+
 ;
syntax ControlFlow
        = TriggerFlow
        | ConstraintFlow
        | InformationObject carries+
 ;
syntax TriggerFlow
        = 
        InformationObject carries+
 ;
syntax ConstraintFlow
        = 
        InformationObject carries+
 ;
syntax ResourceRole
        = 
        Resource resourcePlays+ RoleType roleQualifier Activity in
 ;
syntax RoleType
        = 
        ()
 ;
syntax Anchor
        = ConnectionOperator
        | OutputPort
        | InputPort
 ;
syntax OutputPort
        = 
        activity: Activity
 ;
syntax InputPort
        = 
        activity: Activity
 ;
syntax ConnectionOperator
        = 
        AssociationConnector target AssociationConnector origin
 ;
syntax AssociationConnector
        = 
        FlowObject origin+ FlowObject target+ Flow classAssociation
 ;
syntax FlowObject
        = Event
        | Activity
        | ConnectionOperator
        | AssociationConnector target AssociationConnector origin
 ;
syntax Event
        = 
        AssociationConnector target AssociationConnector origin
 ;
syntax ResourceType
        = 
        Resource resource+
 ;
syntax ActivityType
        = 
        Activity activityT+
 ;
syntax PassiveObject
        = MaterialResource
        | Commitment
        | Contract
 ;
syntax Commitment
        = 
        Resource resource+ Task task Agent agentO Agent agentC Contract contract
 ;
syntax Software
        = 
        Commitment obliger Commitment claimer Contract has_parties
 ;
syntax Organisation
        = 
        Commitment obliger Commitment claimer Contract has_parties
 ;
syntax Process
        = 
        Activity child Contract fulfills+ Service realises
 ;
syntax Service
        = 
        process: Process
 ;
syntax Agent
        = HumanResource
        | Software
        | Organisation
        | Commitment obliger Commitment claimer Contract has_parties
 ;
syntax Contract
        = 
        Process process+ Agent agent Commitment collection_of+
 ;
syntax Task
        = 
        Commitment fulfills+
 ;
