@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WikiTable

syntax LocatedElement
        = Table
        | Caption
        | Row
        | Cell
 ;
syntax Table
        = 
        Integer border String style String class Caption caption Row rows+
 ;
syntax Caption
        = 
        content: String
 ;
syntax Row
        = 
        Cell cells+
 ;
syntax Cell
        = 
        Boolean isHeading String align String style String content
 ;
