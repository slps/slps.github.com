@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CPR

syntax Plan
        = 
        Plan sub_plans+ Plan super_plan Objective objectives+ Action actions+
 ;
syntax Objective
        = 
        Plan objective_plan EvaluationCriteria criterias+
 ;
syntax EvaluationCriteria
        = 
        criteria_objective: Objective
 ;
syntax Action
        = 
        Plan action_plan Action sub_actions+ Action super_action Actor actor Resource resources+ TimeSpec timeSpecs+
 ;
syntax Actor
        = 
        Action actor_action Actor sub_actors+ Actor super_actor
 ;
syntax Resource
        = 
        resource_action: Action
 ;
syntax TimeSpec
        = 
        timeSpec_action: Action
 ;
