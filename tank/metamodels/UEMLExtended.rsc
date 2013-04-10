@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UEMLExtended

syntax UEMLObject
        = UEMLModel
        | Port
        | Flow
        | Object
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
        ()
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
        ()
 ;
syntax ConstraintFlow
        = 
        ()
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
        = OutputPort
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
        ()
 ;
syntax AssociationConnector
        = 
        FlowObject origin+ FlowObject target+ Flow classAssociation
 ;
syntax FlowObject
        = Event
        | AssociationConnector target AssociationConnector origin
 ;
syntax Event
        = 
        ()
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
        ()
 ;
syntax Organisation
        = 
        ()
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
