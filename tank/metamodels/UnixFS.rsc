@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UnixFS

syntax NamedElement
        = 
        ()
 ;
syntax File
        = 
        ()
 ;
syntax Directory
        = 
        ANY contents+
 ;
syntax FileSystemRoot
        = 
        ()
 ;
syntax TextFile
        = 
        ANY owner ANY group
 ;
