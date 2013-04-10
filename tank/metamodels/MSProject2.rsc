@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSProject2

syntax MSPProject
        = 
        MSPResource resource+ MSPLink link+ MSPTask task+
 ;
syntax MSPTask
        = 
        Date finishDate Date startDate MSPProject project MSPTask superTask MSPTask subTask+ MSPAssignment assignment+ MSPLink inLink+ MSPLink outLink+
 ;
syntax MSPLink
        = 
        MSPProject project MSPTask succ MSPTask pred
 ;
syntax MSPAssignment
        = 
        MSPTask task MSPResource resource
 ;
syntax MSPResource
        = MSPHumanResource
        | MSPMachine
        | Double cost MSPProject project MSPAssignment assignment+
 ;
syntax MSPHumanResource
        = 
        email: String
 ;
syntax MSPMachine
        = 
        ()
 ;
syntax Date
        = 
        Integer day Integer month Integer year
 ;
