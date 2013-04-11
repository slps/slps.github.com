@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UEMLExtensionModelingAspects

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
        = 
        ResourceRole resourceRole+ Activity child+ Activity parent OutputPort hasOutput+ InputPort hasInput+ ActivityType activityType
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
        | ResourceFlow carries ResourceRole plays+ ResourceType resourceType
 ;
syntax MaterialResource
        = 
        ResourceFlow carries ResourceRole plays+ ResourceType resourceType
 ;
syntax HumanResource
        = 
        ResourceFlow carries ResourceRole plays+ ResourceType resourceType
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
        activity: Activity
 ;
syntax ConnectionOperator
        = 
        AssociationConnector target AssociationConnector origin
 ;
syntax AssociationConnector
        = 
        Anchor origin+ Anchor target+ Flow classAssociation
 ;
syntax ResourceType
        = 
        Resource resource+
 ;
syntax ActivityType
        = 
        Activity activityT+
 ;
