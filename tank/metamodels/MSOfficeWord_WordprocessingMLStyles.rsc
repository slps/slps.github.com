@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeWord_WordprocessingMLStyles

syntax DateTimeType
        = 
        Integer year Integer month Integer day Integer hour Integer minute Integer second
 ;
syntax VersionType
        = 
        Integer n Integer nn
 ;
syntax ValueType
        = StringValue
        | FloatValue
        | DateTimeTypeValue
        | BooleanValue
 ;
syntax StringValue
        = 
        value: String
 ;
syntax FloatValue
        = 
        value: Double
 ;
syntax DateTimeTypeValue
        = 
        value: DateTimeType
 ;
syntax BooleanValue
        = 
        value: Boolean
 ;
syntax DocumentPropertiesCollection
        = 
        WordDocument dp_wordDocument String title String subject String keywords String description String category String author String lastAuthor String manager String company String hyperlinkBase Integer revision String presentationFormat String guid String appName VersionType version Integer totalTime DateTimeType lastPrinted DateTimeType created DateTimeType lastSaved Integer pages Integer words Integer characters Integer charactersWithSpaces Integer bytes Integer lines Integer paragraphs
 ;
syntax CustomDocumentPropertiesCollection
        = 
        WordDocument cdp_wordDocument CustomDocumentProperty customDocumentProperties+
 ;
syntax CustomDocumentProperty
        = 
        CustomDocumentPropertiesCollection customDocumentProperty_cdpe String name ValueType value
 ;
syntax SmartTagType
        = 
        SmartTagsCollection smartTagType_ste String namespaceuri String name String url
 ;
syntax SmartTagsCollection
        = 
        WordDocument st_wordDocument SmartTagType smartTagTypes+
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
syntax HintType
        = ht_default: ()
        | ht_fareast: ()
        | ht_cs: ()
 ;
syntax StyleKindValue
        = skv_paragraph: ()
        | skv_character: ()
        | skv_table: ()
        | skv_list: ()
 ;
syntax UnderlineProperty
        = 
        UnderlineValues val String color
 ;
syntax UnderlineValues
        = uv_single: ()
        | uv_words: ()
        | uv_double: ()
        | uv_thick: ()
        | uv_dotted: ()
        | uv_dotted_heavy: ()
        | uv_dash: ()
        | uv_dashed_heavy: ()
        | uv_dash_long: ()
        | uv_dash_long_heavy: ()
        | uv_dot_dash: ()
        | uv_dash_dot_heavy: ()
        | uv_dot_dot_dash: ()
        | uv_dash_dot_dot_heavy: ()
        | uv_wave: ()
        | uv_wavy_heavy: ()
        | uv_wavy_double: ()
        | uv_none: ()
 ;
syntax HighlightColorValues
        = hcv_black: ()
        | hcv_blue: ()
        | hcv_cyan: ()
        | hcv_green: ()
        | hcv_magenta: ()
        | hcv_red: ()
        | hcv_yellow: ()
        | hcv_white: ()
        | hcv_dark_blue: ()
        | hcv_dark_cyan: ()
        | hcv_dark_green: ()
        | hcv_dark_magenta: ()
        | hcv_dark_red: ()
        | hcv_dark_yellow: ()
        | hcv_dark_gray: ()
        | hcv_light_gray: ()
        | hcv_none: ()
 ;
syntax VerticalAlignRunType
        = vart_baseline: ()
        | vart_superscript: ()
        | vart_subscript: ()
 ;
syntax JustificationValue
        = jv_left: ()
        | jv_center: ()
        | jv_right: ()
        | jv_both: ()
 ;
syntax WordDocument
        = 
        SmartTagsCollection wd_smartTags DocumentPropertiesCollection wd_docProperties CustomDocumentPropertiesCollection wd_customDocProperties StringProperty ignoreSubtree StringProperty ignoreElements FontsListElt fonts ListsElt lists StylesElt styles DocPrElt docPr BodyElt body
 ;
syntax DocPrElt
        = 
        dpe_wordDocument: WordDocument
 ;
syntax BodyElt
        = 
        WordDocument be_wordDocument BlockLevelElt blockLevelElts+ SectPrElt sectPr
 ;
syntax BlockLevelElt
        = BlockLevelChunkElt
        | CfChunk
 ;
syntax BlockLevelChunkElt
        = ParaElt
        | TableElt
        | RunLevelElt
 ;
syntax ParaElt
        = 
        ParaPrElt pPr ParaContentElt pContentElts+
 ;
