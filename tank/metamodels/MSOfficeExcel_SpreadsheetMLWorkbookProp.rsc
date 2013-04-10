@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeExcel_SpreadsheetMLWorkbookProp

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
        SmartTagsCollection wb_smartTags DocumentPropertiesCollection wb_docProperties CustomDocumentPropertiesCollection wb_customDocProperties ExcelWorkbook wb_excelWorkbook Worksheet wb_worksheets+
 ;
syntax Worksheet
        = 
        Workbook ws_workbook Table ws_table String name
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
