@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module TroposActorConcept

syntax Actor
        = 
        ANY dependencyE+ ANY dependencyR+ ANY goal+ ANY plan+ ANY resource+
 ;
syntax Goal
        = 
        ANY wanter ANY plan+ ANY dependencyWG+ ANY dependencyG+
 ;
syntax SoftGoal
        = 
        ()
 ;
syntax HardGoal
        = 
        ()
 ;
syntax Dependency
        = 
        ANY dependee ANY depender ANY goal ANY WhyG ANY WhyR ANY resourceD ANY WhyP ANY plan
 ;
syntax Plan
        = 
        ANY isFulfilled ANY capableOf ANY dependencyWP+ ANY dependencyP+
 ;
syntax Resource
        = 
        ANY use ANY dependencyWR ANY dependencyR
 ;
