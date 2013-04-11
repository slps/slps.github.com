@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module FeatureDiagrams

syntax Node
        = Root
        | Child
        | String description Boolean preliminary String object Attribute attributes+ ORGroup no_dst+ XORGroup nx_dst+ Child cn_dst+
 ;
syntax Attribute
        = 
        String description Boolean editable Boolean key String value String name Node node
 ;
syntax Root
        = 
        String description Boolean preliminary String object Attribute attributes+ ORGroup no_dst+ XORGroup nx_dst+ Child cn_dst+
 ;
syntax Child
        = 
        Node cn_src+ XORGroup cx_src+ ORGroup co_src+
 ;
syntax XORGroup
        = 
        Boolean preliminary String name Node nx_src+ Child cx_dst+
 ;
syntax ORGroup
        = 
        Boolean preliminary String name Node no_src+ Child co_dst+
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
