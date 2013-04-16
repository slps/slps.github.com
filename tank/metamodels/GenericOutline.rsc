@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GenericOutline

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = Outline
        | Node
        | Label
        | LabelSuite
        | Map
 ;
syntax Outline
        = 
        String extension Node nodes+
 ;
syntax Node
        = 
        String name Label label String icon Outline outline Map mapping+
 ;
syntax Label
        = 
        String label String methodCall LabelSuite labelSuite+
 ;
syntax LabelSuite
        = 
        String label String methodCall
 ;
syntax Map
        = 
        mapString: String
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
