@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Architectural_Description

syntax Architecture
        = 
        describedBy: ArchitectureDescription
 ;
syntax ArchitectureDescription
        = 
        ArchitectureView selects+ ArchitectureView organizedBy+
 ;
syntax ArchitectureView
        = 
        ArchitectureDescription selectedBy+ ModelElement constituents+ ArchitectureViewPoint conformsTo+
 ;
syntax ArchitectureViewPoint
        = 
        MainView defines ArchitectureView views+
 ;
syntax MainView
        = 
        ArchitectureView isProjectedOnto+ ModelElement consistsOf+
 ;
syntax ModelElement
        = 
        ()
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
