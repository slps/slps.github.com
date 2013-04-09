@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bibtex_1_2

syntax BibtexFile
        = 
        ANY entries+
 ;
syntax Author
        = 
        name: ANY
 ;
syntax Entry
        = 
        ()
 ;
syntax AuthoredEntry
        = 
        ()
 ;
syntax BookTitledEntry
        = 
        ()
 ;
syntax InstitutionEntry
        = 
        ()
 ;
syntax EditoredEntry
        = 
        ()
 ;
syntax DatedEntry
        = 
        ()
 ;
syntax JournalEntry
        = 
        ()
 ;
syntax TitledEntry
        = 
        ()
 ;
syntax NotedEntry
        = 
        ()
 ;
syntax PublisheredEntry
        = 
        ()
 ;
syntax SchoolEntry
        = 
        ()
 ;
syntax Article
        = 
        ANY volume ANY number ANY pages ANY note
 ;
syntax Book
        = 
        ANY volume ANY number ANY series ANY address ANY edition ANY note
 ;
syntax Booklet
        = 
        ANY authors+ ANY howpublished ANY address ANY note
 ;
syntax InBook
        = 
        ANY chapter ANY type
 ;
syntax InCollection
        = 
        ANY chapter ANY type
 ;
syntax Manual
        = 
        ANY organization ANY address ANY edition ANY note
 ;
syntax TechReport
        = 
        ANY type ANY number ANY address ANY note
 ;
syntax ThesisEntry
        = 
        ()
 ;
syntax PhdThesis
        = 
        ANY type ANY address ANY note
 ;
syntax MastersThesis
        = 
        ANY type ANY address ANY note
 ;
syntax Proceedings
        = 
        ANY editor ANY volume ANY number ANY series ANY address ANY organization ANY publisher ANY note
 ;
syntax InProceedings
        = 
        pages: ANY
 ;
syntax Conference
        = 
        ()
 ;
syntax Unpublished
        = 
        ()
 ;
syntax Misc
        = 
        ANY authors+ ANY title ANY howpublished ANY month ANY year ANY note
 ;
