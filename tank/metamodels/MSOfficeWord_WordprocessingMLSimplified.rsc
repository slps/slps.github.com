@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeWord_WordprocessingMLSimplified

syntax StringProperty
        = 
        ()
 ;
syntax StringType
        = StringProperty
        | val: String
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
        StringProperty ignoreSubtree StringProperty ignoreElements BodyElt body
 ;
syntax BodyElt
        = 
        WordDocument be_wordDocument BlockLevelElt blockLevelElts+
 ;
syntax BlockLevelElt
        = 
        BlockLevelChunkElt
 ;
syntax BlockLevelChunkElt
        = 
        ParaElt
 ;
syntax ParaElt
        = 
        ParaContentElt pContentElts+
 ;
syntax ParaContentElt
        = 
        RunElt
 ;
syntax RunElt
        = 
        RunContentElt rContentElts+
 ;
syntax RunContentElt
        = BreakElt
        | NoBreakHyphen
        | SoftHyphen
        | AnnotationRef
        | FootnoteRef
        | EndnoteRef
        | Separator
        | ContinuationSeparator
        | PgNum
        | Cr
        | Picture
        | Tab
 ;
syntax BreakElt
        = 
        type: BreakType
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
        rce_rElt: RunElt
 ;
syntax SoftHyphen
        = 
        rce_rElt: RunElt
 ;
syntax AnnotationRef
        = 
        rce_rElt: RunElt
 ;
syntax FootnoteRef
        = 
        rce_rElt: RunElt
 ;
syntax EndnoteRef
        = 
        rce_rElt: RunElt
 ;
syntax Separator
        = 
        rce_rElt: RunElt
 ;
syntax ContinuationSeparator
        = 
        rce_rElt: RunElt
 ;
syntax PgNum
        = 
        rce_rElt: RunElt
 ;
syntax Cr
        = 
        rce_rElt: RunElt
 ;
syntax Footnote
        = 
        ()
 ;
syntax Endnote
        = 
        ()
 ;
syntax Picture
        = 
        rce_rElt: RunElt
 ;
syntax Symbol
        = 
        ()
 ;
syntax SymElt
        = 
        StringType font StringType char
 ;
syntax Tab
        = 
        rce_rElt: RunElt
 ;
syntax FldChar
        = 
        ()
 ;
syntax FldCharElt
        = 
        StringType fldData FldCharTypeProperty fldCharType OnOffType fldLock
 ;
