@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bibtex_1_1

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax BibTeXFile
        = 
        BibTeXEntry entries+
 ;
syntax Author
        = 
        author: String
 ;
syntax BibTeXEntry
        = AuthoredEntry
        | DatedEntry
        | TitledEntry
        | BookTitledEntry
        | Misc
 ;
syntax AuthoredEntry
        = Article
        | TechReport
        | Unpublished
        | Book
        | ThesisEntry
 ;
syntax DatedEntry
        = Booklet
        | Proceedings
 ;
syntax TitledEntry
        = Manual
        | Unpublished
        | Proceedings
 ;
syntax BookTitledEntry
        = 
        InCollection
 ;
syntax Article
        = 
        journal: String
 ;
syntax TechReport
        = 
        Author authors+
 ;
syntax Unpublished
        = 
        note: String
 ;
syntax Manual
        = 
        title: String
 ;
syntax Proceedings
        = InProceedings
        | String year String title
 ;
syntax InProceedings
        = 
        ()
 ;
syntax Booklet
        = 
        year: String
 ;
syntax Book
        = InBook
        | InCollection
        | publisher: String
 ;
syntax InCollection
        = 
        String publisher String booktitle
 ;
syntax InBook
        = 
        chapter: Integer
 ;
syntax Misc
        = 
        id: String
 ;
syntax ThesisEntry
        = PhDThesis
        | MasterThesis
 ;
syntax PhDThesis
        = 
        school: String
 ;
syntax MasterThesis
        = 
        school: String
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
