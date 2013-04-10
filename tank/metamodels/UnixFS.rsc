@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UnixFS

syntax NamedElement
        = 
        File
 ;
syntax File
        = Directory
        | TextFile
 ;
syntax Directory
        = FileSystemRoot
        | File contents+
 ;
syntax FileSystemRoot
        = 
        ()
 ;
syntax TextFile
        = 
        String owner String group
 ;
