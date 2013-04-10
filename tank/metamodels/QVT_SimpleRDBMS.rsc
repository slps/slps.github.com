@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QVT_SimpleRDBMS

syntax RModelElement
        = Schema
        | Table
        | Column
        | Key
        | ForeignKey
 ;
syntax Schema
        = 
        Table tables+
 ;
syntax Table
        = 
        Schema schema Column column+ Key key+ ForeignKey foreignKey+
 ;
syntax Column
        = 
        String type Table owner Key key+ ForeignKey foreignKey+
 ;
syntax Key
        = 
        Table owner Column column+ ForeignKey refersToOpposite+
 ;
syntax ForeignKey
        = 
        Column column+ Table owner Key refersTo
 ;
