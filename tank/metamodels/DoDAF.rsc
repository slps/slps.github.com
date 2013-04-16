@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DoDAF

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Element
        = System
        | SystemRole
        | SystemFunction
        | SystemRoleInterface
        | SystemAtNode
        | SystemAtNodeInterface
        | SystemsNode
        | COI
        | Vocabulary
        | DataReference
        | Performer
        | OperationalRole
        | OperationalActivity
        | Product
        | SystemProductFlow
        | ConstraintOrRequirement
        | DIA
        | NMJIC
        | HigherEchelon
        | JFC
        | F2C2
        | ComponentCommand
        | SubordinateAirCommand
        | AOCCID
        | AOCCombatPlanStrategyCells
 ;
syntax System
        = 
        System decomposes+ SystemRole fulfills+
 ;
syntax SystemRole
        = ServiceProvider
        | SystemRole decomposes+ SystemFunction performs+ SystemRoleInterface terminatesAt
 ;
syntax SystemFunction
        = Service
        | SystemFunction decomposes+ Product consumes+ Product produces+ SystemProductFlow terminatesAt ConstraintOrRequirement mesuredBy+
 ;
syntax Service
        = 
        SystemFunction decomposes+ Product consumes+ Product produces+ SystemProductFlow terminatesAt ConstraintOrRequirement mesuredBy+
 ;
syntax SystemRoleInterface
        = ServiceDependency
        | originatesFrom: SystemRole
 ;
syntax ServiceDependency
        = 
        originatesFrom: SystemRole
 ;
syntax ServiceProvider
        = 
        ServiceMediator
 ;
syntax ServiceMediator
        = ServiceRegistry
        | ServiceLocator
        | ServiceBroker
 ;
syntax ServiceRegistry
        = 
        ()
 ;
syntax ServiceLocator
        = 
        ()
 ;
syntax ServiceBroker
        = 
        ()
 ;
syntax SystemAtNode
        = 
        System references SystemAtNodeInterface terminatesAt
 ;
syntax SystemAtNodeInterface
        = 
        originatesFrom: SystemAtNode
 ;
syntax SystemsNode
        = 
        SystemAtNode groups+
 ;
syntax COI
        = 
        Performer comprises+ Vocabulary defines
 ;
syntax Vocabulary
        = 
        DataReference comprises+
 ;
syntax DataReference
        = 
        defineBy: Data
 ;
syntax Performer
        = 
        Performer decomposes+ OperationalRole fulfills+
 ;
syntax OperationalRole
        = 
        OperationalRole decomposes+ OperationalActivity accomplishes+
 ;
syntax OperationalActivity
        = 
        OperationalRole decomposes+ SystemFunction supports+
 ;
syntax Product
        = Material
        | Data
 ;
syntax Material
        = 
        ()
 ;
syntax Data
        = 
        ()
 ;
syntax SystemProductFlow
        = 
        Product transports+ SystemFunction originatesFrom
 ;
syntax ConstraintOrRequirement
        = Constraint
        | QualityRequirement
 ;
syntax Constraint
        = 
        ()
 ;
syntax QualityRequirement
        = 
        ()
 ;
syntax DIA
        = 
        NMJIC nmjic HigherEchelon higherEchelon
 ;
syntax NMJIC
        = 
        dia: DIA
 ;
syntax HigherEchelon
        = 
        DIA dia JFC jfc
 ;
syntax JFC
        = 
        HigherEchelon higherEchelon F2C2 f2c2 ComponentCommand componentComand
 ;
syntax F2C2
        = 
        jfc: JFC
 ;
syntax ComponentCommand
        = DJFLCC
        | JFACC
        | JFMCC
        | JFSOCC
        | jfc: JFC
 ;
syntax DJFLCC
        = 
        jfc: JFC
 ;
syntax JFACC
        = 
        SubordinateAirCommand subordinateAirCommand AOCCID aoccid+ AOCCombatPlanStrategyCells aoccpsc+
 ;
syntax JFMCC
        = 
        jfc: JFC
 ;
syntax JFSOCC
        = 
        jfc: JFC
 ;
syntax SubordinateAirCommand
        = MAW
        | WOC
        | jfacc: JFACC
 ;
syntax MAW
        = 
        jfacc: JFACC
 ;
syntax WOC
        = 
        jfacc: JFACC
 ;
syntax AOCCID
        = 
        String name String content
 ;
syntax AOCCombatPlanStrategyCells
        = 
        String name String content
 ;
syntax ResultData
        = CombatReport
        | WSV
        | MISREP
        | Imagery
        | String sourceID String timeStamp CollectionRequirement cr+ BDAReport bdaReport+
 ;
syntax CombatReport
        = 
        String friendlyUnitsInvolved String combatLocation String resultsAssessment String duration
 ;
syntax WSV
        = 
        String missionID String weaponfSystemID String videoType
 ;
syntax MISREP
        = 
        String missionID String missionObjectives String missionAssesments
 ;
syntax Imagery
        = 
        String imageType String spectralData String geospacialLocation Integer imageSize
 ;
syntax CollectionRequirement
        = 
        String sourceID String collectionTargetID String toBeDoneByTime String specialNeeds ResultData rd+ ATO ato+ Target isContainedIn+
 ;
syntax BDAReport
        = 
        String targetID String reportSourceID String assesmentSumart String validityDuration ResultData rd+ MunitionsEffectsAssesment mea
 ;
syntax MunitionsEffectsAssesment
        = 
        BDAReport bdaReport ATO ato TargetNomination tn
 ;
syntax ATO
        = 
        String timePeriod CollectionRequirement cr+ MunitionsEffectsAssesment mea TargetNomination tn+ RestrikeRecommendation rr
 ;
syntax RestrikeRecommendation
        = 
        ATO ato TargetNomination tn
 ;
syntax TargetNomination
        = 
        ATO ato+ MunitionsEffectsAssesment mea+ RestrikeRecommendation rr Target target
 ;
syntax TargetMaterialsAnalysis
        = 
        String targetID Target target
 ;
syntax Target
        = 
        CollectionRequirement cr+ TargetNomination tn MIDB holds TargetMaterialsAnalysis describes+
 ;
syntax MIDB
        = 
        Target target+
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
