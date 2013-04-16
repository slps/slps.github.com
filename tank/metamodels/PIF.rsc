@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PIF

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Entity
        = Activity
        | Object
        | Timepoint
        | Relation
 ;
syntax Activity
        = 
        Decision
 ;
syntax Object
        = 
        Agent
 ;
syntax Timepoint
        = 
        ()
 ;
syntax Relation
        = Creates
        | Modifies
        | Before
        | Uses
        | Performs
        | ActivityStatus
        | Succesor
 ;
syntax Decision
        = 
        ()
 ;
syntax Agent
        = 
        ()
 ;
syntax Creates
        = 
        ()
 ;
syntax Modifies
        = 
        ()
 ;
syntax Before
        = 
        ()
 ;
syntax Uses
        = 
        ()
 ;
syntax Performs
        = 
        ()
 ;
syntax ActivityStatus
        = 
        ()
 ;
syntax Succesor
        = 
        ()
 ;
