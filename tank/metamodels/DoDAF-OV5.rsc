@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DoDAF_OV5

syntax Element
        = 
        ()
 ;
syntax DoDAFModel
        = 
        ANY document+ ANY am+ ANY task+ ANY iaDocument+ ANY amSpecification+ ANY doscr+ ANY organizationType+
 ;
syntax Document
        = 
        ANY type ANY cites+ ANY records+ ANY isTheReferenceFor+ ANY isThePrimaryReferenceFor+
 ;
syntax AMSpecification
        = 
        ANY isSpecifiedUsing+
 ;
syntax AMSpecificationElement
        = 
        subject: ANY
 ;
syntax PAExchangeRequirement
        = 
        ANY isTheSubjectOf+
 ;
syntax ArchitectureDocument
        = 
        ANY name ANY description ANY view
 ;
syntax IE
        = 
        ANY isAssociatedWith+ ANY isOrdinateOf+ ANY isSubordinateOf+
 ;
syntax AMIERole
        = 
        ANY defines+
 ;
syntax Control
        = 
        ANY source ANY destination
 ;
syntax Input
        = 
        ANY isTheInputThatIsDefinedBy+ ANY source ANY destination ANY information
 ;
syntax Output
        = 
        ANY source ANY destination ANY information
 ;
syntax Mechanism
        = 
        ANY source ANY destination ANY resourceType
 ;
syntax MechanismSystem
        = 
        ()
 ;
syntax MechanismReference
        = 
        ()
 ;
syntax MechanismFacility
        = 
        ()
 ;
syntax InformationAssetDocument
        = 
        ANY name ANY description ANY view
 ;
syntax AMPA
        = 
        ANY isOrdinateOf+ ANY isSubordinateOf+ ANY defines+
 ;
syntax PACapability
        = 
        ANY name ANY description ANY view
 ;
syntax PA
        = 
        ANY isTheProducerFor+ ANY isTheConsumerFor+ ANY isParentFor+ ANY isChildFor+ ANY has+ ANY isIncludedIn+ ANY correspondsTo+
 ;
syntax AM
        = 
        ANY type ANY specifies+ ANY includes+ ANY paTask+
 ;
syntax InformationAsset
        = 
        ()
 ;
syntax Task
        = 
        ANY levelIdentifier ANY references ANY cost
 ;
syntax PATask
        = 
        isCitedBy: ANY
 ;
syntax Organization
        = 
        ANY type ANY supplies+ ANY providesStewardshipFor+ ANY owns+ ANY develops+ ANY isCitedAs+
 ;
syntax OrganizationType
        = 
        ANY isTheTypeOf+ ANY isCitedAs+
 ;
syntax OperationalRole
        = 
        ANY isCitedAs+
 ;
syntax Occupation
        = 
        ANY mayBeCitedForOR+ ANY mayBeCitedForPT+
 ;
syntax PersonType
        = 
        ANY mayBeCitedFor+ ANY can+
 ;
syntax Skill
        = 
        ANY mayBeCitedFor+
 ;
syntax DOSCR
        = 
        ANY mayBeAn ANY appliesTo+ ANY mayBeCitedFor+
 ;
