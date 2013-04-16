@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BMM

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax MotivationElement
        = Assessment
        | End
        | Influencer
        | InfluencingOrganization
        | Means
        | PotentialImpact
        | AssessmentCategory
        | InfluencerCategory
        | OrganizationCategory
        | OrganizationUnit
        | BusinessProcess
        | Asset
        | Liability
        | String name String description
 ;
syntax Assessment
        = 
        Assessment usingAssessmentUsesUsedAssessment+ Directive assessmentProvidesImpetusForDirective+ PotentialImpact assessmentIdentifiesPotentialImpact+ Influencer assessmentJudgmentOfInfluencer+
 ;
syntax End
        = Vision
        | DesiredResult
 ;
syntax Influencer
        = 
        Regulation
 ;
syntax InfluencingOrganization
        = 
        Influencer influencingOrganizationIsSourceOfInfluencer+
 ;
syntax Means
        = Mission
        | CourseOfAction
        | Directive
 ;
syntax PotentialImpact
        = PotentialReward
        | Risk
        | Directive potentialImpactProvidesImpetusForDirective+
 ;
syntax AssessmentCategory
        = 
        Assessment assessmentCategoryCategoriesAssessment+
 ;
syntax InfluencerCategory
        = 
        Influencer influencerCategoryCategorizesInfluencer+
 ;
syntax OrganizationCategory
        = 
        InfluencingOrganization organizationCategoryCategorizesInfluencingOrganization+
 ;
syntax OrganizationUnit
        = 
        End organizationUnitDefinesEnd+ Means organizationUnitEstablishesMeans+ Asset organizationUnitIsResponsibleForAsset+ Liability organizationUnitIsResponsibleForLiability+ Influencer organizationUnitRecognizesInfluencer+ InfluencingOrganization organizationUnitActAsInfluencingOrganization+ Assessment organizationUnitMakesAssessment+ BusinessProcess organizationUnitIsResponsibleForBusinessProcess+
 ;
syntax BusinessProcess
        = 
        CourseOfAction businessProcessRealizesCourseOfAction+ Asset businessProcessManagerAsset+ Offering businessProcessDeliversOfeering+
 ;
syntax Asset
        = Resource
        | FixedAsset
 ;
syntax Liability
        = 
        Resource liabilityClaimsResource+
 ;
syntax Resource
        = 
        ()
 ;
syntax Mission
        = Strategy
        | missionMakesOperativeVision: Vision
 ;
syntax CourseOfAction
        = Tactic
        | CourseOfAction enablingCourseofActionEnablesEnabledCourseOfAction+ CourseOfAction broaderCourseofActionIncludesMoreSpecificCourseOfAction+ DesiredResult courseOfActionChanneIsEffortsTowardsDesiredResult Asset courseOfActionDeployAsset+ Offering courseOfActionDefiensOffering+
 ;
syntax FixedAsset
        = Offering
        | Resource fixedAssetProvidesResource+
 ;
syntax Offering
        = 
        Resource offeringRequiresResource+ FixedAsset offeringUsesFixedAsset+
 ;
syntax Directive
        = BusinessRule
        | BusinessPolicy
        | CourseOfAction directiveGovernsCourseOfAction+ CourseOfAction directiveIsSourceOfCourseOfAction+ Regulation directiveActAsRegulation+ DesiredResult directiveSupportsAchievementOfDesiredResult+ Asset directiveGovernsUseOfAsset+
 ;
syntax Strategy
        = 
        Mission strategyIsAComponentOfThePlanForMission+ OrganizationUnit strategyDeterminesOrganizationUnit+
 ;
syntax Tactic
        = 
        Strategy tacticImplementsStrategy+ BusinessRule tacticEffectsEnforcementLevelOfBusinessRule+
 ;
syntax BusinessRule
        = 
        BusinessProcess businessRuleGuidesBusinessProcess+
 ;
syntax BusinessPolicy
        = 
        BusinessRule businessPolicyIsBasisForBusinessRule+ BusinessPolicy broaderBusinessPolicyIncludesMoreSpecificBusinessPolicy+ BusinessProcess businessPolicyGovernsBusinessProcess+
 ;
syntax Regulation
        = 
        ()
 ;
syntax Vision
        = 
        ()
 ;
syntax DesiredResult
        = Goal
        | Objective
        | DesiredResult broaderDesiredResultIncludesMoreSpecificDesiredResult+
 ;
syntax Goal
        = 
        goalAmplidfiesVision: Vision
 ;
syntax Objective
        = 
        Goal objectiveQuantifiesGoal+
 ;
syntax PotentialReward
        = 
        Directive potentialImpactProvidesImpetusForDirective+
 ;
syntax Risk
        = 
        Directive potentialImpactProvidesImpetusForDirective+
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
