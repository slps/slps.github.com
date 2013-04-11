@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SPEM

syntax Boolean
        = "true"
        | "false"
 ;
syntax ArtifactUsageName
        = 
        Boolean isInput Boolean isOutput Boolean hasWorkPerArtifact ArtifactKind artifactKind WorkDefinition workDefinition
 ;
syntax ProcessDefinitionElement
        = Guidance
        | ArtifactKind
        | WorkItem
        | RoleKind
        | Condition
        | ProcessComponent
        | Guidance guidances+ ProcessComponent processComponents+
 ;
syntax Guidance
        = 
        ProcessDefinitionElement processDefinitionElements+
 ;
syntax ArtifactKind
        = 
        ArtifactUsageName artifactUsageNames+ RoleKind responsible
 ;
syntax WorkItem
        = 
        WorkDefinition
 ;
syntax RoleKind
        = 
        ArtifactKind artifactKinds+
 ;
syntax Condition
        = Goal
        | Precondition
 ;
syntax ProcessComponent
        = 
        ProcessDefinitionElement processDefinitionElements+
 ;
syntax Goal
        = 
        workDefinition: WorkDefinition
 ;
syntax Precondition
        = 
        workDefinition: WorkDefinition
 ;
syntax WorkDefinition
        = ActivityKind
        | Iteration
        | Phase
        | Lifecycle
        | ArtifactUsageName artifactUsageNames+ Goal goal Precondition precondition
 ;
syntax ActivityKind
        = 
        RoleKind performer+ RoleKind assistant+
 ;
syntax Iteration
        = 
        ArtifactUsageName artifactUsageNames+ Goal goal Precondition precondition
 ;
syntax Phase
        = 
        ArtifactUsageName artifactUsageNames+ Goal goal Precondition precondition
 ;
syntax Lifecycle
        = 
        ArtifactUsageName artifactUsageNames+ Goal goal Precondition precondition
 ;
