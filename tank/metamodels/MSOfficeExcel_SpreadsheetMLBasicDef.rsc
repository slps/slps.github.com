@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeExcel_SpreadsheetMLBasicDef

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
        SmartTagsCollection wb_smartTags DocumentPropertiesCollection wb_docProperties CustomDocumentPropertiesCollection wb_customDocProperties Worksheet wb_worksheets+
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
        Row c_row SmartTagsCollection c_smartTags+ String arrayRange String formula String hRef Double mergeAcross Double mergeDown Data c_data Comment c_comment
 ;
syntax Comment
        = 
        Cell c_cell Data com_data String author Boolean showAlways
 ;
syntax Data
        = 
        Cell d_cell Comment d_comment ValueType value
 ;
