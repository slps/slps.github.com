@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RSS_2_0

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax RSS
        = 
        String version Channel channel
 ;
syntax Channel
        = 
        String title String link String description String language String copyright String managingEditor String webmaster String generator String docs Integer ttl String rating Integer skipHours+ DayKind skipDays+ RSS rss Date pubDate Date lastBuildDate Image image TextInput textInput Cloud cloud Category category Item items+
 ;
syntax Item
        = 
        String title String link String description String author String comments String guid Source source Date pubDate Enclosure enclosure Category category Channel channel
 ;
syntax Image
        = 
        String url String title String link String description Integer width Integer height Channel channel
 ;
syntax TextInput
        = 
        String title String description String name String link Channel channel
 ;
syntax Cloud
        = 
        String domain Integer port String path String registerProcedure String protocol Channel channel
 ;
syntax Category
        = 
        String domain String value
 ;
syntax Enclosure
        = 
        String url Integer lenght String type
 ;
syntax Source
        = 
        String url String value
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
