@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeWord_WordprocessingMLTableElts

syntax DateTimeType
        = 
        ANY year ANY month ANY day ANY hour ANY minute ANY second
 ;
syntax VersionType
        = 
        ANY n ANY nn
 ;
syntax ValueType
        = 
        ()
 ;
syntax StringValue
        = 
        value: ANY
 ;
syntax FloatValue
        = 
        value: ANY
 ;
syntax DateTimeTypeValue
        = 
        value: ANY
 ;
syntax BooleanValue
        = 
        value: ANY
 ;
syntax DocumentPropertiesCollection
        = 
        ANY dp_wordDocument ANY title ANY subject ANY keywords ANY description ANY category ANY author ANY lastAuthor ANY manager ANY company ANY hyperlinkBase ANY revision ANY presentationFormat ANY guid ANY appName ANY version ANY totalTime ANY lastPrinted ANY created ANY lastSaved ANY pages ANY words ANY characters ANY charactersWithSpaces ANY bytes ANY lines ANY paragraphs
 ;
syntax CustomDocumentPropertiesCollection
        = 
        ANY cdp_wordDocument ANY customDocumentProperties+
 ;
syntax CustomDocumentProperty
        = 
        ANY customDocumentProperty_cdpe ANY name ANY value
 ;
syntax SmartTagType
        = 
        ANY smartTagType_ste ANY namespaceuri ANY name ANY url
 ;
syntax SmartTagsCollection
        = 
        ANY st_wordDocument ANY smartTagTypes+
 ;
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
        ANY wd_smartTags ANY wd_docProperties ANY wd_customDocProperties ANY ignoreSubtree ANY ignoreElements ANY fonts ANY lists ANY styles ANY docPr ANY body
 ;
syntax DocPrElt
        = 
        dpe_wordDocument: ANY
 ;
syntax BodyElt
        = 
        ANY be_wordDocument ANY blockLevelElts+ ANY sectPr
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
        ANY pPr ANY pContentElts+
 ;
syntax ParaPrElt
        = 
        ppe_pElt: ANY
 ;
syntax ParaContentElt
        = 
        ()
 ;
syntax RunElt
        = 
        ANY rPr ANY rContentElts+
 ;
syntax RunPrElt
        = 
        rpe_rElt: ANY
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
        ()
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
        ()
 ;
syntax FldChar
        = 
        ()
 ;
syntax FldCharElt
        = 
        ANY fldData ANY fldCharType ANY fldLock
 ;
syntax TableElt
        = 
        ANY tblPr ANY tblGrid ANY tblContent+
 ;
syntax TablePrElt
        = 
        tpe_tblElt: ANY
 ;
syntax TableGridElt
        = 
        tge_tblElt: ANY
 ;
syntax TableContentElt
        = 
        ANY tce_tblElt ANY tr+ ANY tce_runLevelElts
 ;
syntax RowElt
        = 
        ANY re_tblContentElt ANY tblPrEx ANY trPr ANY rowContent+
 ;
syntax TablePrExElt
        = 
        tpee_rowElt: ANY
 ;
syntax TableRowPrElt
        = 
        tpe_rowElt: ANY
 ;
syntax RowContentElt
        = 
        ANY rce_rowElt ANY tc+ ANY rce_runLevelElts
 ;
syntax TableCellElt
        = 
        ANY tce_rowContentElt ANY tcPr ANY tce_content+
 ;
syntax TableCellPrElt
        = 
        tcpe_tableCellElt: ANY
 ;
syntax FontsListElt
        = 
        fle_wordDocument: ANY
 ;
syntax ListsElt
        = 
        le_wordDocument: ANY
 ;
syntax StylesElt
        = 
        se_wordDocument: ANY
 ;
syntax SectPrElt
        = 
        spe_bodyElt: ANY
 ;
syntax RunLevelElt
        = 
        ANY rle_tblContentElt ANY rle_rowContentElt
 ;
syntax CfChunk
        = 
        ANY ble_bodyElt ANY ble_note ANY ble_tableCellElt
 ;
syntax SimpleFieldElt
        = 
        ANY pce_pElt
 ;
syntax HLinkElt
        = 
        ANY pce_pElt
 ;
syntax SubDocElt
        = 
        ANY pce_pElt
 ;
syntax PictureType
        = 
        ()
 ;
syntax TabElt
        = 
        ()
 ;
