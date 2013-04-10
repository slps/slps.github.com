@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PNML_simplified

syntax LocatedElement
        = IdedElement
        | URI
        | PNMLDocument
        | NetContent
        | LabeledElement
        | Label
 ;
syntax IdedElement
        = 
        NetElement
 ;
syntax URI
        = 
        value: String
 ;
syntax PNMLDocument
        = 
        URI xmlns NetElement nets+
 ;
syntax NetElement
        = 
        URI type PNMLDocument document NetContent contents+ Name name
 ;
syntax LabeledElement
        = 
        Name
 ;
syntax Label
        = 
        String text LabeledElement labeledElement
 ;
syntax Name
        = 
        NetElement net NetContent netContent
 ;
syntax NetContentElement
        = Place
        | Transition
 ;
syntax Arc
        = 
        NetContentElement source NetContentElement target
 ;
syntax Place
        = 
        ()
 ;
syntax Transition
        = 
        ()
 ;
