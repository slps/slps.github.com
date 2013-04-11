@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Agate

syntax Entity
        = 
        Object
 ;
syntax Object
        = AGATEObject
        | ReferenceObject
        | MADIOSObject
 ;
syntax AGATEObject
        = Objective
        | OperationalContext
        | Project
        | GenericStandard
        | GenericThreat
        | TrafficClass
        | InterfaceCharacteristic
        | ProjectContextElement
        | DataClass
        | Event
        | Risk
        | Stake
        | Requirement
        | Means
        | DomainRelation
        | ArchitectureObject
 ;
syntax Objective
        = 
        String type Integer priority String indicator String traceability
 ;
syntax OperationalContext
        = 
        String notice String description Integer sensitivity String name String comment OperationalContext isValidIn Stake isAssociatedWith
 ;
syntax Project
        = 
        Role moi Role moa Role director ProjectContextElement defines+ InformationSystem associatedISs+
 ;
syntax Standard
        = 
        InterfaceCharacteristic caracterizeIC+ TechnicalComponent caracterizeTC+ LogicalComponent caracterizeLC+ Package caracterizeP+ Requirement caracterizeR+
 ;
syntax GenericStandard
        = 
        Standard
 ;
syntax Threat
        = 
        String nature String DCSSI Vulnerability clarifies+
 ;
syntax GenericThreat
        = 
        Threat
 ;
syntax TrafficClass
        = 
        Traffic traffic+
 ;
syntax InterfaceCharacteristic
        = ConfidentialityLevel
        | Protocol
        | Flow
        | Other
 ;
syntax ConfidentialityLevel
        = 
        type: String
 ;
syntax Protocol
        = 
        isoLevel: Integer
 ;
syntax Flow
        = 
        unit: String
 ;
syntax Other
        = 
        type: String
 ;
syntax ProjectContextElement
        = 
        type: String
 ;
syntax DataClass
        = 
        String notice String description Integer sensitivity String name String comment OperationalContext isValidIn Stake isAssociatedWith
 ;
syntax Event
        = 
        String notice String description Integer sensitivity String name String comment OperationalContext isValidIn Stake isAssociatedWith
 ;
syntax Risk
        = 
        Integer disponibilityLevel Integer integrityLevel Integer confidencialityLevel CountermeasureRequirement isCoveredByCR ArchitectureObject isCoveredByAO MADIOSObject isCoveredByMO DomainRelation isCoveredByDR ReusableObject relatesToRO CommunicationObject relatesToCO Threat isGeneratedBy
 ;
syntax Stake
        = 
        String type String relativeDate String unit String date Event events+
 ;
syntax Requirement
        = CountermeasureRequirement
        | TechnicalRequirement
        | PerformanceRequirement
        | InteroperabilityRequirement
        | OperationalRequirement
        | SecurityRequirement
 ;
syntax CountermeasureRequirement
        = 
        String type String residualVulnerability
 ;
syntax TechnicalRequirement
        = 
        Integer criticality String priority String state ArchitectureObject isCoveredBy+ ArchitectureObject characterizes+
 ;
syntax PerformanceRequirement
        = 
        Integer criticality String priority String state ArchitectureObject isCoveredBy+ ArchitectureObject characterizes+
 ;
syntax InteroperabilityRequirement
        = 
        Integer criticality String priority String state ArchitectureObject isCoveredBy+ ArchitectureObject characterizes+
 ;
syntax OperationalRequirement
        = 
        Integer criticality String priority String state ArchitectureObject isCoveredBy+ ArchitectureObject characterizes+
 ;
syntax SecurityRequirement
        = 
        Integer criticality String priority String state ArchitectureObject isCoveredBy+ ArchitectureObject characterizes+
 ;
syntax DomainRelation
        = HierarchicalRelation
        | FunctionalRelation
        | Dependence
 ;
syntax HierarchicalRelation
        = 
        ()
 ;
syntax FunctionalRelation
        = 
        OperationalFunction necessaryObjectOF OperationalFunction dependentObjectOF OrganizationObject necessaryObjectOO OrganizationObject dependentObjectOO Package necessaryObjectP Package dependentObjectP
 ;
syntax Dependence
        = 
        String type Service necessaryObjectS Service dependentObjectS LogicalComponent necessaryObjectLC LogicalComponent dependentObjectLC Package necessaryObjectP Package dependentObjectP Center necessaryObjectC Center dependentObjectC InformationSystem necessaryObjectIS InformationSystem dependentObjectIS
 ;
syntax ArchitectureObject
        = ReusableObject
        | CommunicationObject
 ;
