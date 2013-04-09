@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QVT_SimpleRDBMS

syntax RModelElement
        = 
        ()
 ;
syntax Schema
        = 
        ANY tables+
 ;
syntax Table
        = 
        ANY schema ANY column+ ANY key+ ANY foreignKey+
 ;
syntax Column
        = 
        ANY type ANY owner ANY key+ ANY foreignKey+
 ;
syntax Key
        = 
        ANY owner ANY column+ ANY refersToOpposite+
 ;
syntax ForeignKey
        = 
        ANY column+ ANY owner ANY refersTo
 ;
