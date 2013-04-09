@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MySQL

syntax NamedElement
        = 
        ()
 ;
syntax DataBase
        = 
        ANY tables+
 ;
syntax Table
        = 
        ANY columns+ ANY database
 ;
syntax Column
        = 
        ANY type ANY isPrimaryKey ANY null ANY defaultValue ANY comment ANY table
 ;
syntax IntegerColumn
        = 
        isAutoIncrement: ANY
 ;
syntax EnumColumn
        = 
        enumSet: ANY
 ;
syntax EnumSet
        = 
        ANY enumItems+
 ;
syntax EnumItem
        = 
        enumSet: ANY
 ;
