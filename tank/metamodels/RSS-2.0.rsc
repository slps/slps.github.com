@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RSS_2_0

syntax RSS
        = 
        ANY version ANY channel
 ;
syntax Channel
        = 
        ANY title ANY link ANY description ANY language ANY copyright ANY managingEditor ANY webmaster ANY generator ANY docs ANY ttl ANY rating ANY skipHours+ ANY skipDays+ ANY rss ANY pubDate ANY lastBuildDate ANY image ANY textInput ANY cloud ANY category ANY items+
 ;
syntax Item
        = 
        ANY title ANY link ANY description ANY author ANY comments ANY guid ANY source ANY pubDate ANY enclosure ANY category ANY channel
 ;
syntax Image
        = 
        ANY url ANY title ANY link ANY description ANY width ANY height ANY channel
 ;
syntax TextInput
        = 
        ANY title ANY description ANY name ANY link ANY channel
 ;
syntax Cloud
        = 
        ANY domain ANY port ANY path ANY registerProcedure ANY protocol ANY channel
 ;
syntax Category
        = 
        ANY domain ANY value
 ;
syntax Enclosure
        = 
        ANY url ANY lenght ANY type
 ;
syntax Source
        = 
        ANY url ANY value
 ;
syntax Date
        = 
        ANY eDay ANY day ANY month ANY year ANY hours ANY minutes ANY seconds
 ;
syntax DayKind
        = Monday: ()
        | Tuesday: ()
        | Wednesday: ()
        | Thursday: ()
        | Friday: ()
        | Saturday: ()
        | Sunday: ()
 ;
