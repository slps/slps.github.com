@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Book

syntax Book
        = 
        ANY title ANY chapters+
 ;
syntax Chapter
        = 
        ANY title ANY nbPages ANY author ANY book
 ;
