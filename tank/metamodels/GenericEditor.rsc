@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GenericEditor

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
