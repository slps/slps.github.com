@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pnml_touzet

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Element
        = PetriNet
        | Place
        | Transition
 ;
syntax PetriNet
        = 
        Place places+ Transition transitions+ Arc arcs+
 ;
syntax Place
        = 
        TransToPlaceArc incoming+ PlaceToTransArc outgoing+
 ;
syntax Transition
        = 
        PlaceToTransArc incoming+ TransToPlaceArc outgoing+
 ;
syntax Arc
        = PlaceToTransArc
        | TransToPlaceArc
 ;
syntax PlaceToTransArc
        = 
        Place source Transition target
 ;
syntax TransToPlaceArc
        = 
        Transition source Place target
 ;
