@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RelationalDBContent

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
        ANY database ANY tuples+
 ;
syntax Tuple
        = 
        ANY owner ANY elements+
 ;
syntax TupleElement
        = 
        ANY tuple ANY value
 ;
