@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HPROF

syntax LocatedElement
        = Profile
        | Method
        | ThreadAction
        | Trace
        | StackTraceElement
        | Times
        | Time
        | Date
 ;
syntax Profile
        = 
        String header ThreadAction threadActions+ Trace traces+ Times times Method methods+
 ;
syntax Method
        = 
        String fullyQualifiedName StackTraceElement stackTraceElements+
 ;
syntax ThreadAction
        = ThreadStart
        | ThreadEnd
 ;
syntax ThreadStart
        = 
        Integer obj String name String group
 ;
syntax ThreadEnd
        = 
        id: Integer
 ;
syntax Trace
        = 
        Integer id Integer threadId StackTraceElement elements+ Time times+
 ;
syntax StackTraceElement
        = 
        Method method String fileName Integer line Trace trace
 ;
syntax Times
        = 
        String unit Integer total Date date Time elements+
 ;
syntax Time
        = 
        Integer rank Double self Double accum Integer count Trace trace Method method
 ;
syntax Date
        = 
        Day day Month month Integer dayOfMonth Integer hour Integer minutes Integer seconds Integer year
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
