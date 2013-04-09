@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BmmOmg

syntax Assessment
        = 
        ANY motivatedDirective+ ANY affectedEnd+ ANY judgedInfluencer+ ANY assessingOrganizationUnit ANY affectedMeans+ ANY identifiedPotentialImpact+ ANY usedAssessment+ ANY usingAssessment+ ANY categorizingAssessmentCategory+
 ;
syntax MotivationElement
        = 
        ()
 ;
syntax Directive
        = 
        ANY supportedDesiredResult+ ANY governedCourseOfAction+ ANY derivedCourseOfAction+ ANY governedAsset+ ANY motivatingPotentialImpact+ ANY directiveRegulation+ ANY motivatingAssessment+
 ;
syntax Means
        = 
        ANY establishingOrganizationUnit+ ANY judgingAssessment+
 ;
syntax OrganizationUnit
        = 
        ANY definedEnd+ ANY managedBusinessProces+ ANY managedLiability+ ANY managedAsset+ ANY determiningStrategy+ ANY recognizedInfluencer+ ANY internalInfluencingOrganization+ ANY madeAssessment+ ANY establishedMeans+
 ;
syntax End
        = 
        ANY judgingAssessment+ ANY definingOrganizationUnit+
 ;
syntax BusinessProcess
        = 
        ANY deliveredOffering+ ANY realizedCourseOfAction+ ANY managedAsset+ ANY governingBusinessPolicy+ ANY guidingBusinessRule ANY responsibleOrganizationUnit+
 ;
syntax Offering
        = 
        ANY definingCourseOfAction+ ANY usedAsset+ ANY requiredResource+ ANY deliveringBusinessProcess+
 ;
syntax Asset
        = 
        ANY deployingCourseOfAction+ ANY governingDirective+ ANY responsibleOrganizationUnit+ ANY managingBusinessProcess+
 ;
syntax CourseOfAction
        = 
        ANY enabledCourseOfAction+ ANY enablingCourseOfAction+ ANY moreSpecficCourseOfAction+ ANY broaderCourseOfAction+ ANY supportedDesiredResult+ ANY definedOffering+ ANY dischargedLiability+ ANY realizingBusinessProcess ANY governingDirective+ ANY baseDirective+ ANY deployedAsset+
 ;
syntax DesiredResult
        = 
        ANY moreSpecificDesiredResult+ ANY broaderDesiredResult+ ANY supportingDirective+ ANY supportingCourseOfAction+
 ;
syntax Liability
        = 
        ANY claimedResource+ ANY responsibleOrganizationUnit+ ANY dischargingCourseOfAction+
 ;
syntax Resource
        = 
        ANY providingFixedAsset+ ANY requiringOffering+ ANY claimingLiability+
 ;
syntax FixedAsset
        = 
        ANY usingOffering+ ANY providedResource+
 ;
syntax BusinessPolicy
        = 
        ANY moreSpecificBusinessPolicy+ ANY broaderBusinessPolicy+ ANY derivedBusinessRule+ ANY governedBusinessProcess+
 ;
syntax BusinessRule
        = 
        ANY effectingTactic+ ANY guidedBusinessProcess+ ANY baseBusinessPolicy+
 ;
syntax Tactic
        = 
        ANY implementedStrategy+ ANY enforcedBusinessRule+
 ;
syntax Strategy
        = 
        ANY determinedOrganizationUnit+ ANY plannedMission+ ANY implementingTactic+
 ;
syntax Mission
        = 
        ANY operativeVision ANY componentStrategy+
 ;
syntax Vision
        = 
        ANY amplifyingGoal+ ANY deliveringMission+
 ;
syntax Goal
        = 
        ANY quantifyingObjective+ ANY amplifiedVision
 ;
syntax Objective
        = 
        ANY quantifiedGoal+
 ;
syntax Influencer
        = 
        ANY categorizingInfluencerCategory+ ANY sourceInfluencingOrganization+ ANY judgingAssessment+ ANY recognizingOrganizationUnit+
 ;
syntax InfluencerCategory
        = 
        ANY categorizedInfluencer+
 ;
syntax InfluencingOrganization
        = 
        ANY categorizingOrganizationCategory+ ANY influencingOrganizationUnit ANY providedInfluencer+
 ;
syntax OrganizationCategory
        = 
        ANY categorizedInfluencingOrganization+
 ;
syntax PotentialImpact
        = 
        ANY identifyingAssessment+ ANY motivatedDirective+
 ;
syntax Regulation
        = 
        regulatingDirective: ANY
 ;
syntax AssessmentCategory
        = 
        ANY categorizedAssessment+
 ;
syntax PotentialReward
        = 
        ()
 ;
syntax Risk
        = 
        ()
 ;
