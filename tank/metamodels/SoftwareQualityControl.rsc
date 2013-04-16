@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SoftwareQualityControl

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
