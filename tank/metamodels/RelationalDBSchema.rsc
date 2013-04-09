@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RelationalDBSchema

syntax NamedElement
        = 
        ()
 ;
syntax DataBase
        = 
        ANY SGBDname ANY tables+
 ;
syntax Table
        = 
        ANY database ANY columns+ ANY key+
 ;
syntax Column
        = 
        ANY dataType ANY null ANY defaultValue ANY owner ANY keyOf
 ;
