@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Table

syntax Table
        = 
        Row rows+
 ;
syntax Row
        = 
        Cell cells+
 ;
syntax Cell
        = 
        content: String
 ;
