@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Atom

syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax ATOM
        = 
        String title String id String subtitle String rights String icon String logo Link links+ Date lastUpdate Generator generator Category categories+ Author authors+ Contributor contibutors+ Entry entries+
 ;
syntax Entry
        = 
        String title String id String rights String summary Link links+ Source source Date published Date lastUpdate Content content Category categories+ Author authors+ Contributor contibutors+ ATOM atom
 ;
syntax Source
        = 
        String id String icon String logo String rights String title String subtitle Link links+ Date lastUpdate Generator generator Contributor contributors+ Category categories+ Author author
 ;
syntax Content
        = InLineXHTMLContent
        | InLineOtherContent
        | OutOfLineContent
        | type: String
 ;
syntax InLineXHTMLContent
        = 
        type: String
 ;
syntax InLineOtherContent
        = 
        type: String
 ;
syntax OutOfLineContent
        = 
        src: String
 ;
syntax Generator
        = 
        String uri String version
 ;
syntax Category
        = 
        String term String scheme String label
 ;
syntax Link
        = 
        String href String rel String type String hreflang String title Integer lenght
 ;
syntax Person
        = Author
        | Contributor
        | String name String uri String email
 ;
syntax Author
        = 
        String name String uri String email
 ;
syntax Contributor
        = 
        String name String uri String email
 ;
syntax Date
        = 
        Integer day Integer month Integer year Integer hours Integer minutes Integer seconds
 ;
