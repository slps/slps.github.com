@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UEMLExtensionDynamicAspects

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
        = Task
        | ResourceRole resourceRole+ Process parent OutputPort hasOutput+ InputPort hasInput+
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
syntax Task
        = 
        ()
 ;
syntax FlowObject
        = Event
        | AssociationConnector target AssociationConnector origin
 ;
syntax Event
        = 
        ()
 ;
syntax Process
        = 
        Activity child+
 ;
