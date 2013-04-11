@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PIF

syntax Entity
        = Activity
        | Object
        | Timepoint
        | Relation
 ;
syntax Activity
        = 
        Decision
 ;
syntax Object
        = 
        Agent
 ;
syntax Timepoint
        = 
        ()
 ;
syntax Relation
        = Creates
        | Modifies
        | Before
        | Uses
        | Performs
        | ActivityStatus
        | Succesor
 ;
syntax Decision
        = 
        ()
 ;
syntax Agent
        = 
        ()
 ;
syntax Creates
        = 
        ()
 ;
syntax Modifies
        = 
        ()
 ;
syntax Before
        = 
        ()
 ;
syntax Uses
        = 
        ()
 ;
syntax Performs
        = 
        ()
 ;
syntax ActivityStatus
        = 
        ()
 ;
syntax Succesor
        = 
        ()
 ;