syntax ReusableObject
        = GenericSite
        | Package
        | Service
        | TechnicalComponent
        | LogicalComponent
        | OperationalFunction
        | OrganizationObject
 ;
syntax Site
        = 
        String type String localization ReusableObject deployedObjects+
 ;
syntax GenericSite
        = 
        Site
 ;
syntax Package
        = 
        Package subPackage+ Role time+ ReusableObject groupedObjects+ LogicalComponent isCoveredByLC TechnicalComponent isCoveredByTC Interface composedOf+
 ;
syntax Service
        = 
        String Statut ReferenceService isASpecializationOf LogicalComponent isCoveredBy
 ;
syntax TechnicalComponent
        = 
        String type Boolean cots Boolean editor Boolean constructor String version String technology String definedExtension String statut TechnicalComponent composedOf+ ReferenceTechnicalComponent isASpecializationOf Interface interfaces+
 ;
syntax LogicalComponent
        = 
        String type String statut LogicalComponent composedOf+ ReferenceLogicalComponent isASpecializationOf Interface interfaces+ TechnicalComponent isCoveredBy
 ;
syntax OperationalFunction
        = 
        OperationalFunction composedOf+ Package isCoveredByP+ Service isCoveredByS+
 ;
syntax OrganizationObject
        = GenericCenter
        | InformationSystem
        | GenericRole
        | GenericActor
 ;
syntax Center
        = 
        ReusableObject deployedObjects+
 ;
syntax GenericCenter
        = 
        Center
 ;
syntax InformationSystem
        = 
        String nature String version String membershipCountry String currentLocation String startServiceDate String stopServiceDate Boolean isGeneric String functionalDomain String type InformationSystem composedOf+ Project associatedProjects+ Objective defines+ Role fulfills+ OperationalContext fixes+ Actor usedBy+ Interface interfaces+
 ;
syntax Role
        = 
        type: String
 ;
syntax GenericRole
        = 
        Role
 ;
syntax Actor
        = 
        TelecomOperator
 ;
syntax GenericActor
        = 
        Actor
 ;
syntax TelecomOperator
        = 
        String contractType Interface interfaces+
 ;
syntax CommunicationObject
        = Interface
        | Interconnection
        | InformationFlow
        | Traffic
        | Information
 ;
syntax Interface
        = 
        InterfaceCharacteristic characteristics+ Interface composedOf+
 ;
syntax Interconnection
        = 
        String linkType Interface between
 ;
syntax InformationFlow
        = 
        Integer priority String frequency String media String continuity String myContainer String time String availabilityRatio Integer integrity Integer interoperabilityLevel String mediumFlow String maximumFlow String duration String unitMediumFlow String averageEvent String maximumFlowOverOneDuration Information transports Package receiverP Package transmitterP OrganizationObject receiverOO OrganizationObject transmitterOO OperationalFunction receiverOF OperationalFunction transmitterOF
 ;
syntax Traffic
        = 
        String sequence String type Integer interoperabilityLevel TrafficClass trafficClass DataClass dataClass Package receiverP Package transmitterP InformationSystem receiverIS InformationSystem transmitterIS Center receiverC Center transmitterC TelecomOperator receiverTO TelecomOperator transmitterTO LogicalComponent receiverLC LogicalComponent transmitterLC TechnicalComponent receiverTC TechnicalComponent transmitterTC
 ;
syntax Information
        = 
        String format String storageSupport String persistence DataClass DataType
 ;
syntax ReferenceObject
        = ReferenceTechnicalComponent
        | TechnicalComponentReferenceFrame
        | ReferenceLogicalComponent
        | ReferenceService
 ;
syntax ReferenceTechnicalComponent
        = 
        ReferenceTechnicalComponent composedOf+
 ;
syntax TechnicalComponentReferenceFrame
        = 
        ReferenceTechnicalComponent composedOf+
 ;
syntax ReferenceLogicalComponent
        = 
        ReferenceLogicalComponent composedOf+
 ;
syntax ReferenceService
        = 
        ReferenceObject composedOf+
 ;
syntax ServiceReferenceFrame
        = 
        ReferenceService composedOfRS+ ReferenceLogicalComponent composedOfRLC+
 ;
syntax MADIOSObject
        = Process
        | Procedure
        | Operation
        | Activity
 ;
syntax Process
        = 
        Package isCoveredByP+ Service isCoveredByS+
 ;
syntax Procedure
        = 
        Package isCoveredByP+ Service isCoveredByS+
 ;
syntax Operation
        = 
        Package isCoveredByP+ Service isCoveredByS+
 ;
syntax Activity
        = 
        Package isCoveredByP+ Service isisCoveredByS+
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
