@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WikiTable

syntax LocatedElement
        = 
        ()
 ;
syntax Table
        = 
        ANY border ANY style ANY class ANY caption ANY rows+
 ;
syntax Caption
        = 
        content: ANY
 ;
syntax Row
        = 
        ANY cells+
 ;
syntax Cell
        = 
        ANY isHeading ANY align ANY style ANY content
 ;
