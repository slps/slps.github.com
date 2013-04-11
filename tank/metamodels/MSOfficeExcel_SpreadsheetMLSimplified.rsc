@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeExcel_SpreadsheetMLSimplified

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
syntax DateTimeType
        = 
        Integer year Integer month Integer day Integer hour Integer minute Integer second
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
syntax Workbook
        = 
        Worksheet wb_worksheets+
 ;
syntax Worksheet
        = 
        Workbook ws_workbook Table ws_table String name
 ;
syntax Table
        = 
        Worksheet t_worksheet Column t_cols+ Row t_rows+
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
        Row c_row String arrayRange String formula String hRef Double mergeAcross Double mergeDown Data c_data
 ;
syntax Data
        = 
        Cell d_cell ValueType value
 ;
