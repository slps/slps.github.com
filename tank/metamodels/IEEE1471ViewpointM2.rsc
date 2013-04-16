@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IEEE1471ViewpointM2

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Viewpoint
        = 
        ViewpointImport source+ Concern covers+ ViewpointDependency supplierDependency+ ViewpointDependency clientDependency+ Stakeholder isImportTo ArchitecturalConstruct architecturalConstruct+ Process process
 ;
syntax Concern
        = 
        ()
 ;
syntax Stakeholder
        = 
        concerns: Concern
 ;
syntax ViewpointImport
        = 
        ()
 ;
syntax ViewpointDependency
        = 
        Viewpoint supplier Viewpoint client
 ;
syntax Process
        = 
        Technique methodology+
 ;
syntax Technique
        = 
        AnalysisMethod methods+ Rule applies+
 ;
syntax AnalysisMethod
        = 
        analysis: Language
 ;
syntax ArchitecturalConstruct
        = Rule
        | Language
        | Mapping
        | Pattern
 ;
syntax Rule
        = ModelOrganization
        | Technique techniques+ Language guidance
 ;
syntax ModelOrganization
        = 
        Technique techniques+ Language guidance
 ;
syntax ModellingRule
        = 
        ()
 ;
syntax Language
        = 
        ()
 ;
syntax Mapping
        = 
        Language input Language ouput
 ;
syntax Pattern
        = 
        ()
 ;
