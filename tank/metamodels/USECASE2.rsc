@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module USECASE2

syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax Requirement
        = NonFunctionnelRequirement
        | FunctionnelRequirement
 ;
syntax NonFunctionnelRequirement
        = 
        UseCase scopes+
 ;
syntax FunctionnelRequirement
        = 
        UseCase specifies+
 ;
syntax UseCase
        = Manage
        | ScenarioDescription scenario+ Condition condition+ Role interacter+ FunctionnelRequirement specified_by+ NonFunctionnelRequirement scoped_by+ Goal meet_by+
 ;
syntax Goal
        = 
        UseCase to_meet+
 ;
syntax Role
        = HumanRole
        | SystemRole
        | EventRole
        | UseCase interacted_with+
 ;
syntax HumanRole
        = 
        UseCase interacted_with+
 ;
syntax SystemRole
        = 
        UseCase interacted_with+
 ;
syntax EventRole
        = 
        UseCase interacted_with+
 ;
syntax Manage
        = 
        Resource managed_Resource+
 ;
syntax Resource
        = 
        ()
 ;
syntax ScenarioDescription
        = 
        useCase: UseCase
 ;
syntax Condition
        = Pre
        | Post
        | UseCase constrained_with+
 ;
syntax Pre
        = 
        UseCase constrained_with+
 ;
syntax Post
        = 
        UseCase constrained_with+
 ;
