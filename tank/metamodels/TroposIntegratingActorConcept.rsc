@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module TroposIntegratingActorConcept

syntax Actor
        = Agent
        | Position
        | Role
 ;
syntax Agent
        = 
        Position occupy Role play+
 ;
syntax Position
        = 
        Role cover+
 ;
syntax Role
        = 
        ()
 ;
