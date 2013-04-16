@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WorkDefinitions

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax WorkDefinition
        = Lifecycle
        | Phase
        | Iteration
        | Activity
        | WorkDefinition parentWorks+ WorkDefinition subWorks+ ProcessPerformer owner
 ;
syntax ProcessPerformer
        = Role
        | WorkDefinition features+
 ;
syntax Role
        = 
        WorkProduct products+
 ;
syntax WorkProduct
        = 
        responsible: Role
 ;
syntax Lifecycle
        = 
        Phase phases+
 ;
syntax Phase
        = 
        Lifecycle lifeCycle Iteration iterations+
 ;
syntax Iteration
        = 
        Phase phase Activity activities+
 ;
syntax Activity
        = 
        Iteration iteration Step steps+
 ;
syntax Step
        = 
        ()
 ;
syntax Boolean
        = "true"
        | "false"
 ;
