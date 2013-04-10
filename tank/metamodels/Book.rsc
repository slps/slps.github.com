@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Book

syntax Book
        = 
        String title Chapter chapters+
 ;
syntax Chapter
        = 
        String title Integer nbPages String author Book book
 ;
