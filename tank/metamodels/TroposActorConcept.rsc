@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module TroposActorConcept

syntax Actor
        = 
        Dependency dependencyE+ Dependency dependencyR+ Goal goal+ Plan plan+ Resource resource+
 ;
syntax Goal
        = SoftGoal
        | HardGoal
        | Actor wanter Plan plan+ Dependency dependencyWG+ Dependency dependencyG+
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
        Actor dependee Actor depender Goal goal Goal WhyG Resource WhyR Resource resourceD Plan WhyP Plan plan
 ;
syntax Plan
        = 
        Goal isFulfilled Actor capableOf Dependency dependencyWP+ Dependency dependencyP+
 ;
syntax Resource
        = 
        Actor use Dependency dependencyWR Dependency dependencyR
 ;
