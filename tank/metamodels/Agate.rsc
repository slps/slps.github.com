@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Agate

syntax Entity
        = 
        ()
 ;
syntax Object
        = 
        ()
 ;
syntax AGATEObject
        = 
        ()
 ;
syntax Objective
        = 
        ANY type ANY priority ANY indicator ANY traceability
 ;
syntax OperationalContext
        = 
        ANY notice ANY description ANY sensitivity ANY name ANY comment ANY isValidIn ANY isAssociatedWith
 ;
syntax Project
        = 
        ANY moi ANY moa ANY director ANY defines+ ANY associatedISs+
 ;
syntax Standard
        = 
        ANY caracterizeIC+ ANY caracterizeTC+ ANY caracterizeLC+ ANY caracterizeP+ ANY caracterizeR+
 ;
syntax GenericStandard
        = 
        ()
 ;
syntax Threat
        = 
        ANY nature ANY DCSSI ANY clarifies+
 ;
syntax GenericThreat
        = 
        ()
 ;
syntax Vulnerability
        = 
        ()
 ;
syntax TrafficClass
        = 
        ANY traffic+
 ;
syntax InterfaceCharacteristic
        = 
        ()
 ;
syntax ConfidentialityLevel
        = 
        ANY type
 ;
syntax Protocol
        = 
        isoLevel: ANY
 ;
syntax Flow
        = 
        unit: ANY
 ;
syntax Other
        = 
        ANY type
 ;
syntax ProjectContextElement
        = 
        type: ANY
 ;
syntax DataClass
        = 
        ANY notice ANY description ANY sensitivity ANY name ANY comment ANY isValidIn ANY isAssociatedWith
 ;
syntax Event
        = 
        ANY notice ANY description ANY sensitivity ANY name ANY comment ANY isValidIn ANY isAssociatedWith
 ;
syntax Risk
        = 
        ANY disponibilityLevel ANY integrityLevel ANY confidencialityLevel ANY isCoveredByCR ANY isCoveredByAO ANY isCoveredByMO ANY isCoveredByDR ANY relatesToRO ANY relatesToCO ANY isGeneratedBy
 ;
syntax Stake
        = 
        ANY type ANY relativeDate ANY unit ANY date ANY events+
 ;
syntax Requirement
        = 
        ()
 ;
syntax CountermeasureRequirement
        = 
        ANY type ANY residualVulnerability
 ;
syntax TechnicalRequirement
        = 
        ANY criticality ANY priority ANY state ANY isCoveredBy+ ANY characterizes+
 ;
syntax PerformanceRequirement
        = 
        ANY criticality ANY priority ANY state ANY isCoveredBy+ ANY characterizes+
 ;
syntax InteroperabilityRequirement
        = 
        ANY criticality ANY priority ANY state ANY isCoveredBy+ ANY characterizes+
 ;
syntax OperationalRequirement
        = 
        ANY criticality ANY priority ANY state ANY isCoveredBy+ ANY characterizes+
 ;
syntax SecurityRequirement
        = 
        ANY criticality ANY priority ANY state ANY isCoveredBy+ ANY characterizes+
 ;
syntax Means
        = 
        ()
 ;
syntax DomainRelation
        = 
        ()
 ;
syntax HierarchicalRelation
        = 
        
 ;
syntax FunctionalRelation
        = 
        ANY necessaryObjectOF ANY dependentObjectOF ANY necessaryObjectOO ANY dependentObjectOO ANY necessaryObjectP ANY dependentObjectP
 ;
syntax Dependence
        = 
        ANY type ANY necessaryObjectS ANY dependentObjectS ANY necessaryObjectLC ANY dependentObjectLC ANY necessaryObjectP ANY dependentObjectP ANY necessaryObjectC ANY dependentObjectC ANY necessaryObjectIS ANY dependentObjectIS
 ;
syntax ArchitectureObject
        = 
        ()
 ;
syntax ReusableObject
        = 
        ()
 ;
