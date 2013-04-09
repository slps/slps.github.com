@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SPEM

syntax ArtifactUsageName
        = 
        ANY isInput ANY isOutput ANY hasWorkPerArtifact ANY artifactKind ANY workDefinition
 ;
syntax ProcessDefinitionElement
        = 
        ANY guidances+ ANY processComponents+
 ;
syntax Guidance
        = 
        ANY processDefinitionElements+
 ;
syntax ArtifactKind
        = 
        ANY artifactUsageNames+ ANY responsible
 ;
syntax WorkItem
        = 
        ()
 ;
syntax RoleKind
        = 
        ANY artifactKinds+
 ;
syntax Condition
        = 
        ()
 ;
syntax ProcessComponent
        = 
        ANY processDefinitionElements+
 ;
syntax Goal
        = 
        workDefinition: ANY
 ;
syntax Precondition
        = 
        workDefinition: ANY
 ;
syntax WorkDefinition
        = 
        ANY artifactUsageNames+ ANY goal ANY precondition
 ;
syntax ActivityKind
        = 
        ANY performer+ ANY assistant+
 ;
syntax Iteration
        = 
        ()
 ;
syntax Phase
        = 
        ()
 ;
syntax Lifecycle
        = 
        ()
 ;
