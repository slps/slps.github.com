@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RelationalDBContent

syntax NamedElement
        = DataBase
        | Table
 ;
syntax DataBase
        = 
        String SGBDname Table tables+
 ;
syntax Table
        = 
        DataBase database Tuple tuples+
 ;
syntax Tuple
        = 
        Table owner TupleElement elements+
 ;
syntax TupleElement
        = 
        Tuple tuple String value
 ;
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
