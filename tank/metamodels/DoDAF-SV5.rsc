@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DoDAF_SV5

syntax Element
        = 
        ()
 ;
syntax DoDAFModel
        = 
        ANY document+ ANY sftm+ ANY sd+ ANY am+ ANY system+ ANY task+ ANY capability+ ANY capabilityDocument+ ANY systemCapability+
 ;
syntax Document
        = 
        ANY type ANY cites+ ANY describes+ ANY records+ ANY isThePrimaryReferenceFor+
 ;
syntax SystemFunctionTraceabilityMatrix
        = 
        ANY isDefinedBy+
 ;
syntax SystemFunctionTraceabilityElement
        = 
        ANY systemFunction ANY operationalActivity ANY systemProcessActivity ANY system ANY capability ANY supportStatusCode
 ;
syntax SystemDocument
        = 
        ANY name ANY description ANY view
 ;
syntax ArchitectureDocument
        = 
        ANY name ANY description ANY view
 ;
syntax PA
        = 
        ANY isParentFor+ ANY isChildFor+ ANY correspondsTo+ ANY isIncludedIn+ ANY isAssignedTo+ ANY isSupportedBy+ ANY isTheConsumerFor+ ANY isTheProducerFor+
 ;
syntax SystemFunction
        = 
        ANY isCitedFor+
 ;
syntax SystemPA
        = 
        ANY mayBeCitedFor+ ANY provides+ ANY enables+
 ;
syntax SoftwareApplicationProcedurePA
        = 
        ANY name ANY description ANY view
 ;
syntax AM
        = 
        ANY type ANY isCitedBy+ ANY includes+
 ;
syntax InformationAsset
        = 
        ()
 ;
syntax AMPA
        = 
        ANY isOrdinateOf+ ANY isSubordinateOf+
 ;
syntax System
        = 
        ANY isDesignedToProvide+ ANY isDescribedBy+ ANY performs+ ANY isUsedToAccomplish+
 ;
syntax Task
        = 
        ANY levelIdentifier ANY references ANY cost ANY correspondsTo+ ANY isSupportedBy+ ANY isTheSourceOfNeedFor+ ANY isTheDestinationOfNeedFor+ ANY isCitedFor+
 ;
syntax ArchitectureTask
        = 
        ANY name ANY description ANY view
 ;
syntax OperationalCapabilityTask
        = 
        isAccomplishedA: ANY
 ;
syntax SystemOperationalCapabilityTask
        = 
        ()
 ;
syntax PATask
        = 
        ()
 ;
syntax Capability
        = 
        ANY isPerformedBy+ ANY isOrdinateFor+ ANY isSubordinateOf+ ANY isPerformedByNC+ ANY isPerformedByNLC+ ANY isPerformedBySC+ ANY isCitedInCD+ ANY isUsedInMICN+ ANY isUsedInOTCN+ ANY isAttainedFor+
 ;
syntax CapabilityDocument
        = 
        ANY isCitedIn+
 ;
syntax SystemCapability
        = 
        ANY isCitedIn+
 ;
syntax NetworkCapability
        = 
        ()
 ;
syntax NodeLinkCapability
        = 
        ()
 ;
syntax MaterielItemCapabilityNorm
        = 
        ()
 ;
syntax OrganizationTypeCapabilityNorm
        = 
        ()
 ;
syntax RequiredInformationTechnologyCapability
        = 
        ()
 ;
syntax InformationTechnologyRequirement
        = 
        ANY specifies+
 ;
syntax InformationExchangeRequirement
        = 
        ()
 ;
syntax PAExchangeRequirement
        = 
        ANY isCitedIn+
 ;
syntax SupportStatusCode
        = red: ()
        | yellow: ()
        | green: ()
 ;
