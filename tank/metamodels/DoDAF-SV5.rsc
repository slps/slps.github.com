@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DoDAF_SV5

syntax Element
        = DoDAFModel
        | Document
        | SystemFunctionTraceabilityElement
        | SystemDocument
        | ArchitectureDocument
        | PA
        | SystemPA
        | SoftwareApplicationProcedurePA
        | InformationAsset
        | AMPA
        | System
        | Task
        | ArchitectureTask
        | Capability
        | CapabilityDocument
        | SystemCapability
        | InformationTechnologyRequirement
 ;
syntax DoDAFModel
        = 
        Document document+ SystemFunctionTraceabilityMatrix sftm+ SystemDocument sd+ AM am+ System system+ Task task+ Capability capability+ CapabilityDocument capabilityDocument+ SystemCapability systemCapability+
 ;
syntax Document
        = SystemFunctionTraceabilityMatrix
        | String type CapabilityDocument cites+ SystemDocument describes+ ArchitectureDocument records+ PA isThePrimaryReferenceFor+
 ;
syntax SystemFunctionTraceabilityMatrix
        = 
        SystemFunctionTraceabilityElement isDefinedBy+
 ;
syntax SystemFunctionTraceabilityElement
        = 
        SystemFunction systemFunction Task operationalActivity SystemPA systemProcessActivity System system Capability capability SupportStatusCode supportStatusCode
 ;
syntax SystemDocument
        = 
        String name String description String view
 ;
syntax ArchitectureDocument
        = 
        String name String description String view
 ;
syntax PA
        = SystemFunction
        | PA isParentFor+ PA isChildFor+ PATask correspondsTo+ AMPA isIncludedIn+ SystemPA isAssignedTo+ SoftwareApplicationProcedurePA isSupportedBy+ PAExchangeRequirement isTheConsumerFor+ PAExchangeRequirement isTheProducerFor+
 ;
syntax SystemFunction
        = 
        SystemFunctionTraceabilityElement isCitedFor+
 ;
syntax SystemPA
        = 
        SystemFunctionTraceabilityElement mayBeCitedFor+ SystemCapability provides+ SystemOperationalCapabilityTask enables+
 ;
syntax SoftwareApplicationProcedurePA
        = 
        String name String description String view
 ;
syntax AM
        = 
        String type PATask isCitedBy+ AMPA includes+
 ;
syntax InformationAsset
        = 
        AM
 ;
syntax AMPA
        = 
        AMPA isOrdinateOf+ AMPA isSubordinateOf+
 ;
syntax System
        = 
        SystemPA isDesignedToProvide+ SystemDocument isDescribedBy+ SystemCapability performs+ SystemOperationalCapabilityTask isUsedToAccomplish+
 ;
syntax Task
        = OperationalCapabilityTask
        | SystemOperationalCapabilityTask
        | PATask
        | String levelIdentifier String references String cost PATask correspondsTo+ ArchitectureTask isSupportedBy+ InformationExchangeRequirement isTheSourceOfNeedFor+ InformationExchangeRequirement isTheDestinationOfNeedFor+ SystemFunctionTraceabilityElement isCitedFor+
 ;
syntax ArchitectureTask
        = 
        String name String description String view
 ;
syntax OperationalCapabilityTask
        = 
        isAccomplishedA: SystemOperationalCapabilityTask
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
        = NetworkCapability
        | NodeLinkCapability
        | MaterielItemCapabilityNorm
        | OrganizationTypeCapabilityNorm
        | RequiredInformationTechnologyCapability
        | SystemCapability isPerformedBy+ Capability isOrdinateFor+ Capability isSubordinateOf+ NetworkCapability isPerformedByNC+ NodeLinkCapability isPerformedByNLC+ SystemCapability isPerformedBySC+ CapabilityDocument isCitedInCD+ MaterielItemCapabilityNorm isUsedInMICN+ OrganizationTypeCapabilityNorm isUsedInOTCN+ RequiredInformationTechnologyCapability isAttainedFor+
 ;
syntax CapabilityDocument
        = 
        Capability isCitedIn+
 ;
syntax SystemCapability
        = 
        Capability isCitedIn+
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
        = InformationExchangeRequirement
        | PAExchangeRequirement
        | RequiredInformationTechnologyCapability specifies+
 ;
syntax InformationExchangeRequirement
        = 
        ()
 ;
syntax PAExchangeRequirement
        = 
        InformationExchangeRequirement isCitedIn+
 ;
syntax SupportStatusCode
        = red: ()
        | yellow: ()
        | green: ()
 ;
