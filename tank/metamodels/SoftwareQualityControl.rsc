@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SoftwareQualityControl

syntax DateType
        = 
        Integer day Integer month Integer year
 ;
syntax ControlsSequence
        = 
        Control controls+
 ;
syntax Control
        = 
        ControlsSequence c_controlsSequence String responsible String component String developmentPhase String scope DateType date String controlledElt String eltRef String eltAuthor String formRef ControlType type
 ;
syntax ControlType
        = 
        BugTracking
 ;
syntax BugTracking
        = 
        Bug bugs+
 ;
syntax Bug
        = 
        BugTracking b_bugTracking Integer number String componentVersion String description BugStatusType status String originator String responsible String commentsAnswers String openDate String closeDate
 ;
syntax BugStatusType
        = bst_open: ()
        | bst_closed: ()
        | bst_skipped: ()
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
