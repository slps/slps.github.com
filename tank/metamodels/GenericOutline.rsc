@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GenericOutline

syntax LocatedElement
        = Outline
        | Node
        | Label
        | LabelSuite
        | Map
 ;
syntax Outline
        = 
        String extension Node nodes+
 ;
syntax Node
        = 
        String name Label label String icon Outline outline Map mapping+
 ;
syntax Label
        = 
        String label String methodCall LabelSuite labelSuite+
 ;
syntax LabelSuite
        = 
        String label String methodCall
 ;
syntax Map
        = 
        mapString: String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
