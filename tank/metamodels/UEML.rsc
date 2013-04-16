@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UEML

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        ResourceRole resourceRole+ Activity child+ Activity parent OutputPort hasOutput+ InputPort hasInput+
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
        ResourceFlow carries ResourceRole plays+
 ;
syntax HumanResource
        = 
        ResourceFlow carries ResourceRole plays+
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
