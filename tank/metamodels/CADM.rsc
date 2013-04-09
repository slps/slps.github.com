@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CADM

syntax Element
        = 
        ANY name ANY content
 ;
syntax Architecture
        = 
        ANY isAssociatedWith+ ANY missions+ ANY isFocusOf+ ANY uses+
 ;
syntax Organization
        = 
        ANY isAssociatedWith+ ANY softwareItems+ ANY owns+ ANY includes+ ANY performsTo+ ANY hasRequirement+ ANY hasMissionArea+ ANY associatedSystems+ ANY isProponentOf+
 ;
syntax Guidance
        = 
        ANY isAssocitatedWith+ ANY isImplementedBy+ ANY isSpecifiedIn+ ANY providesAuthorityFor+ ANY defines+
 ;
syntax Document
        = 
        ANY isAssociatedWith+ ANY describesArchitecture ANY describesSystem+ ANY isSpecifiedUsing+ ANY cites+
 ;
syntax Action
        = 
        ANY mayBeA ANY isAssociatedWith+ ANY involvedIn+
 ;
syntax Agreement
        = 
        ANY isAssociatedWith+ ANY isCitedBy+ ANY appliesTo+ ANY implements+
 ;
syntax Standard
        = 
        ()
 ;
syntax Task
        = 
        ANY isAssociatedWith+ ANY isPerformedBy+ ANY isPerformedUsing+ ANY specifies+
 ;
syntax InformationAsset
        = 
        ANY isAssociatedWith+
 ;
syntax ConceptualDataModel
        = 
        ()
 ;
syntax ActivityModel
        = 
        ()
 ;
syntax Node
        = 
        ANY isAssociatedWith+ ANY describes+ ANY hasServicesProvidedBy+ ANY involvedIn+ ANY uses+ ANY involves+ ANY isParticipedInBy+ ANY supports+
 ;
syntax Network
        = 
        ANY isAssociatedWith+ ANY isDescribedIn+ ANY compliesWith+ ANY has+ ANY performsTo+
 ;
syntax Requirement
        = 
        ANY mayBeSatifiedBy+ ANY isSpecifiedUsing+ ANY specifiesNeedFor+ ANY cites+
 ;
syntax InfoExchRequirement
        = 
        ANY isCitedIn+ ANY isSpecifiedInInfos+
 ;
syntax ExchangeNeedLineReq
        = 
        ()
 ;
syntax MissionArea
        = 
        ANY supports+
 ;
syntax System
        = 
        ANY isAssociatedWith+ ANY citedIn+ ANY compliesWith+ ANY isDescribedBy+ ANY uses+ ANY operatesUsing+ ANY performsTo+ ANY associatedOrganization+ ANY appliesTo+
 ;
syntax Mission
        = 
        ANY isCitedBy ANY requires+ ANY isAssigned+ ANY mayCite+
 ;
syntax FunctionalArea
        = 
        ANY isPartOf+ ANY supports+ ANY cites+
 ;
syntax Capability
        = 
        ANY specifiesRequired+
 ;
syntax MaterielItem
        = 
        ANY establishedAs+ ANY conformsTo+ ANY performsTo+
 ;
syntax EquipmentType
        = 
        ()
 ;
syntax SoftwareItem
        = 
        ANY uses+ ANY isSourceFor
 ;
syntax Facility
        = 
        ()
 ;
