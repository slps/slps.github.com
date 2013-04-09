@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DXF

syntax DXF
        = 
        ANY meshes+
 ;
syntax Mesh
        = 
        ANY name ANY points+
 ;
syntax Point
        = 
        ANY name ANY mesh ANY x ANY y ANY z
 ;
