@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MSOfficeExcel_SpreadsheetMLSimplified

syntax DateTimeType
        = 
        ANY year ANY month ANY day ANY hour ANY minute ANY second
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
syntax Workbook
        = 
        ANY wb_worksheets+
 ;
syntax Worksheet
        = 
        ANY ws_workbook ANY ws_table ANY name
 ;
syntax Table
        = 
        ANY t_worksheet ANY t_cols+ ANY t_rows+
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
        ANY c_row ANY arrayRange ANY formula ANY hRef ANY mergeAcross ANY mergeDown ANY c_data
 ;
syntax Data
        = 
        ANY d_cell ANY value
 ;
