@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MySQL

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
