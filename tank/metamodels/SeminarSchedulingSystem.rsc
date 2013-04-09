@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SeminarSchedulingSystem

syntax SeminarSchedulingSystem
        = 
        ANY presenter+ ANY seminar+
 ;
syntax Presenter
        = 
        ANY name ANY seminarSchedulingSystem ANY qualifiedFor+ ANY offering+
 ;
syntax Seminar
        = 
        ANY title ANY seminarSchedulingSystem ANY qualified+ ANY offering+
 ;
syntax Offering
        = 
        ANY is_cancelled ANY date ANY attendee+ ANY presenter ANY seminar
 ;
syntax Date
        = 
        ANY year ANY month ANY day
 ;
syntax Attendee
        = 
        ANY name ANY offering+
 ;
