@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module TroposActorConcept

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        Actor wanter Plan plan+ Dependency dependencyWG+ Dependency dependencyG+
 ;
syntax HardGoal
        = 
        Actor wanter Plan plan+ Dependency dependencyWG+ Dependency dependencyG+
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
