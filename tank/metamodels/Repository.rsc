@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Repository

syntax Subsystem
        = 
        Class classes+ Relation relations+
 ;
syntax Relation
        = 
        Subsystem subsystem Class classes
 ;
syntax Class
        = 
        String name Boolean is_deferred Feature features+ Subsystem parentSubsystem Subsystem subsystem Relation relations+
 ;
syntax Feature
        = Entity
        | Routine
        | Class theClass Type type
 ;
syntax Type
        = 
        name: String
 ;
syntax Entity
        = 
        ()
 ;
syntax Routine
        = 
        ()
 ;
