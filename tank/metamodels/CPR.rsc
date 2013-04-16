@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CPR

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
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
