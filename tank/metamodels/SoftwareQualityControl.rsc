@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SoftwareQualityControl

syntax DateType
        = 
        ANY day ANY month ANY year
 ;
syntax ControlsSequence
        = 
        ANY controls+
 ;
syntax Control
        = 
        ANY c_controlsSequence ANY responsible ANY component ANY developmentPhase ANY scope ANY date ANY controlledElt ANY eltRef ANY eltAuthor ANY formRef ANY type
 ;
syntax ControlType
        = 
        ()
 ;
syntax BugTracking
        = 
        ANY bugs+
 ;
syntax Bug
        = 
        ANY b_bugTracking ANY number ANY componentVersion ANY description ANY status ANY originator ANY responsible ANY commentsAnswers ANY openDate ANY closeDate
 ;
syntax BugStatusType
        = bst_open: ()
        | bst_closed: ()
        | bst_skipped: ()
 ;
