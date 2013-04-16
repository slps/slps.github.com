@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Architectural_Description

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
