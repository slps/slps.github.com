@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CADM

syntax Element
        = Architecture
        | Organization
        | Guidance
        | Document
        | Action
        | Agreement
        | Task
        | InformationAsset
        | Network
        | MissionArea
        | System
        | Mission
        | FunctionalArea
        | Capability
        | MaterielItem
        | Facility
        | String name String content
 ;
syntax Architecture
        = 
        Architecture isAssociatedWith+ Mission missions+ FunctionalArea isFocusOf+ Organization uses+
 ;
syntax Organization
        = 
        Organization isAssociatedWith+ SoftwareItem softwareItems+ InformationAsset owns+ Node includes+ Capability performsTo+ Requirement hasRequirement+ MissionArea hasMissionArea+ System associatedSystems+ FunctionalArea isProponentOf+
 ;
syntax Guidance
        = Requirement
        | Guidance isAssocitatedWith+ Architecture isImplementedBy+ Document isSpecifiedIn+ InformationAsset providesAuthorityFor+ MissionArea defines+
 ;
syntax Document
        = 
        Document isAssociatedWith+ Architecture describesArchitecture System describesSystem+ Agreement isSpecifiedUsing+ InformationAsset cites+
 ;
syntax Action
        = 
        Task mayBeA Action isAssociatedWith+ ActivityModel involvedIn+
 ;
syntax Agreement
        = Standard
        | Agreement isAssociatedWith+ Agreement isCitedBy+ InformationAsset appliesTo+ Guidance implements+
 ;
syntax Standard
        = 
        Agreement isAssociatedWith+ Agreement isCitedBy+ InformationAsset appliesTo+ Guidance implements+
 ;
syntax Task
        = 
        Task isAssociatedWith+ Node isPerformedBy+ System isPerformedUsing+ Requirement specifies+
 ;
syntax InformationAsset
        = ConceptualDataModel
        | ActivityModel
        | InformationAsset isAssociatedWith+
 ;
syntax ConceptualDataModel
        = 
        InformationAsset isAssociatedWith+
 ;
syntax ActivityModel
        = 
        InformationAsset isAssociatedWith+
 ;
syntax Node
        = 
        Node isAssociatedWith+ Architecture describes+ Facility hasServicesProvidedBy+ ActivityModel involvedIn+ InformationAsset uses+ InfoExchRequirement involves+ Network isParticipedInBy+ System supports+
 ;
syntax Network
        = 
        Network isAssociatedWith+ Document isDescribedIn+ Standard compliesWith+ Organization has+ Capability performsTo+
 ;
syntax Requirement
        = InfoExchRequirement
        | ExchangeNeedLineReq
        | Architecture mayBeSatifiedBy+ InformationAsset isSpecifiedUsing+ MaterielItem specifiesNeedFor+ MissionArea cites+
 ;
syntax InfoExchRequirement
        = 
        Document isCitedIn+ InformationAsset isSpecifiedInInfos+
 ;
syntax ExchangeNeedLineReq
        = 
        Architecture mayBeSatifiedBy+ InformationAsset isSpecifiedUsing+ MaterielItem specifiesNeedFor+ MissionArea cites+
 ;
syntax MissionArea
        = 
        Task supports+
 ;
syntax System
        = 
        System isAssociatedWith+ Architecture citedIn+ Standard compliesWith+ InformationAsset isDescribedBy+ MaterielItem uses+ Network operatesUsing+ Capability performsTo+ Organization associatedOrganization+ Requirement appliesTo+
 ;
syntax Mission
        = 
        Architecture isCitedBy Task requires+ Organization isAssigned+ FunctionalArea mayCite+
 ;
syntax FunctionalArea
        = 
        FunctionalArea isPartOf+ System supports+ MissionArea cites+
 ;
syntax Capability
        = 
        Requirement specifiesRequired+
 ;
syntax MaterielItem
        = EquipmentType
        | SoftwareItem
        | MaterielItem establishedAs+ Standard conformsTo+ Capability performsTo+
 ;
syntax EquipmentType
        = 
        MaterielItem establishedAs+ Standard conformsTo+ Capability performsTo+
 ;
syntax SoftwareItem
        = 
        EquipmentType uses+ Organization isSourceFor
 ;
syntax Facility
        = 
        String name String content
 ;
syntax String
        = 
        String
 ;
