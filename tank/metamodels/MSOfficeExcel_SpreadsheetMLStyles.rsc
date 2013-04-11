@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeExcel_SpreadsheetMLStyles

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
        | NumberValue
        | DateTimeTypeValue
        | BooleanValue
        | ErrorValue
 ;
syntax StringValue
        = 
        value: String
 ;
syntax NumberValue
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
syntax ErrorValue
        = 
        vt_data: Data
 ;
syntax DocumentPropertiesCollection
        = 
        Workbook dp_workbook String title String subject String keywords String description String category String author String lastAuthor String manager String company String hyperlinkBase Integer revision String presentationFormat String guid String appName VersionType version Integer totalTime DateTimeType lastPrinted DateTimeType created DateTimeType lastSaved Integer pages Integer words Integer characters Integer charactersWithSpaces Integer bytes Integer lines Integer paragraphs
 ;
syntax CustomDocumentPropertiesCollection
        = 
        Workbook cdp_workbook CustomDocumentProperty customDocumentProperties+
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
        Workbook st_workbook Cell st_cell SmartTagType smartTagTypes+
 ;
syntax Workbook
        = 
        SmartTagsCollection wb_smartTags DocumentPropertiesCollection wb_docProperties CustomDocumentPropertiesCollection wb_customDocProperties ExcelWorkbook wb_excelWorkbook StylesCollection wb_styles NamesType wb_names Worksheet wb_worksheets+
 ;
syntax Worksheet
        = 
        Workbook ws_workbook Table ws_table String name Boolean protected Boolean rightToLeft WorksheetOptionsElt w_worksheetOptions
 ;
syntax StyledElement
        = Table
        | TableElement
 ;
syntax Table
        = 
        Worksheet t_worksheet Column t_cols+ Row t_rows+ Double defaultColumnWidth Double defaultRowHeight Integer expandedColumnCount Integer expandedRowCount Integer leftCell Integer topCell Boolean fullColumns Boolean fullRows
 ;
syntax TableElement
        = ColOrRowElement
        | Cell
 ;
syntax ColOrRowElement
        = Column
        | Row
 ;
syntax Column
        = 
        Table c_table Boolean autoFitWidth Double width
 ;
syntax Row
        = 
        Table r_table Cell r_cells+ Boolean autoFitHeight Double height
 ;
syntax Cell
        = 
        SmartTagsCollection c_smartTags+ Row c_row String arrayRange String formula String hRef Double mergeAcross Double mergeDown Data c_data Comment c_comment
 ;
syntax Comment
        = 
        Cell c_cell Data com_data String author Boolean showAlways
 ;
syntax Data
        = 
        Cell d_cell Comment d_comment ValueType value
 ;
syntax ExcelWorkbook
        = 
        Workbook ew_workbook Integer selectedSheets Boolean windowHidden Boolean hideHorizontalScrollBar Boolean hideVerticalScrollBar Boolean hideWorkbookTabs Double windowHeight Double windowWidth Double windowTopX Double windowTopY Integer activeSheet String activeChart Integer firstVisibleSheet Boolean hidePivotTableFieldList Boolean protectStructure Boolean protectWindows Boolean displayInkNotes Boolean embedSaveSmartTags String futureVer Integer tabRatio Boolean windowIconic DisplayDrawingObjectsType displayDrawingObjects Boolean createBackup CalculationWorkbookType calculation Boolean doNotCalculateBeforeSave Boolean date1904 Boolean refModeR1C1 Boolean iteration Integer maxIterations Double maxChange Boolean precisionAsDisplayed Boolean doNotSaveLinkValues Boolean noAutoRecover Boolean acceptLabelsInFormulas Boolean uncalced
 ;
syntax DisplayDrawingObjectsType
        = ddot_displayShapes: ()
        | ddot_placeHolders: ()
        | ddot_hideAll: ()
 ;
syntax CalculationWorkbookType
        = cwt_automaticCalculation: ()
        | cwt_manualCalculation: ()
        | cwt_semiAutomaticCalculation: ()
 ;
