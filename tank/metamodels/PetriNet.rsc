@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PetriNet

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
