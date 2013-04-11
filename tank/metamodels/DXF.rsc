@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DXF

syntax DXF
        = 
        Mesh meshes+
 ;
syntax Mesh
        = 
        String name Point points+
 ;
syntax Point
        = 
        String name Mesh mesh Double x Double y Double z
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
