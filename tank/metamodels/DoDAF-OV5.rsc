@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DoDAF_OV5

syntax Element
        = DoDAFModel
        | Document
        | AMSpecificationElement
        | PAExchangeRequirement
        | ArchitectureDocument
        | IE
        | AMIERole
        | InformationAssetDocument
        | AMPA
        | PACapability
        | PA
        | InformationAsset
        | Task
        | Organization
        | OrganizationType
        | OperationalRole
        | Occupation
        | PersonType
        | Skill
        | DOSCR
 ;
syntax DoDAFModel
        = 
        Document document+ AM am+ Task task+ InformationAssetDocument iaDocument+ AMSpecification amSpecification+ DOSCR doscr+ OrganizationType organizationType+
 ;
syntax Document
        = AMSpecification
        | String type InformationAssetDocument cites+ ArchitectureDocument records+ IE isTheReferenceFor+ PA isThePrimaryReferenceFor+
 ;
syntax AMSpecification
        = 
        AMSpecificationElement isSpecifiedUsing+
 ;
syntax AMSpecificationElement
        = 
        subject: PAExchangeRequirement
 ;
syntax PAExchangeRequirement
        = 
        AMSpecificationElement isTheSubjectOf+
 ;
syntax ArchitectureDocument
        = 
        String name String description String view
 ;
syntax IE
        = 
        AMIERole isAssociatedWith+ IE isOrdinateOf+ IE isSubordinateOf+
 ;
syntax AMIERole
        = Control
        | Input
        | Output
        | Mechanism
        | AMPA defines+
 ;
syntax Control
        = 
        String source String destination
 ;
syntax Input
        = 
        Output isTheInputThatIsDefinedBy+ String source String destination String information
 ;
syntax Output
        = 
        String source String destination String information
 ;
syntax Mechanism
        = MechanismSystem
        | MechanismReference
        | MechanismFacility
        | String source String destination String resourceType
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
        String name String description String view
 ;
syntax AMPA
        = 
        AMPA isOrdinateOf+ AMPA isSubordinateOf+ AMIERole defines+
 ;
syntax PACapability
        = 
        String name String description String view
 ;
syntax PA
        = 
        PAExchangeRequirement isTheProducerFor+ PAExchangeRequirement isTheConsumerFor+ PA isParentFor+ PA isChildFor+ PACapability has+ AMPA isIncludedIn+ PATask correspondsTo+
 ;
syntax AM
        = 
        String type AMSpecification specifies+ AMPA includes+ PATask paTask+
 ;
syntax InformationAsset
        = 
        AM
 ;
syntax Task
        = PATask
        | String levelIdentifier String references String cost
 ;
syntax PATask
        = 
        isCitedBy: InformationAsset
 ;
syntax Organization
        = 
        OrganizationType type InformationAsset supplies+ InformationAsset providesStewardshipFor+ InformationAsset owns+ IE develops+ MechanismReference isCitedAs+
 ;
syntax OrganizationType
        = 
        Organization isTheTypeOf+ MechanismReference isCitedAs+
 ;
syntax OperationalRole
        = 
        MechanismReference isCitedAs+
 ;
syntax Occupation
        = 
        OperationalRole mayBeCitedForOR+ PersonType mayBeCitedForPT+
 ;
syntax PersonType
        = 
        OperationalRole mayBeCitedFor+ Skill can+
 ;
syntax Skill
        = 
        OperationalRole mayBeCitedFor+
 ;
syntax DOSCR
        = 
        Occupation mayBeAn PersonType appliesTo+ OperationalRole mayBeCitedFor+
 ;
