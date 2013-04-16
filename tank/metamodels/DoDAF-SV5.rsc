@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DoDAF_SV5

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        String levelIdentifier String references String cost PATask correspondsTo+ ArchitectureTask isSupportedBy+ InformationExchangeRequirement isTheSourceOfNeedFor+ InformationExchangeRequirement isTheDestinationOfNeedFor+ SystemFunctionTraceabilityElement isCitedFor+
 ;
syntax PATask
        = 
        String levelIdentifier String references String cost PATask correspondsTo+ ArchitectureTask isSupportedBy+ InformationExchangeRequirement isTheSourceOfNeedFor+ InformationExchangeRequirement isTheDestinationOfNeedFor+ SystemFunctionTraceabilityElement isCitedFor+
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
        SystemCapability isPerformedBy+ Capability isOrdinateFor+ Capability isSubordinateOf+ NetworkCapability isPerformedByNC+ NodeLinkCapability isPerformedByNLC+ SystemCapability isPerformedBySC+ CapabilityDocument isCitedInCD+ MaterielItemCapabilityNorm isUsedInMICN+ OrganizationTypeCapabilityNorm isUsedInOTCN+ RequiredInformationTechnologyCapability isAttainedFor+
 ;
syntax NodeLinkCapability
        = 
        SystemCapability isPerformedBy+ Capability isOrdinateFor+ Capability isSubordinateOf+ NetworkCapability isPerformedByNC+ NodeLinkCapability isPerformedByNLC+ SystemCapability isPerformedBySC+ CapabilityDocument isCitedInCD+ MaterielItemCapabilityNorm isUsedInMICN+ OrganizationTypeCapabilityNorm isUsedInOTCN+ RequiredInformationTechnologyCapability isAttainedFor+
 ;
syntax MaterielItemCapabilityNorm
        = 
        SystemCapability isPerformedBy+ Capability isOrdinateFor+ Capability isSubordinateOf+ NetworkCapability isPerformedByNC+ NodeLinkCapability isPerformedByNLC+ SystemCapability isPerformedBySC+ CapabilityDocument isCitedInCD+ MaterielItemCapabilityNorm isUsedInMICN+ OrganizationTypeCapabilityNorm isUsedInOTCN+ RequiredInformationTechnologyCapability isAttainedFor+
 ;
syntax OrganizationTypeCapabilityNorm
        = 
        SystemCapability isPerformedBy+ Capability isOrdinateFor+ Capability isSubordinateOf+ NetworkCapability isPerformedByNC+ NodeLinkCapability isPerformedByNLC+ SystemCapability isPerformedBySC+ CapabilityDocument isCitedInCD+ MaterielItemCapabilityNorm isUsedInMICN+ OrganizationTypeCapabilityNorm isUsedInOTCN+ RequiredInformationTechnologyCapability isAttainedFor+
 ;
syntax RequiredInformationTechnologyCapability
        = 
        SystemCapability isPerformedBy+ Capability isOrdinateFor+ Capability isSubordinateOf+ NetworkCapability isPerformedByNC+ NodeLinkCapability isPerformedByNLC+ SystemCapability isPerformedBySC+ CapabilityDocument isCitedInCD+ MaterielItemCapabilityNorm isUsedInMICN+ OrganizationTypeCapabilityNorm isUsedInOTCN+ RequiredInformationTechnologyCapability isAttainedFor+
 ;
syntax InformationTechnologyRequirement
        = InformationExchangeRequirement
        | PAExchangeRequirement
        | RequiredInformationTechnologyCapability specifies+
 ;
syntax InformationExchangeRequirement
        = 
        RequiredInformationTechnologyCapability specifies+
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
syntax String
        = 
        String
 ;
