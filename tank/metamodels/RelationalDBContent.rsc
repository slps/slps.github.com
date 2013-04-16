@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RelationalDBContent

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax NamedElement
        = DataBase
        | Table
 ;
syntax DataBase
        = 
        String SGBDname Table tables+
 ;
syntax Table
        = 
        DataBase database Tuple tuples+
 ;
syntax Tuple
        = 
        Table owner TupleElement elements+
 ;
syntax TupleElement
        = 
        Tuple tuple String value
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