syntax ParaPrElt
        = 
        ParaElt ppe_pElt StyleElt ppe_styleElt StringProperty pStyle OnOffType keepNext OnOffType keepLines OnOffType pageBreakBefore OnOffType supressLineNumbers OnOffType suppressAutoHyphens OnOffType contextualSpacing OnOffType bidi JustificationValue justification
 ;
syntax ParaContentElt
        = RunElt
        | SimpleFieldElt
        | HLinkElt
        | SubDocElt
 ;
syntax RunElt
        = 
        RunPrElt rPr RunContentElt rContentElts+
 ;
syntax RunPrElt
        = 
        RunElt rpe_rElt StyleElt rpe_styleElt StringProperty rStyle FontsElt rFonts OnOffType bold OnOffType bold_cs OnOffType italic OnOffType italic_cs OnOffType capitals OnOffType smallCapitals OnOffType strike OnOffType doubleStrike OnOffType outline OnOffType shadow OnOffType emboss OnOffType imprint OnOffType noProof OnOffType vanish OnOffType specVanish OnOffType rtl OnOffType cs UnderlineProperty underline String color HighlightColorValues highlight VerticalAlignRunType verticalAlign LangElt language
 ;
syntax LangElt
        = 
        RunPrElt le_runPrElt String val String bidi
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
        | Text
        | DelText
        | InstrText
        | DelInstrText
        | Footnote
        | Endnote
        | Picture
        | Symbol
        | Tab
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
syntax TableElt
        = 
        TablePrElt tblPr TableGridElt tblGrid TableContentElt tblContent+
 ;
syntax TablePrElt
        = 
        TableElt tpe_tblElt StyleElt tpe_styleElt
 ;
syntax TableGridElt
        = 
        tge_tblElt: TableElt
 ;
syntax TableContentElt
        = 
        TableElt tce_tblElt RowElt tr+ RunLevelElt tce_runLevelElts
 ;
syntax RowElt
        = 
        TableContentElt re_tblContentElt TablePrExElt tblPrEx TableRowPrElt trPr RowContentElt rowContent+
 ;
syntax TablePrExElt
        = 
        tpee_rowElt: RowElt
 ;
syntax TableRowPrElt
        = 
        RowElt tpe_rowElt StyleElt trpe_styleElt
 ;
syntax RowContentElt
        = 
        RowElt rce_rowElt TableCellElt tc+ RunLevelElt rce_runLevelElts
 ;
syntax TableCellElt
        = 
        RowContentElt tce_rowContentElt TableCellPrElt tcPr BlockLevelElt tce_content+
 ;
syntax TableCellPrElt
        = 
        TableCellElt tcpe_tableCellElt StyleElt tcpe_styleElt
 ;
syntax FontsListElt
        = 
        WordDocument fle_wordDocument FontsElt defaultFonts FontElt fonts+
 ;
syntax FontsElt
        = 
        FontsListElt fse_fontsListElt RunPrElt fse_runPrElt HintType hint StringType ascii StringType h_ansi StringType fareast StringType cs
 ;
syntax FontElt
        = 
        FontsListElt fe_fontsListElt StringType name StringProperty altName
 ;
syntax StylesElt
        = 
        WordDocument se_wordDocument Double versionOfBuiltInStylenames StyleElt styles+
 ;
syntax StyleElt
        = 
        StylesElt se_stylesElt StyleKindValue type StringType styleId OnOffType default StringProperty name StringProperty aliases Double sti StringProperty basedOn StringProperty next StringProperty link OnOffType autoRedefine OnOffType hidden OnOffType semiHidden OnOffType locked OnOffType personal OnOffType personalCompose OnOffType personalReply StringType rsid ParaPrElt se_pPr RunPrElt se_rPr TablePrElt se_tblPr TableRowPrElt se_trPr TableCellPrElt se_tcPr
 ;
syntax ListsElt
        = 
        le_wordDocument: WordDocument
 ;
syntax SectPrElt
        = 
        spe_bodyElt: BodyElt
 ;
syntax RunLevelElt
        = 
        TableContentElt rle_tblContentElt RowContentElt rle_rowContentElt
 ;
syntax CfChunk
        = 
        BodyElt ble_bodyElt NoteElt ble_note TableCellElt ble_tableCellElt
 ;
syntax SimpleFieldElt
        = 
        pce_pElt: ParaElt
 ;
syntax HLinkElt
        = 
        pce_pElt: ParaElt
 ;
syntax SubDocElt
        = 
        pce_pElt: ParaElt
 ;
syntax PictureType
        = Picture
        | ()
 ;
syntax TabElt
        = Tab
        | ()
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
