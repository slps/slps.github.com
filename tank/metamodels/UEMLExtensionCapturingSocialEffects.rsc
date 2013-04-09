@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UEMLExtensionCapturingSocialEffects

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
        ANY resourceRole+ ANY parent ANY hasOutput
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
        ()
 ;
syntax ConnectionOperator
        = 
        ()
 ;
syntax AssociationConnector
        = 
        ANY origin+ ANY target+ ANY classAssociation
 ;
syntax Process
        = 
        ANY child ANY fulfills+ ANY realises
 ;
syntax Service
        = 
        process: ANY
 ;
syntax Agent
        = 
        ANY obliger ANY claimer ANY has_parties
 ;
syntax Contract
        = 
        ANY process+ ANY agent ANY collection_of+
 ;
syntax Task
        = 
        ANY fulfills+
 ;
syntax Commitment
        = 
        ANY task ANY agentO ANY agentC ANY contract
 ;
