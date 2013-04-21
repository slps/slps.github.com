@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pnml_guyard_simplified

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = IdedElement
        | URI
        | PNMLDocument
        | NetContent
        | LabeledElement
        | Label
 ;
syntax IdedElement
        = NetElement
        | NetContentElement
        | Arc
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
syntax NetContent
        = NetContentElement
        | Arc
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
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
