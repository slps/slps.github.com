@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HPROF

syntax LocatedElement
        = 
        ()
 ;
syntax Profile
        = 
        ANY header ANY threadActions+ ANY traces+ ANY times ANY methods+
 ;
syntax Method
        = 
        ANY fullyQualifiedName ANY stackTraceElements+
 ;
syntax ThreadAction
        = 
        ()
 ;
syntax ThreadStart
        = 
        ANY obj ANY name ANY group
 ;
syntax ThreadEnd
        = 
        ANY id
 ;
syntax Trace
        = 
        ANY id ANY threadId ANY elements+ ANY times+
 ;
syntax StackTraceElement
        = 
        ANY method ANY fileName ANY line ANY trace
 ;
syntax Times
        = 
        ANY unit ANY total ANY date ANY elements+
 ;
syntax Time
        = 
        ANY rank ANY self ANY accum ANY count ANY trace ANY method
 ;
syntax Date
        = 
        ANY day ANY month ANY dayOfMonth ANY hour ANY minutes ANY seconds ANY year
 ;
syntax Day
        = Monday: ()
        | Tuesday: ()
        | Wednesday: ()
        | Thursday: ()
        | Friday: ()
        | Saturday: ()
        | Sunday: ()
 ;
syntax Month
        = January: ()
        | February: ()
        | March: ()
        | April: ()
        | May: ()
        | June: ()
        | July: ()
        | August: ()
        | September: ()
        | October: ()
        | November: ()
        | December: ()
 ;
