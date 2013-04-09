@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DoDAF_SV4

syntax Element
        = 
        ()
 ;
syntax DoDAFModel
        = 
        ANY document+ ANY sfd+ ANY amSpecification+ ANY sd+ ANY task+ ANY iaDocument+ ANY position+ ANY occupation+ ANY ad+ ANY system+ ANY am+ ANY spas+ ANY its+ ANY orpa+ ANY ptcn+
 ;
syntax Document
        = 
        ANY type ANY cites+ ANY describes+ ANY records+ ANY isTheReferenceFor+ ANY isThePrimaryReferenceFor+
 ;
syntax SystemFunctionalityDescription
        = 
        ()
 ;
syntax FunctionalSpecification
        = 
        mayBeA: ANY
 ;
syntax AMSpecification
        = 
        ANY isUsedIn+
 ;
syntax SystemDocument
        = 
        ANY name ANY description ANY view
 ;
syntax ArchitectureDocument
        = 
        ANY name ANY description ANY view
 ;
syntax System
        = 
        ANY isDesignedToProvide+ ANY isDescribedBy+
 ;
syntax SystemPA
        = 
        ANY isDefinedUsing+
 ;
syntax IE
        = 
        ANY isAssociatedWith+ ANY isOrdinateOf+ ANY isSubordinateOf+
 ;
syntax AMIERole
        = 
        ANY defines+ ANY isRepresentedBy+
 ;
syntax AMIERoleGraphic
        = 
        ANY name ANY description ANY view
 ;
syntax Input
        = 
        ANY isTheInputThatIsDefinedBy+ ANY source ANY destination ANY information
 ;
syntax Output
        = 
        ANY source ANY destination ANY information
 ;
syntax InformationAssetDocument
        = 
        ANY name ANY description ANY view
 ;
syntax AMPA
        = 
        ANY isOrdinateOf+ ANY isSubordinateOf+ ANY defines+ ANY isRepresentedBy+
 ;
syntax AMPAGraphic
        = 
        ANY name ANY description ANY view
 ;
syntax PA
        = 
        ANY isParentFor+ ANY isChildFor+ ANY isIncludedIn+ ANY isAssignedTo+ ANY represents+ ANY correspondsTo+ ANY has+ ANY isPerformedBy+
 ;
syntax PACapability
        = 
        ANY name ANY description ANY view
 ;
syntax AM
        = 
        ANY type ANY isCitedBy+ ANY specifies+ ANY includes+ ANY isUsedToDescribe+ ANY defines+
 ;
syntax InformationAsset
        = 
        ANY isCitedIn+ ANY describes+
 ;
syntax DataStore
        = 
        ()
 ;
syntax SystemFunction
        = 
        ()
 ;
syntax SystemPAStandard
        = 
        ANY isUsedToDefine+
 ;
syntax InformationTechnologyStandard
        = 
        ANY isUsedToDefine+
 ;
syntax LineOfBusiness
        = 
        ANY appliesToTask+ ANY appliesToBS+
 ;
syntax Task
        = 
        ANY levelIdentifier ANY references ANY cost ANY correspondsTo+ ANY supports+
 ;
syntax HumanBehaviourTask
        = 
        ()
 ;
syntax OperationalCapabilityTask
        = 
        ()
 ;
syntax TaskMissionArea
        = 
        ANY hasContributionFrom+
 ;
syntax PATask
        = 
        ()
 ;
syntax BusinessSubfunction
        = 
        ANY appliesTo+
 ;
syntax ArchitectureBusinessSubFunction
        = 
        ANY name ANY description ANY view
 ;
syntax OperationalRolePA
        = 
        ANY name ANY description ANY view
 ;
syntax OperationalRole
        = 
        ANY performs+ ANY isPerformedByOTOR+ ANY isPerformedByOOR+
 ;
syntax OrganizationTypeOperationalRole
        = 
        ANY name ANY description ANY view
 ;
syntax OrganizationOperationalRole
        = 
        ANY name ANY description ANY view
 ;
syntax Occupation
        = 
        ANY mayBeCitedForOR+ ANY mayBeCitedForPT+
 ;
syntax PersonType
        = 
        ANY mayBeCitedFor+ ANY performsTo+ ANY can+
 ;
syntax PersonTypeCapabilityNorm
        = 
        ANY name ANY description ANY view
 ;
syntax Skill
        = 
        ANY mayBeCitedFor+
 ;
syntax Position
        = 
        ANY mayBeCitedFor+
 ;
