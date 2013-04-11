@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IEEE1471ConceptualModel

syntax String
        = 
        String
 ;
syntax Element
        = IEEE1471Model
        | System
        | Mission
        | Environment
        | Architecture
        | Rationale
        | ArchitecturalDescription
        | View
        | Model
        | Stakeholder
        | Concern
        | Viewpoint
        | LibraryViewpoint
 ;
syntax IEEE1471Model
        = 
        System system Environment environment Mission missions+ Architecture architecture Stakeholder stakeholders+ Concern concerns+ Viewpoint viewpoints+ LibraryViewpoint libraryViewpoints+ ArchitecturalDescription architecturalDescription Rationale rationale
 ;
syntax System
        = 
        Mission fulfils+ Environment inhabits Architecture hasAn Stakeholder has+
 ;
syntax Mission
        = 
        String name String content
 ;
syntax Environment
        = 
        influences: System
 ;
syntax Architecture
        = 
        describedBy: ArchitecturalDescription
 ;
syntax Rationale
        = 
        provides: ArchitecturalDescription
 ;
syntax ArchitecturalDescription
        = 
        Stakeholder identifiesS+ Concern identifiesC+ Viewpoint selects+ View organizedBy+ Model aggregates+
 ;
syntax View
        = 
        Viewpoint conformsTo Model consitsOf+
 ;
syntax Model
        = 
        View participatesInV+ ArchitecturalDescription participatesInAD
 ;
syntax Stakeholder
        = 
        Concern has+
 ;
syntax Concern
        = 
        Stakeholder isImportantTo+
 ;
syntax Viewpoint
        = 
        LibraryViewpoint hasSource Concern usedToCover+ Model establishesMethodsFor+
 ;
syntax LibraryViewpoint
        = 
        String name String content
 ;
