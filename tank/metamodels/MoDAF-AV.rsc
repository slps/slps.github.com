@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MoDAF_AV

syntax Element
        = 
        ()
 ;
syntax MoDAFModel
        = 
        ANY enterprise ANY environment ANY operationalMissions+ ANY architectures+ ANY architecturalDescription+ ANY architecturalReferences+ ANY architecturalFrameworks+ ANY architectureMetadatas+ ANY metaDatas+ ANY stakeholders+ ANY stakeholderHasConcerns+
 ;
syntax Enterprise
        = 
        ANY inhabits ANY fulfills+
 ;
syntax Environment
        = 
        influences: ANY
 ;
syntax OperationalMission
        = 
        ANY name ANY content
 ;
syntax Architecture
        = 
        ANY enterprise ANY describedBy
 ;
syntax ArchitecturalDescription
        = 
        ANY approvialAuthority ANY architect ANY assumptionAndConstraints ANY creatingOrganisation ANY dateCompleted ANY purpose ANY recommendations ANY summaryOfFindings ANY tollsUsed ANY viewpoints+ ANY products+ ANY taxonomy
 ;
syntax ArchitecturalReference
        = 
        ANY referred ANY referrer
 ;
syntax ArchitecturalProduct
        = 
        ANY description ANY architecturalElements+ ANY definingView ANY addresses+
 ;
syntax Elements
        = 
        ANY name ANY content
 ;
syntax ArchitecturalFramework
        = 
        ANY ownedMember+
 ;
syntax View
        = 
        ANY framework ANY frameworkWebsite ANY viewCode ANY viewDescription ANY viewName ANY definingFramework ANY usedToCover+
 ;
syntax Concern
        = 
        ANY adressedBy+
 ;
syntax StakeholderHasConcern
        = 
        ANY client ANY supplier ANY owner
 ;
syntax Stakeholder
        = 
        ANY name ANY content
 ;
syntax MetaData
        = 
        ANY dublinCoreElement ANY modMetaDataElement ANY name ANY body
 ;
syntax ArchitectureMetaData
        = 
        annotatedArchitecture: ANY
 ;
syntax Taxonomy
        = 
        ANY date ANY url ANY version ANY contents+
 ;
syntax ClassifiedElement
        = 
        ()
 ;
syntax Standard
        = 
        ANY identifier ANY publishedWebsite ANY publisher ANY ratificationDate ANY version ANY withdrawalDate
 ;
syntax MeasurableProperty
        = 
        ANY maxValue ANY minValue
 ;
syntax CapabilityRequirement
        = 
        ANY taxonomy
 ;
syntax Effect
        = 
        ANY taxonomy
 ;
syntax EnduringTask
        = 
        ANY taxonomy
 ;
syntax OperationalConstraint
        = 
        nodeUsageContext: ANY
 ;
syntax PostType
        = 
        ANY taxonomy
 ;
syntax OrganisationType
        = 
        ANY taxonomy
 ;
syntax RoleInOrganisation
        = 
        ANY taxonomy
 ;
syntax LocationType
        = 
        ANY taxonomy
 ;
syntax OperationalActivity
        = 
        ANY taxonomy
 ;
syntax Node
        = 
        ANY taxonomy
 ;
syntax InformationExchange
        = 
        ANY identifier ANY requirementText
 ;
syntax Competence
        = 
        ANY taxonomy
 ;
syntax InformationElement
        = 
        ANY taxonomy
 ;
syntax NodeConnectionType
        = 
        ANY taxonomy
 ;
syntax System
        = 
        ANY taxonomy
 ;
syntax DataElement
        = 
        ANY taxonomy
 ;
syntax SystemFunction
        = 
        systemUsageContext: ANY
 ;
syntax SystemConnectionSpecification
        = 
        ANY taxonomy
 ;
syntax ProjectType
        = 
        ANY taxonomy
 ;
syntax Service
        = 
        ANY taxonomy
 ;
syntax Unit
        = 
        ANY taxonomy
 ;
syntax Dimension
        = 
        ANY taxonomy
 ;
syntax OrganisationProjectRelationship
        = 
        ANY taxonomy
 ;
syntax ProjectThreadType
        = 
        ANY taxonomy
 ;
syntax TimeExpression
        = 
        value: ANY
 ;
syntax LiteralSpecification
        = 
        value: ANY
 ;
syntax Property
        = 
        value: ANY
 ;
