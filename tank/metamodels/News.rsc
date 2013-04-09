@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module News

syntax Element
        = 
        ()
 ;
syntax Newspaper
        = 
        ANY language ANY copyright ANY pubDate ANY category ANY news+
 ;
syntax News
        = 
        ANY author ANY comments ANY pubDate ANY category ANY newspaper
 ;
syntax Category
        = 
        value: ANY
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
