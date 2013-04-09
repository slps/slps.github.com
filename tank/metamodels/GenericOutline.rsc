@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GenericOutline

syntax LocatedElement
        = 
        ()
 ;
syntax Outline
        = 
        ANY extension ANY nodes+
 ;
syntax Node
        = 
        ANY name ANY label ANY icon ANY outline ANY mapping+
 ;
syntax Label
        = 
        ANY label ANY methodCall ANY labelSuite+
 ;
syntax LabelSuite
        = 
        ANY label ANY methodCall
 ;
syntax Map
        = 
        mapString: ANY
 ;
