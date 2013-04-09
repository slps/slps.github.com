@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module FeatureDiagrams

syntax Node
        = 
        ANY description ANY preliminary ANY object ANY attributes+ ANY no_dst+ ANY nx_dst+ ANY cn_dst+
 ;
syntax Attribute
        = 
        ANY description ANY editable ANY key ANY value ANY name ANY node
 ;
syntax Root
        = 
        ()
 ;
syntax Child
        = 
        ANY cn_src+ ANY cx_src+ ANY co_src+
 ;
syntax XORGroup
        = 
        ANY preliminary ANY name ANY nx_src+ ANY cx_dst+
 ;
syntax ORGroup
        = 
        ANY preliminary ANY name ANY no_src+ ANY co_dst+
 ;
