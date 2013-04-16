@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QVT_SimpleRDBMS

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax RModelElement
        = Schema
        | Table
        | Column
        | Key
        | ForeignKey
 ;
syntax Schema
        = 
        Table tables+
 ;
syntax Table
        = 
        Schema schema Column column+ Key key+ ForeignKey foreignKey+
 ;
syntax Column
        = 
        String type Table owner Key key+ ForeignKey foreignKey+
 ;
syntax Key
        = 
        Table owner Column column+ ForeignKey refersToOpposite+
 ;
syntax ForeignKey
        = 
        Column column+ Table owner Key refersTo
 ;
syntax String
        = 
        String
 ;
