@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module TextualPathExp

syntax TextualPathExp
        = 
        path: Path
 ;
syntax Path
        = 
        Transition transitions+
 ;
syntax Transition
        = AlternativeTrans
        | PrimitiveTrans
 ;
syntax AlternativeTrans
        = 
        Path altPaths+
 ;
syntax PrimitiveTrans
        = 
        name: String
 ;
