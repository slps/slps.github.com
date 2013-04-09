@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Architectural_Description

syntax Architecture
        = 
        describedBy: ANY
 ;
syntax ArchitectureDescription
        = 
        ANY selects+ ANY organizedBy+
 ;
syntax ArchitectureView
        = 
        ANY selectedBy+ ANY constituents+ ANY conformsTo+
 ;
syntax ArchitectureViewPoint
        = 
        ANY defines ANY views+
 ;
syntax MainView
        = 
        ANY isProjectedOnto+ ANY consistsOf+
 ;
syntax ModelElement
        = 
        ()
 ;
