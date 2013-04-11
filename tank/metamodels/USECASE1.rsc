@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module USECASE1

syntax Task
        = 
        Service service+
 ;
syntax User
        = 
        UseCase useCase+ Actor actor+
 ;
syntax Actor
        = 
        UseCase useCase+ Goal goal+ User user+
 ;
syntax Goal
        = 
        Service service+ Actor actor+
 ;
syntax UseCase
        = 
        Context context Service service+ User user+ Actor actor+
 ;
syntax Service
        = 
        UseCase useCase+ Goal goal+ Task task+
 ;
syntax Scenario
        = 
        ()
 ;
syntax Context
        = 
        PreCondition preCondition+ PostCondition postCondition+ UseCase useCase+
 ;
syntax PreCondition
        = 
        Context context+
 ;
syntax PostCondition
        = 
        Context context+
 ;
syntax Episode
        = 
        Event event+
 ;
syntax Event
        = Action
        | Responce
        | Stimilus
        | Episode episode+
 ;
syntax Action
        = 
        Episode episode+
 ;
syntax Responce
        = 
        Parameter parameter+
 ;
syntax Stimilus
        = 
        Parameter parameter+
 ;
syntax Parameter
        = 
        Stimilus stimilus+ Responce responce+
 ;
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
