@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PNML_simplified

syntax LocatedElement
        = 
        ()
 ;
syntax IdedElement
        = 
        ()
 ;
syntax URI
        = 
        value: ANY
 ;
syntax PNMLDocument
        = 
        ANY xmlns ANY nets+
 ;
syntax NetElement
        = 
        ANY type ANY document ANY contents+ ANY name
 ;
syntax NetContent
        = 
        ()
 ;
syntax LabeledElement
        = 
        ()
 ;
syntax Label
        = 
        ANY text ANY labeledElement
 ;
syntax Name
        = 
        ANY net ANY netContent
 ;
syntax NetContentElement
        = 
        ()
 ;
syntax Arc
        = 
        ANY source ANY target
 ;
syntax Place
        = 
        
 ;
syntax Transition
        = 
        
 ;
