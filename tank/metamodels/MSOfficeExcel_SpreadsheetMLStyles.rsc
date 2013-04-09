@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeExcel_SpreadsheetMLStyles

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
syntax NumberValue
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
syntax ErrorValue
        = 
        ANY vt_data
 ;
syntax DocumentPropertiesCollection
        = 
        ANY dp_workbook ANY title ANY subject ANY keywords ANY description ANY category ANY author ANY lastAuthor ANY manager ANY company ANY hyperlinkBase ANY revision ANY presentationFormat ANY guid ANY appName ANY version ANY totalTime ANY lastPrinted ANY created ANY lastSaved ANY pages ANY words ANY characters ANY charactersWithSpaces ANY bytes ANY lines ANY paragraphs
 ;
syntax CustomDocumentPropertiesCollection
        = 
        ANY cdp_workbook ANY customDocumentProperties+
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
        ANY st_workbook ANY st_cell ANY smartTagTypes+
 ;
syntax Workbook
        = 
        ANY wb_smartTags ANY wb_docProperties ANY wb_customDocProperties ANY wb_excelWorkbook ANY wb_styles ANY wb_names ANY wb_worksheets+
 ;
syntax Worksheet
        = 
        ANY ws_workbook ANY ws_table ANY name ANY protected ANY rightToLeft ANY w_worksheetOptions
 ;
syntax StyledElement
        = 
        ()
 ;
syntax Table
        = 
        ANY t_worksheet ANY t_cols+ ANY t_rows+ ANY defaultColumnWidth ANY defaultRowHeight ANY expandedColumnCount ANY expandedRowCount ANY leftCell ANY topCell ANY fullColumns ANY fullRows
 ;
syntax TableElement
        = 
        ()
 ;
syntax ColOrRowElement
        = 
        ()
 ;
syntax Column
        = 
        ANY c_table ANY autoFitWidth ANY width
 ;
syntax Row
        = 
        ANY r_table ANY r_cells+ ANY autoFitHeight ANY height
 ;
syntax Cell
        = 
        ANY c_smartTags+ ANY c_row ANY arrayRange ANY formula ANY hRef ANY mergeAcross ANY mergeDown ANY c_data ANY c_comment
 ;
syntax Comment
        = 
        ANY c_cell ANY com_data ANY author ANY showAlways
 ;
syntax Data
        = 
        ANY d_cell ANY d_comment ANY value
 ;
syntax ExcelWorkbook
        = 
        ANY ew_workbook ANY selectedSheets ANY windowHidden ANY hideHorizontalScrollBar ANY hideVerticalScrollBar ANY hideWorkbookTabs ANY windowHeight ANY windowWidth ANY windowTopX ANY windowTopY ANY activeSheet ANY activeChart ANY firstVisibleSheet ANY hidePivotTableFieldList ANY protectStructure ANY protectWindows ANY displayInkNotes ANY embedSaveSmartTags ANY futureVer ANY tabRatio ANY windowIconic ANY displayDrawingObjects ANY createBackup ANY calculation ANY doNotCalculateBeforeSave ANY date1904 ANY refModeR1C1 ANY iteration ANY maxIterations ANY maxChange ANY precisionAsDisplayed ANY doNotSaveLinkValues ANY noAutoRecover ANY acceptLabelsInFormulas ANY uncalced
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
        ANY wo_worksheet ANY fitToPage ANY doNotDisplayColHeaders ANY doNotDisplayRowHeaders ANY gridlineColor ANY name ANY excelWorksheetType ANY intlMacro ANY unsynced ANY selected ANY codeName ANY displayPageBreak ANY transitionExpressionEvaluation ANY transitionFormulaEntry ANY zoom ANY pageBreakZoom ANY showPageBreakZoom ANY defaultRowHeight ANY defaultColumnWidth ANY standardWidth ANY visible ANY leftColumnVisible ANY displayRightToLeft ANY gridlineColorIndex ANY displayFormulas ANY doNotDisplayGridlines ANY doNotDisplayHeadings ANY doNotDisplayOutline ANY applyAutomaticOutlineStyles ANY noSummaryRowsBelowDetail ANY noSummaryColumnsRightDetail ANY doNotDisplayZeros ANY activeRow ANY activeColumn ANY filterOn ANY rangeSelection ANY topRowVisible ANY topRowBottomPane ANY leftColumnRightPane ANY activePane ANY splitHorizontal ANY splitVertical ANY freezePanes ANY frozenNoSplit ANY tabColorIndex ANY protectContentst ANY protectObjects ANY protectScenarios ANY enableSelection ANY allowFormatCells ANY allowSizeCols ANY allowSizeRows ANY allowInsertCols ANY allowInsertRows ANY allowInsertHyperlinks ANY allowDeleteCols ANY allowDeleteRows ANY allowSort ANY allowFilter ANY allowUsePivotTables ANY wo_pageSetup ANY wo_print
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
        ANY ps_worksheetOptions ANY ps_layout ANY ps_header ANY ps_footer ANY ps_pageMargins
 ;
syntax Layout
        = 
        ANY l_pageSetup ANY orientation ANY centerHorizontal ANY centerVertical ANY startPageNumber
 ;
syntax OrientationType
        = ot_Landscape: ()
        | ot_Portrait: ()
 ;
syntax HeaderOrFooterElt
        = 
        ()
 ;
syntax Header
        = 
        h_pageSetup: ANY
 ;
syntax Footer
        = 
        f_pageSetup: ANY
 ;
syntax PageMarginsInfo
        = 
        ANY pm_pageSetup ANY left ANY right ANY top ANY bottom
 ;
syntax Print
        = 
        ANY p_worksheetOptions ANY fitWidth ANY fitHeight ANY leftToRight ANY blackAndWhite ANY draftQuality ANY commentsLayout ANY scale ANY printErrors ANY validPrinterInfo ANY paperSizeIndex ANY horizontalResolution ANY verticalResolution ANY gridlines ANY numberOfCopies ANY rowColHeadings
 ;
syntax CommentsLayoutType
        = clt_InPlace: ()
        | clt_PrintNone: ()
        | clt_SheetEnd: ()
 ;
syntax StylesCollection
        = 
        ANY s_workbook ANY style+
 ;
syntax StyleType
        = 
        ANY st_styles ANY st_styledElement ANY id ANY name ANY parent ANY st_parent ANY alignment ANY borders ANY font ANY interior ANY numberFormat ANY protection
 ;
syntax ProtectionType
        = 
        ANY pt_styleType ANY protected
 ;
syntax AlignmentType
        = 
        ANY at_styleType ANY horizontal ANY readingOrder ANY indent ANY rotate ANY shrinkToFit ANY vertical ANY verticalText ANY wrapText
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
        ANY bt_styleType ANY border
 ;
syntax BorderType
        = 
        ANY bt_bordersType ANY position ANY color ANY lineStyle ANY weight
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
        ANY ft_styleType ANY bold ANY color ANY fontName ANY italic ANY outline ANY shadow ANY size ANY strikeThrough ANY underline ANY verticalAlign
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
        ANY it_styleType ANY color ANY pattern ANY patternColor
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
        ANY nft_styleType ANY format
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
        ANY nt_workbook ANY namedRanges+
 ;
syntax NamedRange
        = 
        ANY nr_namesType ANY name ANY refersTo ANY hidden
 ;
