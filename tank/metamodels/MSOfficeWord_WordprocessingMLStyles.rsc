@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeWord_WordprocessingMLStyles

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
        ANY val ANY color
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
        ANY ppe_pElt ANY ppe_styleElt ANY pStyle ANY keepNext ANY keepLines ANY pageBreakBefore ANY supressLineNumbers ANY suppressAutoHyphens ANY contextualSpacing ANY bidi ANY justification
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
        ANY rpe_rElt ANY rpe_styleElt ANY rStyle ANY rFonts ANY bold ANY bold_cs ANY italic ANY italic_cs ANY capitals ANY smallCapitals ANY strike ANY doubleStrike ANY outline ANY shadow ANY emboss ANY imprint ANY noProof ANY vanish ANY specVanish ANY rtl ANY cs ANY underline ANY color ANY highlight ANY verticalAlign ANY language
 ;
syntax LangElt
        = 
        ANY le_runPrElt ANY val ANY bidi
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
        ANY tpe_tblElt ANY tpe_styleElt
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
        ANY tpe_rowElt ANY trpe_styleElt
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
        ANY tcpe_tableCellElt ANY tcpe_styleElt
 ;
syntax FontsListElt
        = 
        ANY fle_wordDocument ANY defaultFonts ANY fonts+
 ;
syntax FontsElt
        = 
        ANY fse_fontsListElt ANY fse_runPrElt ANY hint ANY ascii ANY h_ansi ANY fareast ANY cs
 ;
syntax FontElt
        = 
        ANY fe_fontsListElt ANY name ANY altName
 ;
syntax StylesElt
        = 
        ANY se_wordDocument ANY versionOfBuiltInStylenames ANY styles+
 ;
syntax StyleElt
        = 
        ANY se_stylesElt ANY type ANY styleId ANY default ANY name ANY aliases ANY sti ANY basedOn ANY next ANY link ANY autoRedefine ANY hidden ANY semiHidden ANY locked ANY personal ANY personalCompose ANY personalReply ANY rsid ANY se_pPr ANY se_rPr ANY se_tblPr ANY se_trPr ANY se_tcPr
 ;
syntax ListsElt
        = 
        le_wordDocument: ANY
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
