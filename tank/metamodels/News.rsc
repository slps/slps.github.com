@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module News

syntax Element
        = Newspaper
        | News
 ;
syntax Newspaper
        = 
        String language String copyright Date pubDate Category category News news+
 ;
syntax News
        = 
        String author String comments Date pubDate Category category Newspaper newspaper
 ;
syntax Category
        = 
        value: String
 ;
syntax Date
        = 
        DayKind eDay Integer day Integer month Integer year Integer hours Integer minutes Integer seconds
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
