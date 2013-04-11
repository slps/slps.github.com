@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bibtex_1_2

syntax BibtexFile
        = 
        Entry entries+
 ;
syntax Author
        = 
        name: String
 ;
syntax Entry
        = AuthoredEntry
        | BookTitledEntry
        | InstitutionEntry
        | EditoredEntry
        | DatedEntry
        | JournalEntry
        | TitledEntry
        | NotedEntry
        | PublisheredEntry
        | SchoolEntry
        | Misc
 ;
syntax Article
        = 
        String volume String number String pages String note
 ;
syntax Book
        = InBook
        | String volume String number String series String address String edition String note
 ;
syntax Booklet
        = 
        Author authors+ String howpublished String address String note
 ;
syntax InBook
        = 
        String chapter String type
 ;
syntax InCollection
        = 
        String chapter String type
 ;
syntax Manual
        = 
        String organization String address String edition String note
 ;
syntax TechReport
        = 
        String type String number String address String note
 ;
syntax ThesisEntry
        = PhdThesis
        | MastersThesis
 ;
syntax PhdThesis
        = 
        String type String address String note
 ;
syntax MastersThesis
        = 
        String type String address String note
 ;
syntax Proceedings
        = 
        String editor String volume String number String series String address String organization String publisher String note
 ;
syntax InProceedings
        = Conference
        | pages: String
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
        Author authors+ String title String howpublished String month String year String note
 ;
