@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSProject2

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
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
        Double cost MSPProject project MSPAssignment assignment+
 ;
syntax Date
        = 
        Integer day Integer month Integer year
 ;
