@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BMM

syntax MotivationElement
        = 
        ANY name ANY description
 ;
syntax Assessment
        = 
        ANY usingAssessmentUsesUsedAssessment+ ANY assessmentProvidesImpetusForDirective+ ANY assessmentIdentifiesPotentialImpact+ ANY assessmentJudgmentOfInfluencer+
 ;
syntax End
        = 
        ()
 ;
syntax Influencer
        = 
        ()
 ;
syntax InfluencingOrganization
        = 
        ANY influencingOrganizationIsSourceOfInfluencer+
 ;
syntax Means
        = 
        ()
 ;
syntax PotentialImpact
        = 
        ANY potentialImpactProvidesImpetusForDirective+
 ;
syntax AssessmentCategory
        = 
        ANY assessmentCategoryCategoriesAssessment+
 ;
syntax InfluencerCategory
        = 
        ANY influencerCategoryCategorizesInfluencer+
 ;
syntax OrganizationCategory
        = 
        ANY organizationCategoryCategorizesInfluencingOrganization+
 ;
syntax OrganizationUnit
        = 
        ANY organizationUnitDefinesEnd+ ANY organizationUnitEstablishesMeans+ ANY organizationUnitIsResponsibleForAsset+ ANY organizationUnitIsResponsibleForLiability+ ANY organizationUnitRecognizesInfluencer+ ANY organizationUnitActAsInfluencingOrganization+ ANY organizationUnitMakesAssessment+ ANY organizationUnitIsResponsibleForBusinessProcess+
 ;
syntax BusinessProcess
        = 
        ANY businessProcessRealizesCourseOfAction+ ANY businessProcessManagerAsset+ ANY businessProcessDeliversOfeering+
 ;
syntax Asset
        = 
        ()
 ;
syntax Liability
        = 
        ANY liabilityClaimsResource+
 ;
syntax Resource
        = 
        ()
 ;
syntax Mission
        = 
        missionMakesOperativeVision: ANY
 ;
syntax CourseOfAction
        = 
        ANY enablingCourseofActionEnablesEnabledCourseOfAction+ ANY broaderCourseofActionIncludesMoreSpecificCourseOfAction+ ANY courseOfActionChanneIsEffortsTowardsDesiredResult ANY courseOfActionDeployAsset+ ANY courseOfActionDefiensOffering+
 ;
syntax FixedAsset
        = 
        ANY fixedAssetProvidesResource+
 ;
syntax Offering
        = 
        ANY offeringRequiresResource+ ANY offeringUsesFixedAsset+
 ;
syntax Directive
        = 
        ANY directiveGovernsCourseOfAction+ ANY directiveIsSourceOfCourseOfAction+ ANY directiveActAsRegulation+ ANY directiveSupportsAchievementOfDesiredResult+ ANY directiveGovernsUseOfAsset+
 ;
syntax Strategy
        = 
        ANY strategyIsAComponentOfThePlanForMission+ ANY strategyDeterminesOrganizationUnit+
 ;
syntax Tactic
        = 
        ANY tacticImplementsStrategy+ ANY tacticEffectsEnforcementLevelOfBusinessRule+
 ;
syntax BusinessRule
        = 
        ANY businessRuleGuidesBusinessProcess+
 ;
syntax BusinessPolicy
        = 
        ANY businessPolicyIsBasisForBusinessRule+ ANY broaderBusinessPolicyIncludesMoreSpecificBusinessPolicy+ ANY businessPolicyGovernsBusinessProcess+
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
        = 
        ANY broaderDesiredResultIncludesMoreSpecificDesiredResult+
 ;
syntax Goal
        = 
        goalAmplidfiesVision: ANY
 ;
syntax Objective
        = 
        ANY objectiveQuantifiesGoal+
 ;
syntax PotentialReward
        = 
        ()
 ;
syntax Risk
        = 
        ()
 ;
