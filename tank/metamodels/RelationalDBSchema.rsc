@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RelationalDBSchema

syntax NamedElement
        = DataBase
        | Table
        | Column
 ;
syntax DataBase
        = 
        String SGBDname Table tables+
 ;
syntax Table
        = 
        DataBase database Column columns+ Column key+
 ;
syntax Column
        = 
        String dataType Boolean null String defaultValue Table owner Table keyOf
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
