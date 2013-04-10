@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Class

syntax NamedElt
        = Classifier
        | Attribute
 ;
syntax Classifier
        = DataType
        | Class
 ;
syntax DataType
        = 
        ()
 ;
syntax Class
        = 
        Class super+ Attribute attr+ Boolean isAbstract
 ;
syntax Attribute
        = 
        Boolean multiValued Classifier type Class owner
 ;
