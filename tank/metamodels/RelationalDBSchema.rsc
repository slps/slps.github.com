@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RelationalDBSchema

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax NamedElement
        = DataBase
        | Table
        | Column
 ;
syntax DataBase
        = 
        String SGBDname Table tables+
 ;
syntax Table
        = 
        DataBase database Column columns+ Column key+
 ;
syntax Column
        = 
        String dataType Boolean null String defaultValue Table owner Table keyOf
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
