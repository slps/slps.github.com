@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UEML

syntax UEMLObject
        = 
        ANY has ANY model
 ;
syntax UEMLModel
        = 
        ANY contains+
 ;
syntax Geometry
        = 
        object: ANY
 ;
syntax Port
        = 
        ()
 ;
syntax Flow
        = 
        associationConnector: ANY
 ;
syntax Activity
        = 
        ANY resourceRole+ ANY child+ ANY parent ANY hasOutput+ ANY hasInput+
 ;
syntax Object
        = 
        ioFlow: ANY
 ;
syntax InformationObject
        = 
        controlFlow: ANY
 ;
syntax Resource
        = 
        ANY carries ANY plays+
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
        ANY resourceCarries+
 ;
syntax IOFlow
        = 
        ANY carries+
 ;
syntax ControlFlow
        = 
        ANY carries+
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
        ANY resourcePlays+ ANY roleQualifier ANY in
 ;
syntax RoleType
        = 
        ()
 ;
syntax Anchor
        = 
        ANY target ANY origin
 ;
syntax OutputPort
        = 
        activity: ANY
 ;
syntax InputPort
        = 
        activity: ANY
 ;
syntax ConnectionOperator
        = 
        ()
 ;
syntax AssociationConnector
        = 
        ANY origin+ ANY target+ ANY classAssociation
 ;
