@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BmmOmg

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Assessment
        = 
        Directive motivatedDirective+ End affectedEnd+ Influencer judgedInfluencer+ OrganizationUnit assessingOrganizationUnit Means affectedMeans+ PotentialImpact identifiedPotentialImpact+ Assessment usedAssessment+ Assessment usingAssessment+ AssessmentCategory categorizingAssessmentCategory+
 ;
syntax MotivationElement
        = Assessment
        | Means
        | OrganizationUnit
        | End
        | BusinessProcess
        | Asset
        | Liability
        | Influencer
        | InfluencerCategory
        | InfluencingOrganization
        | OrganizationCategory
        | PotentialImpact
        | AssessmentCategory
 ;
syntax Directive
        = BusinessPolicy
        | BusinessRule
        | DesiredResult supportedDesiredResult+ CourseOfAction governedCourseOfAction+ CourseOfAction derivedCourseOfAction+ Asset governedAsset+ PotentialImpact motivatingPotentialImpact+ Regulation directiveRegulation+ Assessment motivatingAssessment+
 ;
syntax Means
        = Directive
        | CourseOfAction
        | Mission
        | OrganizationUnit establishingOrganizationUnit+ Assessment judgingAssessment+
 ;
syntax OrganizationUnit
        = 
        End definedEnd+ BusinessProcess managedBusinessProces+ Liability managedLiability+ Asset managedAsset+ Strategy determiningStrategy+ Influencer recognizedInfluencer+ InfluencingOrganization internalInfluencingOrganization+ Assessment madeAssessment+ Means establishedMeans+
 ;
syntax End
        = DesiredResult
        | Vision
        | Assessment judgingAssessment+ OrganizationUnit definingOrganizationUnit+
 ;
syntax BusinessProcess
        = 
        Offering deliveredOffering+ CourseOfAction realizedCourseOfAction+ Asset managedAsset+ BusinessPolicy governingBusinessPolicy+ BusinessRule guidingBusinessRule OrganizationUnit responsibleOrganizationUnit+
 ;
syntax Offering
        = 
        CourseOfAction definingCourseOfAction+ FixedAsset usedAsset+ Resource requiredResource+ BusinessProcess deliveringBusinessProcess+
 ;
syntax Asset
        = Resource
        | FixedAsset
        | Offering
        | CourseOfAction deployingCourseOfAction+ Directive governingDirective+ OrganizationUnit responsibleOrganizationUnit+ BusinessProcess managingBusinessProcess+
 ;
syntax CourseOfAction
        = Tactic
        | Strategy
        | CourseOfAction enabledCourseOfAction+ CourseOfAction enablingCourseOfAction+ CourseOfAction moreSpecficCourseOfAction+ CourseOfAction broaderCourseOfAction+ DesiredResult supportedDesiredResult+ Offering definedOffering+ Liability dischargedLiability+ BusinessProcess realizingBusinessProcess Directive governingDirective+ Directive baseDirective+ Asset deployedAsset+
 ;
syntax DesiredResult
        = Goal
        | Objective
        | DesiredResult moreSpecificDesiredResult+ DesiredResult broaderDesiredResult+ Directive supportingDirective+ CourseOfAction supportingCourseOfAction+
 ;
syntax Liability
        = 
        Resource claimedResource+ OrganizationUnit responsibleOrganizationUnit+ CourseOfAction dischargingCourseOfAction+
 ;
syntax Resource
        = 
        FixedAsset providingFixedAsset+ Offering requiringOffering+ Liability claimingLiability+
 ;
syntax FixedAsset
        = Offering
        | Offering usingOffering+ Resource providedResource+
 ;
syntax BusinessPolicy
        = 
        BusinessPolicy moreSpecificBusinessPolicy+ BusinessPolicy broaderBusinessPolicy+ BusinessRule derivedBusinessRule+ BusinessProcess governedBusinessProcess+
 ;
syntax BusinessRule
        = 
        Tactic effectingTactic+ BusinessProcess guidedBusinessProcess+ BusinessPolicy baseBusinessPolicy+
 ;
syntax Tactic
        = 
        Strategy implementedStrategy+ BusinessRule enforcedBusinessRule+
 ;
syntax Strategy
        = 
        OrganizationUnit determinedOrganizationUnit+ Mission plannedMission+ Tactic implementingTactic+
 ;
syntax Mission
        = 
        Vision operativeVision Strategy componentStrategy+
 ;
syntax Vision
        = 
        Goal amplifyingGoal+ Mission deliveringMission+
 ;
syntax Goal
        = 
        Objective quantifyingObjective+ Vision amplifiedVision
 ;
syntax Objective
        = 
        Goal quantifiedGoal+
 ;
syntax Influencer
        = Regulation
        | InfluencerCategory categorizingInfluencerCategory+ InfluencingOrganization sourceInfluencingOrganization+ Assessment judgingAssessment+ OrganizationUnit recognizingOrganizationUnit+
 ;
syntax InfluencerCategory
        = 
        Influencer categorizedInfluencer+
 ;
syntax InfluencingOrganization
        = 
        OrganizationCategory categorizingOrganizationCategory+ OrganizationUnit influencingOrganizationUnit Influencer providedInfluencer+
 ;
syntax OrganizationCategory
        = 
        InfluencingOrganization categorizedInfluencingOrganization+
 ;
syntax PotentialImpact
        = PotentialReward
        | Risk
        | Assessment identifyingAssessment+ Directive motivatedDirective+
 ;
syntax Regulation
        = 
        regulatingDirective: Directive
 ;
syntax AssessmentCategory
        = 
        Assessment categorizedAssessment+
 ;
syntax PotentialReward
        = 
        Assessment identifyingAssessment+ Directive motivatedDirective+
 ;
syntax Risk
        = 
        Assessment identifyingAssessment+ Directive motivatedDirective+
 ;
syntax String
        = 
        String
 ;