syntax Site
        = 
        ANY type ANY localization ANY deployedObjects+
 ;
syntax GenericSite
        = 
        ()
 ;
syntax Package
        = 
        ANY subPackage+ ANY time+ ANY groupedObjects+ ANY isCoveredByLC ANY isCoveredByTC ANY composedOf+
 ;
syntax Service
        = 
        ANY Statut ANY isASpecializationOf ANY isCoveredBy
 ;
syntax TechnicalComponent
        = 
        ANY type ANY cots ANY editor ANY constructor ANY version ANY technology ANY definedExtension ANY statut ANY composedOf+ ANY isASpecializationOf ANY interfaces+
 ;
syntax LogicalComponent
        = 
        ANY type ANY statut ANY composedOf+ ANY isASpecializationOf ANY interfaces+ ANY isCoveredBy
 ;
syntax OperationalFunction
        = 
        ANY composedOf+ ANY isCoveredByP+ ANY isCoveredByS+
 ;
syntax OrganizationObject
        = 
        ()
 ;
syntax Center
        = 
        ANY deployedObjects+
 ;
syntax GenericCenter
        = 
        ()
 ;
syntax InformationSystem
        = 
        ANY nature ANY version ANY membershipCountry ANY currentLocation ANY startServiceDate ANY stopServiceDate ANY isGeneric ANY functionalDomain ANY type ANY composedOf+ ANY associatedProjects+ ANY defines+ ANY fulfills+ ANY fixes+ ANY usedBy+ ANY interfaces+
 ;
syntax Role
        = 
        type: ANY
 ;
syntax GenericRole
        = 
        ()
 ;
syntax Actor
        = 
        ANY actors+
 ;
syntax GenericActor
        = 
        ()
 ;
syntax TelecomOperator
        = 
        ANY contractType ANY interfaces+
 ;
syntax CommunicationObject
        = 
        ()
 ;
syntax Interface
        = 
        ANY characteristics+ ANY composedOf+
 ;
syntax Interconnection
        = 
        ANY linkType ANY between
 ;
syntax InformationFlow
        = 
        ANY priority ANY frequency ANY media ANY continuity ANY myContainer ANY time ANY availabilityRatio ANY integrity ANY interoperabilityLevel ANY mediumFlow ANY maximumFlow ANY duration ANY unitMediumFlow ANY averageEvent ANY maximumFlowOverOneDuration ANY transports ANY receiverP ANY transmitterP ANY receiverOO ANY transmitterOO ANY receiverOF ANY transmitterOF
 ;
syntax Traffic
        = 
        ANY sequence ANY type ANY interoperabilityLevel ANY trafficClass ANY dataClass ANY receiverP ANY transmitterP ANY receiverIS ANY transmitterIS ANY receiverC ANY transmitterC ANY receiverTO ANY transmitterTO ANY receiverLC ANY transmitterLC ANY receiverTC ANY transmitterTC
 ;
syntax Information
        = 
        ANY format ANY storageSupport ANY persistence ANY DataType
 ;
syntax ReferenceObject
        = 
        ()
 ;
syntax ReferenceTechnicalComponent
        = 
        ANY composedOf+
 ;
syntax TechnicalComponentReferenceFrame
        = 
        ANY composedOf+
 ;
syntax ReferenceLogicalComponent
        = 
        ANY composedOf+
 ;
syntax ReferenceService
        = 
        ANY composedOf+
 ;
syntax ServiceReferenceFrame
        = 
        ANY composedOfRS+ ANY composedOfRLC+
 ;
syntax MADIOSObject
        = 
        ()
 ;
syntax Process
        = 
        ANY isCoveredByP+ ANY isCoveredByS+
 ;
syntax Procedure
        = 
        ANY isCoveredByP+ ANY isCoveredByS+
 ;
syntax Operation
        = 
        ANY isCoveredByP+ ANY isCoveredByS+
 ;
syntax Activity
        = 
        ANY isCoveredByP+ ANY isisCoveredByS+
 ;
