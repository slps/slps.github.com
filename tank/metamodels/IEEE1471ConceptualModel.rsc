@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IEEE1471ConceptualModel

syntax Element
        = 
        ()
 ;
syntax IEEE1471Model
        = 
        ANY system ANY environment ANY missions+ ANY architecture ANY stakeholders+ ANY concerns+ ANY viewpoints+ ANY libraryViewpoints+ ANY architecturalDescription ANY rationale
 ;
syntax System
        = 
        ANY fulfils+ ANY inhabits ANY hasAn ANY has+
 ;
syntax Mission
        = 
        ANY name ANY content
 ;
syntax Environment
        = 
        influences: ANY
 ;
syntax Architecture
        = 
        describedBy: ANY
 ;
syntax Rationale
        = 
        provides: ANY
 ;
syntax ArchitecturalDescription
        = 
        ANY identifiesS+ ANY identifiesC+ ANY selects+ ANY organizedBy+ ANY aggregates+
 ;
syntax View
        = 
        ANY conformsTo ANY consitsOf+
 ;
syntax Model
        = 
        ANY participatesInV+ ANY participatesInAD
 ;
syntax Stakeholder
        = 
        ANY has+
 ;
syntax Concern
        = 
        ANY isImportantTo+
 ;
syntax Viewpoint
        = 
        ANY hasSource ANY usedToCover+ ANY establishesMethodsFor+
 ;
syntax LibraryViewpoint
        = 
        ANY name ANY content
 ;
