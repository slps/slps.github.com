@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Table

syntax Table
        = 
        ANY rows+
 ;
syntax Row
        = 
        ANY cells+
 ;
syntax Cell
        = 
        content: ANY
 ;
