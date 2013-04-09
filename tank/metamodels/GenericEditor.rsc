@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GenericEditor

syntax LocatedElement
        = 
        ()
 ;
syntax Editor
        = 
        ANY extension ANY abstractElements+
 ;
syntax AbstractElement
        = 
        ()
 ;
syntax Block
        = 
        ANY blockbegin ANY blockend
 ;
syntax GroupElement
        = 
        ANY indent ANY element+
 ;
syntax Element
        = 
        ANY element ANY groupElement
 ;
syntax Format
        = 
        ANY color ANY font
 ;
syntax Color
        = 
        ANY red ANY green ANY blue
 ;
syntax Font
        = 
        ANY font ANY bold ANY italic
 ;
syntax Indent
        = 
        ANY retrait ANY groupElementIndent
 ;
