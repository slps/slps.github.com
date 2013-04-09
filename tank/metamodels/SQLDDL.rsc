@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SQLDDL

syntax LocatedElement
        = 
        ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Database
        = 
        ANY tables+
 ;
syntax Table
        = 
        ANY database ANY referencedBy+ ANY elements+ ANY parameters+
 ;
syntax TableElement
        = 
        ()
 ;
syntax Column
        = 
        ANY referencedBy+ ANY name ANY type ANY canBeNull ANY default ANY keys+
 ;
syntax Key
        = 
        ()
 ;
syntax SimpleKey
        = 
        ANY isUnique ANY name ANY columns+
 ;
syntax PrimaryKey
        = 
        ANY isUnique ANY name ANY columns+
 ;
syntax ForeignKey
        = 
        ANY referencedTable ANY referencedColumns+
 ;
syntax Type
        = 
        ANY length ANY isUnsigned
 ;
syntax Parameter
        = 
        ANY table ANY value
 ;
syntax Value
        = 
        ()
 ;
syntax IntegerVal
        = 
        value: ANY
 ;
syntax NullVal
        = 
        
 ;
syntax StringVal
        = 
        value: ANY
 ;
