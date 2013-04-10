@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bibtex_1_1

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
syntax DatedEntry
        = 
        Booklet
 ;
syntax TitledEntry
        = 
        Manual
 ;
syntax Article
        = 
        journal: String
 ;
syntax TechReport
        = 
        ()
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
        = 
        ()
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
        | publisher: String
 ;
syntax InCollection
        = 
        ()
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
