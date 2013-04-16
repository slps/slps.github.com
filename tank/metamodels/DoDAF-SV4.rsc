@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DoDAF_SV4

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Element
        = DoDAFModel
        | Document
        | SystemDocument
        | ArchitectureDocument
        | System
        | SystemPA
        | IE
        | AMIERole
        | AMIERoleGraphic
        | InformationAssetDocument
        | AMPA
        | AMPAGraphic
        | PA
        | PACapability
        | InformationAsset
        | SystemPAStandard
        | InformationTechnologyStandard
        | LineOfBusiness
        | Task
        | BusinessSubfunction
        | ArchitectureBusinessSubFunction
        | OperationalRolePA
        | OperationalRole
        | OrganizationTypeOperationalRole
        | OrganizationOperationalRole
        | Occupation
        | PersonType
        | PersonTypeCapabilityNorm
        | Skill
        | Position
 ;
syntax DoDAFModel
        = 
        Document document+ SystemFunctionalityDescription sfd+ AMSpecification amSpecification+ SystemDocument sd+ Task task+ InformationAssetDocument iaDocument+ Position position+ Occupation occupation+ ArchitectureDocument ad+ System system+ AM am+ SystemPAStandard spas+ InformationTechnologyStandard its+ OperationalRolePA orpa+ PersonTypeCapabilityNorm ptcn+
 ;
syntax Document
        = SystemFunctionalityDescription
        | FunctionalSpecification
        | AMSpecification
        | String type InformationAssetDocument cites+ SystemDocument describes+ ArchitectureDocument records+ IE isTheReferenceFor+ PA isThePrimaryReferenceFor+
 ;
syntax SystemFunctionalityDescription
        = 
        String type InformationAssetDocument cites+ SystemDocument describes+ ArchitectureDocument records+ IE isTheReferenceFor+ PA isThePrimaryReferenceFor+
 ;
syntax FunctionalSpecification
        = 
        mayBeA: SystemDocument
 ;
syntax AMSpecification
        = 
        FunctionalSpecification isUsedIn+
 ;
syntax SystemDocument
        = 
        String name String description String view
 ;
syntax ArchitectureDocument
        = 
        String name String description String view
 ;
syntax System
        = 
        SystemPA isDesignedToProvide+ SystemDocument isDescribedBy+
 ;
syntax SystemPA
        = 
        SystemPAStandard isDefinedUsing+
 ;
syntax IE
        = 
        AMIERole isAssociatedWith+ IE isOrdinateOf+ IE isSubordinateOf+
 ;
syntax AMIERole
        = Input
        | Output
        | AMPA defines+ AMIERoleGraphic isRepresentedBy+
 ;
syntax AMIERoleGraphic
        = 
        String name String description String view
 ;
syntax Input
        = 
        Output isTheInputThatIsDefinedBy+ String source String destination String information
 ;
syntax Output
        = 
        String source String destination String information
 ;
syntax InformationAssetDocument
        = 
        String name String description String view
 ;
syntax AMPA
        = 
        AMPA isOrdinateOf+ AMPA isSubordinateOf+ AMIERole defines+ AMPAGraphic isRepresentedBy+
 ;
syntax AMPAGraphic
        = 
        String name String description String view
 ;
syntax PA
        = DataStore
        | SystemFunction
        | PA isParentFor+ PA isChildFor+ AMPA isIncludedIn+ SystemPA isAssignedTo+ ArchitectureBusinessSubFunction represents+ PATask correspondsTo+ PACapability has+ OperationalRolePA isPerformedBy+
 ;
syntax PACapability
        = 
        String name String description String view
 ;
syntax AM
        = 
        String type PATask isCitedBy+ AMSpecification specifies+ AMPA includes+ SystemFunctionalityDescription isUsedToDescribe+ LineOfBusiness defines+
 ;
syntax InformationAsset
        = AM
        | InformationAssetDocument isCitedIn+ DataStore describes+
 ;
syntax DataStore
        = 
        PA isParentFor+ PA isChildFor+ AMPA isIncludedIn+ SystemPA isAssignedTo+ ArchitectureBusinessSubFunction represents+ PATask correspondsTo+ PACapability has+ OperationalRolePA isPerformedBy+
 ;
syntax SystemFunction
        = 
        PA isParentFor+ PA isChildFor+ AMPA isIncludedIn+ SystemPA isAssignedTo+ ArchitectureBusinessSubFunction represents+ PATask correspondsTo+ PACapability has+ OperationalRolePA isPerformedBy+
 ;
syntax SystemPAStandard
        = 
        InformationTechnologyStandard isUsedToDefine+
 ;
syntax InformationTechnologyStandard
        = 
        SystemPAStandard isUsedToDefine+
 ;
syntax LineOfBusiness
        = 
        Task appliesToTask+ BusinessSubfunction appliesToBS+
 ;
syntax Task
        = HumanBehaviourTask
        | OperationalCapabilityTask
        | TaskMissionArea
        | PATask
        | String levelIdentifier String references String cost PATask correspondsTo+ TaskMissionArea supports+
 ;
syntax HumanBehaviourTask
        = 
        String levelIdentifier String references String cost PATask correspondsTo+ TaskMissionArea supports+
 ;
syntax OperationalCapabilityTask
        = 
        String levelIdentifier String references String cost PATask correspondsTo+ TaskMissionArea supports+
 ;
syntax TaskMissionArea
        = 
        OperationalCapabilityTask hasContributionFrom+
 ;
syntax PATask
        = 
        String levelIdentifier String references String cost PATask correspondsTo+ TaskMissionArea supports+
 ;
syntax BusinessSubfunction
        = 
        ArchitectureBusinessSubFunction appliesTo+
 ;
syntax ArchitectureBusinessSubFunction
        = 
        String name String description String view
 ;
syntax OperationalRolePA
        = 
        String name String description String view
 ;
syntax OperationalRole
        = 
        OperationalRolePA performs+ OrganizationTypeOperationalRole isPerformedByOTOR+ OrganizationOperationalRole isPerformedByOOR+
 ;
syntax OrganizationTypeOperationalRole
        = 
        String name String description String view
 ;
syntax OrganizationOperationalRole
        = 
        String name String description String view
 ;
syntax Occupation
        = 
        OperationalRole mayBeCitedForOR+ PersonType mayBeCitedForPT+
 ;
syntax PersonType
        = 
        OperationalRole mayBeCitedFor+ PersonTypeCapabilityNorm performsTo+ Skill can+
 ;
syntax PersonTypeCapabilityNorm
        = 
        String name String description String view
 ;
syntax Skill
        = 
        OperationalRole mayBeCitedFor+
 ;
syntax Position
        = 
        OperationalRole mayBeCitedFor+
 ;
syntax String
        = 
        String
 ;
