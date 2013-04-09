@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CPR

syntax Plan
        = 
        ANY sub_plans+ ANY super_plan ANY objectives+ ANY actions+
 ;
syntax Objective
        = 
        ANY objective_plan ANY criterias+
 ;
syntax EvaluationCriteria
        = 
        criteria_objective: ANY
 ;
syntax Action
        = 
        ANY action_plan ANY sub_actions+ ANY super_action ANY actor ANY resources+ ANY timeSpecs+
 ;
syntax Actor
        = 
        ANY actor_action ANY sub_actors+ ANY super_actor
 ;
syntax Resource
        = 
        resource_action: ANY
 ;
syntax TimeSpec
        = 
        timeSpec_action: ANY
 ;
