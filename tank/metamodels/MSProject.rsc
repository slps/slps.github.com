@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSProject

syntax MSProject
        = 
        ANY tasks+
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Task
        = 
        ANY UID ANY predecessors+
 ;
