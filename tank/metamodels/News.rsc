@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module News

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
