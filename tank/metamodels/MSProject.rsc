@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSProject

syntax MSProject
        = 
        Task tasks+
 ;
syntax NamedElement
        = 
        Task
 ;
syntax Task
        = 
        String UID Task predecessors+
 ;
