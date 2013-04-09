@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module USECASE1

syntax Task
        = 
        ANY service+
 ;
syntax User
        = 
        ANY useCase+ ANY actor+
 ;
syntax Actor
        = 
        ANY useCase+ ANY goal+ ANY user+
 ;
syntax Goal
        = 
        ANY service+ ANY actor+
 ;
syntax UseCase
        = 
        ANY context ANY service+ ANY user+ ANY actor+
 ;
syntax Service
        = 
        ANY useCase+ ANY goal+ ANY task+
 ;
syntax Scenario
        = 
        ()
 ;
syntax Context
        = 
        ANY preCondition+ ANY postCondition+ ANY useCase+
 ;
syntax PreCondition
        = 
        ANY context+
 ;
syntax PostCondition
        = 
        ANY context+
 ;
syntax Episode
        = 
        ANY event+
 ;
syntax Event
        = 
        ANY episode+
 ;
syntax Action
        = 
        ()
 ;
syntax Responce
        = 
        ANY parameter+
 ;
syntax Stimilus
        = 
        ANY parameter+
 ;
syntax Parameter
        = 
        ANY stimilus+ ANY responce+
 ;
