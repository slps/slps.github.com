@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BibTeX1_1

syntax BibTeXFile
        = 
        ANY entries+
 ;
syntax Author
        = 
        author: ANY
 ;
syntax BibTeXEntry
        = 
        ()
 ;
syntax AuthoredEntry
        = 
        ()
 ;
syntax DatedEntry
        = 
        ()
 ;
syntax TitledEntry
        = 
        ()
 ;
syntax BookTitledEntry
        = 
        ()
 ;
syntax Article
        = 
        journal: ANY
 ;
syntax TechReport
        = 
        ()
 ;
syntax Unpublished
        = 
        note: ANY
 ;
syntax Manual
        = 
        ANY title
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
        ANY year
 ;
syntax Book
        = 
        publisher: ANY
 ;
syntax InCollection
        = 
        ()
 ;
syntax InBook
        = 
        chapter: ANY
 ;
syntax Misc
        = 
        ANY id
 ;
syntax ThesisEntry
        = 
        ()
 ;
syntax PhDThesis
        = 
        ANY school
 ;
syntax MasterThesis
        = 
        ANY school
 ;
