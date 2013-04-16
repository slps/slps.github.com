@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Repository

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax Subsystem
        = 
        Class classes+ Relation relations+
 ;
syntax Relation
        = 
        Subsystem subsystem Class classes
 ;
syntax Class
        = 
        String name Boolean is_deferred Feature features+ Subsystem parentSubsystem Subsystem subsystem Relation relations+
 ;
syntax Feature
        = Entity
        | Routine
        | Class theClass Type type
 ;
syntax Type
        = 
        name: String
 ;
syntax Entity
        = 
        Class theClass Type type
 ;
syntax Routine
        = 
        Class theClass Type type
 ;
