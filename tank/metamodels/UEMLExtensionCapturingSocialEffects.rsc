@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UEMLExtensionCapturingSocialEffects

syntax UEMLObject
        = UEMLModel
        | Port
        | Flow
        | Activity
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
        | ResourceRole resourceRole+ Process parent OutputPort hasOutput
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
        = MaterialResource
        | HumanResource
        | Service
        | Agent
        | ResourceFlow carries ResourceRole plays+
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
        | ConnectionOperator
        | AssociationConnector target AssociationConnector origin
 ;
syntax OutputPort
        = 
        activity: Activity
 ;
syntax InputPort
        = 
        ()
 ;
syntax ConnectionOperator
        = 
        ()
 ;
syntax AssociationConnector
        = 
        Anchor origin+ Anchor target+ Flow classAssociation
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
        = 
        Commitment obliger Commitment claimer Contract has_parties
 ;
syntax Contract
        = 
        Process process+ Agent agent Commitment collection_of+
 ;
syntax Task
        = 
        Commitment fulfills+
 ;
syntax Commitment
        = 
        Task task Agent agentO Agent agentC Contract contract
 ;
