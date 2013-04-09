@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module USECASE2

syntax Requirement
        = 
        ()
 ;
syntax NonFunctionnelRequirement
        = 
        ANY scopes+
 ;
syntax FunctionnelRequirement
        = 
        ANY specifies+
 ;
syntax UseCase
        = 
        ANY scenario+ ANY condition+ ANY interacter+ ANY specified_by+ ANY scoped_by+ ANY meet_by+
 ;
syntax Goal
        = 
        ANY to_meet+
 ;
syntax Role
        = 
        ANY interacted_with+
 ;
syntax HumanRole
        = 
        ()
 ;
syntax SystemRole
        = 
        ()
 ;
syntax EventRole
        = 
        ()
 ;
syntax Manage
        = 
        ANY managed_Resource+
 ;
syntax Resource
        = 
        ()
 ;
syntax ScenarioDescription
        = 
        useCase: ANY
 ;
syntax Condition
        = 
        ANY constrained_with+
 ;
syntax Pre
        = 
        ()
 ;
syntax Post
        = 
        ()
 ;
