@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DoDAF

syntax Element
        = 
        ()
 ;
syntax System
        = 
        ANY decomposes+ ANY fulfills+
 ;
syntax SystemRole
        = 
        ANY decomposes+ ANY performs+ ANY terminatesAt
 ;
syntax SystemFunction
        = 
        ANY decomposes+ ANY consumes+ ANY produces+ ANY terminatesAt ANY mesuredBy+
 ;
syntax Service
        = 
        ()
 ;
syntax SystemRoleInterface
        = 
        originatesFrom: ANY
 ;
syntax ServiceDependency
        = 
        ()
 ;
syntax ServiceProvider
        = 
        ()
 ;
syntax ServiceMediator
        = 
        ()
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
        ANY references ANY terminatesAt
 ;
syntax SystemAtNodeInterface
        = 
        originatesFrom: ANY
 ;
syntax SystemsNode
        = 
        ANY groups+
 ;
syntax COI
        = 
        ANY comprises+ ANY defines
 ;
syntax Vocabulary
        = 
        ANY comprises+
 ;
syntax DataReference
        = 
        defineBy: ANY
 ;
syntax Performer
        = 
        ANY decomposes+ ANY fulfills+
 ;
syntax OperationalRole
        = 
        ANY decomposes+ ANY accomplishes+
 ;
syntax OperationalActivity
        = 
        ANY decomposes+ ANY supports+
 ;
syntax Product
        = 
        ANY name ANY content
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
        ANY transports+ ANY originatesFrom
 ;
syntax ConstraintOrRequirement
        = 
        ()
 ;
syntax Constraint
        = 
        
 ;
syntax QualityRequirement
        = 
        
 ;
syntax DIA
        = 
        ANY nmjic ANY higherEchelon
 ;
syntax NMJIC
        = 
        dia: ANY
 ;
syntax HigherEchelon
        = 
        ANY dia ANY jfc
 ;
syntax JFC
        = 
        ANY higherEchelon ANY f2c2 ANY componentComand
 ;
syntax F2C2
        = 
        jfc: ANY
 ;
syntax ComponentCommand
        = 
        jfc: ANY
 ;
syntax DJFLCC
        = 
        ()
 ;
syntax JFACC
        = 
        ANY subordinateAirCommand ANY aoccid+ ANY aoccpsc+
 ;
syntax JFMCC
        = 
        ()
 ;
syntax JFSOCC
        = 
        ()
 ;
syntax SubordinateAirCommand
        = 
        jfacc: ANY
 ;
syntax MAW
        = 
        ()
 ;
syntax WOC
        = 
        ()
 ;
syntax AOCCID
        = 
        ANY name ANY content
 ;
syntax AOCCombatPlanStrategyCells
        = 
        ANY name ANY content
 ;
syntax ResultData
        = 
        ANY sourceID ANY timeStamp ANY cr+ ANY bdaReport+
 ;
syntax CombatReport
        = 
        ANY friendlyUnitsInvolved ANY combatLocation ANY resultsAssessment ANY duration
 ;
syntax WSV
        = 
        ANY missionID ANY weaponfSystemID ANY videoType
 ;
syntax MISREP
        = 
        ANY missionID ANY missionObjectives ANY missionAssesments
 ;
syntax Imagery
        = 
        ANY imageType ANY spectralData ANY geospacialLocation ANY imageSize
 ;
syntax CollectionRequirement
        = 
        ANY sourceID ANY collectionTargetID ANY toBeDoneByTime ANY specialNeeds ANY rd+ ANY ato+ ANY isContainedIn+
 ;
syntax BDAReport
        = 
        ANY targetID ANY reportSourceID ANY assesmentSumart ANY validityDuration ANY rd+ ANY mea
 ;
syntax MunitionsEffectsAssesment
        = 
        ANY bdaReport ANY ato ANY tn
 ;
syntax ATO
        = 
        ANY timePeriod ANY cr+ ANY mea ANY tn+ ANY rr
 ;
syntax RestrikeRecommendation
        = 
        ANY ato ANY tn
 ;
syntax TargetNomination
        = 
        ANY ato+ ANY mea+ ANY rr ANY target
 ;
syntax TargetMaterialsAnalysis
        = 
        ANY targetID ANY target
 ;
syntax Target
        = 
        ANY cr+ ANY tn ANY holds ANY describes+
 ;
syntax MIDB
        = 
        ANY target+
 ;
