@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Table

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = Table
        | Caption
        | Row
        | Cell
 ;
syntax Table
        = 
        Integer border String style String class Caption caption Row rows+
 ;
syntax Caption
        = 
        content: String
 ;
syntax Row
        = 
        Cell cells+
 ;
syntax Cell
        = 
        Boolean isHeading String align String style String content
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
