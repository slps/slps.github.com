@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bibtex_1_2

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax AuthoredEntry
        = Article
        | Book
        | TechReport
        | ThesisEntry
        | InProceedings
        | Unpublished
 ;
syntax BookTitledEntry
        = 
        InCollection
 ;
syntax DatedEntry
        = Booklet
        | Proceedings
 ;
syntax TitledEntry
        = Manual
        | Booklet
        | Proceedings
 ;
syntax Article
        = 
        String volume String number String pages String note
 ;
syntax Book
        = InBook
        | InCollection
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
        pages: String
 ;
syntax Unpublished
        = 
        Author authors+
 ;
syntax Misc
        = 
        Author authors+ String title String howpublished String month String year String note
 ;
syntax String
        = 
        String
 ;
