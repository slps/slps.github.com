@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UnixFS

syntax String
        = 
        String
 ;
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
        File contents+
 ;
syntax TextFile
        = 
        String owner String group
 ;