syntax WorksheetOptionsElt
        = 
        Worksheet wo_worksheet Boolean fitToPage Boolean doNotDisplayColHeaders Boolean doNotDisplayRowHeaders String gridlineColor String name ExcelWorksheetTypeType excelWorksheetType Boolean intlMacro Boolean unsynced Boolean selected String codeName Boolean displayPageBreak Boolean transitionExpressionEvaluation Boolean transitionFormulaEntry Integer zoom Integer pageBreakZoom Boolean showPageBreakZoom Integer defaultRowHeight Integer defaultColumnWidth Integer standardWidth VisibleType visible Integer leftColumnVisible Boolean displayRightToLeft Integer gridlineColorIndex Boolean displayFormulas Boolean doNotDisplayGridlines Boolean doNotDisplayHeadings Boolean doNotDisplayOutline Boolean applyAutomaticOutlineStyles Boolean noSummaryRowsBelowDetail Boolean noSummaryColumnsRightDetail Boolean doNotDisplayZeros Integer activeRow Integer activeColumn Boolean filterOn String rangeSelection Integer topRowVisible Integer topRowBottomPane Integer leftColumnRightPane Integer activePane Integer splitHorizontal Integer splitVertical Boolean freezePanes Boolean frozenNoSplit Integer tabColorIndex Boolean protectContentst Boolean protectObjects Boolean protectScenarios EnableSelectionType enableSelection Boolean allowFormatCells Boolean allowSizeCols Boolean allowSizeRows Boolean allowInsertCols Boolean allowInsertRows Boolean allowInsertHyperlinks Boolean allowDeleteCols Boolean allowDeleteRows Boolean allowSort Boolean allowFilter Boolean allowUsePivotTables PageSetup wo_pageSetup Print wo_print
 ;
syntax ExcelWorksheetTypeType
        = ewt_Worksheet: ()
        | ewt_Chart: ()
        | ewt_Macro: ()
        | ewt_Dialog: ()
 ;
syntax VisibleType
        = vt_SheetVisible: ()
        | vt_SheetHidden: ()
        | vt_SheetVeryHidden: ()
 ;
syntax EnableSelectionType
        = est_UnlockedCells: ()
        | est_NoSelection: ()
 ;
syntax PageSetup
        = 
        WorksheetOptionsElt ps_worksheetOptions Layout ps_layout Header ps_header Footer ps_footer PageMarginsInfo ps_pageMargins
 ;
syntax Layout
        = 
        PageSetup l_pageSetup OrientationType orientation Boolean centerHorizontal Boolean centerVertical String startPageNumber
 ;
syntax OrientationType
        = ot_Landscape: ()
        | ot_Portrait: ()
 ;
syntax HeaderOrFooterElt
        = Header
        | Footer
 ;
syntax Header
        = 
        h_pageSetup: PageSetup
 ;
syntax Footer
        = 
        f_pageSetup: PageSetup
 ;
syntax PageMarginsInfo
        = 
        PageSetup pm_pageSetup Double left Double right Double top Double bottom
 ;
syntax Print
        = 
        WorksheetOptionsElt p_worksheetOptions Integer fitWidth Integer fitHeight Boolean leftToRight Boolean blackAndWhite Boolean draftQuality CommentsLayoutType commentsLayout Integer scale String printErrors Boolean validPrinterInfo Integer paperSizeIndex Integer horizontalResolution Integer verticalResolution Boolean gridlines Integer numberOfCopies Boolean rowColHeadings
 ;
syntax CommentsLayoutType
        = clt_InPlace: ()
        | clt_PrintNone: ()
        | clt_SheetEnd: ()
 ;
syntax StylesCollection
        = 
        Workbook s_workbook StyleType style+
 ;
syntax StyleType
        = 
        StylesCollection st_styles StyledElement st_styledElement String id String name StyleType parent StyleType st_parent AlignmentType alignment BordersType borders FontType font InteriorType interior NumberFormatType numberFormat ProtectionType protection
 ;
syntax ProtectionType
        = 
        StyleType pt_styleType Boolean protected
 ;
