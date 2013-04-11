@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MoDAF_AV

syntax String
        = 
        String
 ;
syntax Element
        = MoDAFModel
        | Enterprise
        | OperationalMission
        | Architecture
        | ArchitecturalDescription
        | ArchitecturalReference
        | ArchitecturalProduct
        | Elements
        | ArchitecturalFramework
        | View
        | Concern
        | Stakeholder
        | Taxonomy
        | ClassifiedElement
 ;
syntax MoDAFModel
        = 
        Enterprise enterprise Environment environment OperationalMission operationalMissions+ Architecture architectures+ ArchitecturalDescription architecturalDescription+ ArchitecturalReference architecturalReferences+ ArchitecturalFramework architecturalFrameworks+ ArchitectureMetaData architectureMetadatas+ MetaData metaDatas+ Stakeholder stakeholders+ StakeholderHasConcern stakeholderHasConcerns+
 ;
syntax Enterprise
        = 
        Environment inhabits OperationalMission fulfills+
 ;
syntax Environment
        = 
        influences: Enterprise
 ;
syntax OperationalMission
        = 
        String name String content
 ;
syntax Architecture
        = 
        Enterprise enterprise ArchitecturalDescription describedBy
 ;
syntax ArchitecturalDescription
        = 
        String approvialAuthority String architect String assumptionAndConstraints String creatingOrganisation String dateCompleted String purpose String recommendations String summaryOfFindings String tollsUsed View viewpoints+ ArchitecturalProduct products+ Taxonomy taxonomy
 ;
syntax ArchitecturalReference
        = 
        ArchitecturalDescription referred ArchitecturalDescription referrer
 ;
syntax ArchitecturalProduct
        = 
        String description Elements architecturalElements+ View definingView Concern addresses+
 ;
syntax Elements
        = 
        String name String content
 ;
syntax ArchitecturalFramework
        = 
        View ownedMember+
 ;
syntax View
        = 
        String framework String frameworkWebsite String viewCode String viewDescription String viewName ArchitecturalFramework definingFramework Concern usedToCover+
 ;
syntax Concern
        = 
        ArchitecturalProduct adressedBy+
 ;
syntax StakeholderHasConcern
        = 
        Stakeholder client Concern supplier MoDAFModel owner
 ;
syntax Stakeholder
        = 
        String name String content
 ;
syntax MetaData
        = ArchitectureMetaData
        | String dublinCoreElement String modMetaDataElement String name String body
 ;
syntax ArchitectureMetaData
        = 
        annotatedArchitecture: ArchitecturalDescription
 ;
syntax Taxonomy
        = 
        String date String url String version ClassifiedElement contents+
 ;
syntax ClassifiedElement
        = Environment
        | Standard
        | MeasurableProperty
        | CapabilityRequirement
        | Effect
        | EnduringTask
        | OperationalConstraint
        | PostType
        | OrganisationType
        | RoleInOrganisation
        | LocationType
        | OperationalActivity
        | Node
        | InformationExchange
        | Competence
        | InformationElement
        | NodeConnectionType
        | System
        | DataElement
        | SystemFunction
        | SystemConnectionSpecification
        | ProjectType
        | Service
        | Unit
        | Dimension
        | OrganisationProjectRelationship
        | ProjectThreadType
 ;
syntax Standard
        = 
        String identifier String publishedWebsite String publisher TimeExpression ratificationDate String version TimeExpression withdrawalDate
 ;
syntax MeasurableProperty
        = 
        LiteralSpecification maxValue LiteralSpecification minValue
 ;
syntax CapabilityRequirement
        = 
        taxonomy: Taxonomy
 ;
syntax Effect
        = 
        taxonomy: Taxonomy
 ;
syntax EnduringTask
        = 
        taxonomy: Taxonomy
 ;
syntax OperationalConstraint
        = 
        nodeUsageContext: Property
 ;
syntax PostType
        = 
        taxonomy: Taxonomy
 ;
syntax OrganisationType
        = 
        taxonomy: Taxonomy
 ;
syntax RoleInOrganisation
        = 
        taxonomy: Taxonomy
 ;
syntax LocationType
        = 
        taxonomy: Taxonomy
 ;
syntax OperationalActivity
        = 
        taxonomy: Taxonomy
 ;
syntax Node
        = 
        taxonomy: Taxonomy
 ;
syntax InformationExchange
        = 
        String identifier String requirementText
 ;
syntax Competence
        = 
        taxonomy: Taxonomy
 ;
syntax InformationElement
        = 
        taxonomy: Taxonomy
 ;
syntax NodeConnectionType
        = 
        taxonomy: Taxonomy
 ;
syntax System
        = 
        taxonomy: Taxonomy
 ;
syntax DataElement
        = 
        taxonomy: Taxonomy
 ;
syntax SystemFunction
        = 
        systemUsageContext: Property
 ;
syntax SystemConnectionSpecification
        = 
        taxonomy: Taxonomy
 ;
syntax ProjectType
        = 
        taxonomy: Taxonomy
 ;
syntax Service
        = 
        taxonomy: Taxonomy
 ;
syntax Unit
        = 
        taxonomy: Taxonomy
 ;
syntax Dimension
        = 
        taxonomy: Taxonomy
 ;
syntax OrganisationProjectRelationship
        = 
        taxonomy: Taxonomy
 ;
syntax ProjectThreadType
        = 
        taxonomy: Taxonomy
 ;
syntax TimeExpression
        = 
        value: String
 ;
syntax LiteralSpecification
        = 
        value: String
 ;
syntax Property
        = 
        value: String
 ;
