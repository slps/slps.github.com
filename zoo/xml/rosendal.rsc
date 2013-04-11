@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Rosendal

syntax Node
        = Attribute
        | Text
        | Element
 ;
syntax Attribute
        = 
        Integer startLine Integer startColumn Integer endLine Integer endColumn String name String value Element parent
 ;
syntax Text
        = 
        Integer startLine Integer startColumn Integer endLine Integer endColumn String name String value Element parent
 ;
syntax Element
        = Root
        | Node children+
 ;
syntax Root
        = 
        ()
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
