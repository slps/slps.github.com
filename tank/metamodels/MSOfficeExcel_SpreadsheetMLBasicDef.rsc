@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeExcel_SpreadsheetMLBasicDef

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
        ANY wb_smartTags ANY wb_docProperties ANY wb_customDocProperties ANY wb_worksheets+
 ;
syntax Worksheet
        = 
        ANY ws_workbook ANY ws_table ANY name
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
        ANY c_row ANY c_smartTags+ ANY arrayRange ANY formula ANY hRef ANY mergeAcross ANY mergeDown ANY c_data ANY c_comment
 ;
syntax Comment
        = 
        ANY c_cell ANY com_data ANY author ANY showAlways
 ;
syntax Data
        = 
        ANY d_cell ANY d_comment ANY value
 ;
