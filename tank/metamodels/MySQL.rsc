@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MySQL

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
syntax NamedElement
        = DataBase
        | Table
        | Column
        | EnumItem
 ;
syntax DataBase
        = 
        Table tables+
 ;
syntax Table
        = 
        Column columns+ DataBase database
 ;
syntax Column
        = IntegerColumn
        | EnumColumn
        | String type Boolean isPrimaryKey Boolean null String defaultValue String comment Table table
 ;
syntax IntegerColumn
        = 
        isAutoIncrement: Boolean
 ;
syntax EnumColumn
        = 
        enumSet: EnumSet
 ;
syntax EnumSet
        = 
        EnumItem enumItems+
 ;
syntax EnumItem
        = 
        enumSet: EnumSet
 ;
