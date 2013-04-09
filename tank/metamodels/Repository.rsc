@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Repository

syntax Subsystem
        = 
        ANY classes+ ANY relations+
 ;
syntax Relation
        = 
        ANY subsystem ANY classes
 ;
syntax Class
        = 
        ANY name ANY is_deferred ANY features+ ANY parentSubsystem ANY subsystem ANY relations+
 ;
syntax Feature
        = 
        ANY theClass ANY type
 ;
syntax Type
        = 
        name: ANY
 ;
syntax Entity
        = 
        ()
 ;
syntax Routine
        = 
        ()
 ;
