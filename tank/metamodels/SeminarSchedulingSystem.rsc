@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SeminarSchedulingSystem

syntax SeminarSchedulingSystem
        = 
        Presenter presenter+ Seminar seminar+
 ;
syntax Presenter
        = 
        String name SeminarSchedulingSystem seminarSchedulingSystem Seminar qualifiedFor+ Offering offering+
 ;
syntax Seminar
        = 
        String title SeminarSchedulingSystem seminarSchedulingSystem Presenter qualified+ Offering offering+
 ;
syntax Offering
        = 
        Boolean is_cancelled Date date Attendee attendee+ Presenter presenter Seminar seminar
 ;
syntax Date
        = 
        Integer year Integer month Integer day
 ;
syntax Attendee
        = 
        String name Offering offering+
 ;