syntax AlignmentType
        = 
        StyleType at_styleType HorizontalAlignementType horizontal ReadingOrderType readingOrder Double indent Double rotate Boolean shrinkToFit VerticalAlignementType vertical Boolean verticalText Boolean wrapText
 ;
syntax HorizontalAlignementType
        = hat_CenterAcrossSelection: ()
        | hat_Fill: ()
        | hat_Left: ()
        | hat_Right: ()
        | hat_Justify: ()
        | hat_Distributed: ()
        | hat_Center: ()
        | hat_Automatic: ()
        | hat_JustifyDistributed: ()
 ;
syntax ReadingOrderType
        = rot_RightToLeft: ()
        | rot_LeftToRight: ()
        | rot_Context: ()
 ;
syntax VerticalAlignementType
        = vat_Top: ()
        | vat_Bottom: ()
        | vat_Justify: ()
        | vat_Distributed: ()
        | vat_Center: ()
        | vat_Automatic: ()
        | vat_JustifyDistributed: ()
 ;
syntax BordersType
        = 
        StyleType bt_styleType BorderType border
 ;
syntax BorderType
        = 
        BordersType bt_bordersType PositionType position String color LineStyleType lineStyle Double weight
 ;
syntax PositionType
        = pt_Left: ()
        | pt_Top: ()
        | pt_Right: ()
        | pt_Bottom: ()
        | pt_DiagonalLeft: ()
        | pt_DiagonalRight: ()
 ;
syntax LineStyleType
        = lst_None: ()
        | lst_Continuous: ()
        | lst_Dash: ()
        | lst_Dot: ()
        | lst_DashDot: ()
        | lst_DashDotDot: ()
        | lst_SlantDashDot: ()
        | lst_Double: ()
 ;
syntax FontType
        = 
        StyleType ft_styleType Boolean bold String color String fontName Boolean italic Boolean outline Boolean shadow Double size Boolean strikeThrough UnderlineType underline VerticalAlignType verticalAlign
 ;
syntax UnderlineType
        = ut_None: ()
        | ut_Single: ()
        | ut_Double: ()
        | ut_SingleAccounting: ()
        | ut_DoubleAccounting: ()
 ;
syntax VerticalAlignType
        = vat_None: ()
        | vat_Subscript: ()
        | vat_Superscript: ()
 ;
syntax InteriorType
        = 
        StyleType it_styleType String color PatternType pattern String patternColor
 ;
syntax PatternType
        = pt_None: ()
        | pt_Solid: ()
        | pt_Gray75: ()
        | pt_Gray50: ()
        | pt_Gray25: ()
        | pt_Gray125: ()
        | pt_Gray0625: ()
        | pt_HorzStripe: ()
        | pt_VertStripe: ()
        | pt_ReverseDiagStripe: ()
        | pt_DiagStripe: ()
        | pt_DiagCross: ()
        | pt_ThickDiagCross: ()
        | pt_ThinHorzStripe: ()
        | pt_ThinVertStripe: ()
        | pt_ThinReverseDiagStripe: ()
        | pt_ThinDiagStripe: ()
        | pt_ThinHorzCross: ()
        | pt_ThinDiagCross: ()
 ;
syntax NumberFormatType
        = 
        StyleType nft_styleType ExcelNumberFormatType format
 ;
syntax ExcelNumberFormatType
        = enft_General: ()
        | enft_General_Number: ()
        | enft_General_Date: ()
        | enft_Long_Date: ()
        | enft_Medium_Date: ()
        | enft_Short_Date: ()
        | enft_Long_Time: ()
        | enft_Medium_Time: ()
        | enft_Short_Time: ()
        | enft_Currency: ()
        | enft_Euro_Currency: ()
        | enft_Fixed: ()
        | enft_Standard: ()
        | enft_Percent: ()
        | enft_Scientific: ()
        | enft_Yes_No: ()
        | enft_True_False: ()
        | enft_On_Off: ()
 ;
syntax NamesType
        = 
        Workbook nt_workbook NamedRange namedRanges+
 ;
syntax NamedRange
        = 
        NamesType nr_namesType String name String refersTo Boolean hidden
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
