@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IEEE1471ConceptualModel

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
