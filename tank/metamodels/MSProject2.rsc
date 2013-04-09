@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSProject2

syntax MSPProject
        = 
        ANY resource+ ANY link+ ANY task+
 ;
syntax MSPTask
        = 
        ANY finishDate ANY startDate ANY project ANY superTask ANY subTask+ ANY assignment+ ANY inLink+ ANY outLink+
 ;
syntax MSPLink
        = 
        ANY project ANY succ ANY pred
 ;
syntax MSPAssignment
        = 
        ANY task ANY resource
 ;
syntax MSPResource
        = 
        ANY cost ANY project ANY assignment+
 ;
syntax MSPHumanResource
        = 
        email: ANY
 ;
syntax MSPMachine
        = 
        ()
 ;
syntax Date
        = 
        ANY day ANY month ANY year
 ;
