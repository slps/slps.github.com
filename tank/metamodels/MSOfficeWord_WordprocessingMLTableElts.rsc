@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeWord_WordprocessingMLTableElts

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
        ppe_pElt: ParaElt
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
        rpe_rElt: RunElt
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
        ()
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
        ()
 ;
syntax FldChar
        = 
        ()
 ;
syntax FldCharElt
        = 
        StringType fldData FldCharTypeProperty fldCharType OnOffType fldLock
 ;
syntax TableElt
        = 
        TablePrElt tblPr TableGridElt tblGrid TableContentElt tblContent+
 ;
syntax TablePrElt
        = 
        tpe_tblElt: TableElt
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
        tpe_rowElt: RowElt
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
        tcpe_tableCellElt: TableCellElt
 ;
syntax FontsListElt
        = 
        fle_wordDocument: WordDocument
 ;
syntax ListsElt
        = 
        le_wordDocument: WordDocument
 ;
syntax StylesElt
        = 
        se_wordDocument: WordDocument
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
        = 
        ()
 ;
syntax TabElt
        = 
        ()
 ;
