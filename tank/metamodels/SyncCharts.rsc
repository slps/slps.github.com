@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SyncCharts

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax ModelElement
        = Arc
        | Vertex
 ;
syntax SyncChart
        = 
        ModelElement context ReferenceState referenceState+
 ;
syntax ReferenceState
        = CompositeState
        | SyncChart subSyncChart Stg containers
 ;
syntax Arc
        = Transition
        | PseudoTransition
 ;
syntax Vertex
        = PseudoState
        | State
 ;
syntax PseudoState
        = 
        kind: PseudoStateKind
 ;
syntax PseudoStateKind
        = 
        ()
 ;
syntax State
        = SimpleState
        | CompositeState
        | isFinal: Boolean
 ;
syntax SimpleState
        = 
        isFinal: Boolean
 ;
syntax CompositeState
        = 
        Boolean canTerminate Boolean isSuspendable Stg stg+
 ;
syntax Stg
        = 
        Boolean withFinal CompositeState compositeState Arc arc+ ReferenceState referenceState+
 ;
syntax Transition
        = 
        kind: TransitionKind
 ;
syntax TransitionKind
        = 
        ()
 ;
syntax PseudoTransition
        = 
        kind: PseudoTransitionKind
 ;
syntax PseudoTransitionKind
        = 
        ()
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
