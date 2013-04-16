@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeWord_WordprocessingMLSimplified

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax StringProperty
        = 
        val: String
 ;
syntax StringType
        = StringProperty
        | Text
        | DelText
        | InstrText
        | DelInstrText
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
        | Text
        | DelText
        | InstrText
        | DelInstrText
        | Footnote
        | Endnote
        | Symbol
        | FldChar
 ;
syntax BreakElt
        = 
        type: BreakType
 ;
syntax Text
        = 
        RunElt rce_rElt String val
 ;
syntax DelText
        = 
        RunElt rce_rElt String val
 ;
syntax InstrText
        = 
        RunElt rce_rElt String val
 ;
syntax DelInstrText
        = 
        RunElt rce_rElt String val
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
        RunElt rce_rElt BlockLevelElt n_blockLevelElts+ NoteValue type OnOffType suppressRef
 ;
syntax Endnote
        = 
        RunElt rce_rElt BlockLevelElt n_blockLevelElts+ NoteValue type OnOffType suppressRef
 ;
syntax NoteElt
        = Footnote
        | Endnote
 ;
syntax Picture
        = 
        rce_rElt: RunElt
 ;
syntax Symbol
        = 
        RunElt rce_rElt StringType font StringType char
 ;
syntax SymElt
        = Symbol
        | StringType font StringType char
 ;
syntax Tab
        = 
        rce_rElt: RunElt
 ;
syntax FldChar
        = 
        RunElt rce_rElt StringType fldData FldCharTypeProperty fldCharType OnOffType fldLock
 ;
syntax FldCharElt
        = FldChar
        | StringType fldData FldCharTypeProperty fldCharType OnOffType fldLock
 ;
