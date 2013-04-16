@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HPROF

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
