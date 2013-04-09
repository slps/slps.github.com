@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module TextualPathExp

syntax TextualPathExp
        = 
        path: ANY
 ;
syntax Path
        = 
        ANY transitions+
 ;
syntax Transition
        = 
        ()
 ;
syntax AlternativeTrans
        = 
        ANY altPaths+
 ;
syntax PrimitiveTrans
        = 
        name: ANY
 ;
