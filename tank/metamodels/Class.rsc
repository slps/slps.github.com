@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Class

syntax NamedElt
        = 
        ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax DataType
        = 
        
 ;
syntax Class
        = 
        ANY super+ ANY attr+ ANY isAbstract
 ;
syntax Attribute
        = 
        ANY multiValued ANY type ANY owner
 ;
