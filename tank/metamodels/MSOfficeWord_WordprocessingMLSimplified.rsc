@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeWord_WordprocessingMLSimplified

syntax StringProperty
        = 
        ()
 ;
syntax StringType
        = 
        val: ANY
 ;
syntax BreakType
        = bt_page: ()
        | bt_column: ()
        | bt_text_wrapping: ()
 ;
syntax NoteValue
        = ftn_normal: ()
        | ftn_separator: ()
        | ftn_continuation_separator: ()
        | ftn_continuation_notice: ()
 ;
syntax OnOffType
        = oot_on: ()
        | oot_off: ()
 ;
syntax FldCharTypeProperty
        = fctp_begin: ()
        | fctp_separate: ()
        | fctp_end: ()
 ;
syntax WordDocument
        = 
        ANY ignoreSubtree ANY ignoreElements ANY body
 ;
syntax BodyElt
        = 
        ANY be_wordDocument ANY blockLevelElts+
 ;
syntax BlockLevelElt
        = 
        ()
 ;
syntax BlockLevelChunkElt
        = 
        ()
 ;
syntax ParaElt
        = 
        ANY pContentElts+
 ;
syntax ParaContentElt
        = 
        ()
 ;
syntax RunElt
        = 
        ANY rContentElts+
 ;
syntax RunContentElt
        = 
        ()
 ;
syntax BreakElt
        = 
        type: ANY
 ;
syntax Text
        = 
        ()
 ;
syntax DelText
        = 
        ()
 ;
syntax InstrText
        = 
        ()
 ;
syntax DelInstrText
        = 
        ()
 ;
syntax NoBreakHyphen
        = 
        ANY rce_rElt
 ;
syntax SoftHyphen
        = 
        ANY rce_rElt
 ;
syntax AnnotationRef
        = 
        ANY rce_rElt
 ;
syntax FootnoteRef
        = 
        ANY rce_rElt
 ;
syntax EndnoteRef
        = 
        ANY rce_rElt
 ;
syntax Separator
        = 
        ANY rce_rElt
 ;
syntax ContinuationSeparator
        = 
        ANY rce_rElt
 ;
syntax PgNum
        = 
        ANY rce_rElt
 ;
syntax Cr
        = 
        ANY rce_rElt
 ;
syntax Footnote
        = 
        ()
 ;
syntax Endnote
        = 
        ()
 ;
syntax NoteElt
        = 
        ()
 ;
syntax Picture
        = 
        ANY rce_rElt
 ;
syntax Symbol
        = 
        ()
 ;
syntax SymElt
        = 
        ANY font ANY char
 ;
syntax Tab
        = 
        ANY rce_rElt
 ;
syntax FldChar
        = 
        ()
 ;
syntax FldCharElt
        = 
        ANY fldData ANY fldCharType ANY fldLock
 ;
