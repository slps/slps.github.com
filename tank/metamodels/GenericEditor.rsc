@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GenericEditor

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = Editor
        | AbstractElement
        | Element
        | Format
        | Color
        | Font
        | Indent
 ;
syntax Editor
        = 
        String extension AbstractElement abstractElements+
 ;
syntax AbstractElement
        = Block
        | GroupElement
 ;
syntax Block
        = 
        String blockbegin String blockend
 ;
syntax GroupElement
        = 
        Indent indent Element element+
 ;
syntax Element
        = 
        String element GroupElement groupElement
 ;
syntax Format
        = 
        Color color Font font
 ;
syntax Color
        = 
        Integer red Integer green Integer blue
 ;
syntax Font
        = 
        String font Boolean bold Boolean italic
 ;
syntax Indent
        = 
        String retrait GroupElement groupElementIndent
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
