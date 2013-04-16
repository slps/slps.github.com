@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Fragment

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Class
        = 
        Generalization parent Generalization child Dependency dependency
 ;
syntax Generalization
        = 
        ()
 ;
syntax Dependency
        = 
        StateMachine supplier Class client Stereotype stereotype
 ;
syntax Stereotype
        = 
        String baseClass Dependency extendedElement
 ;
syntax StateMachine
        = 
        Class context State top
 ;
syntax State
        = CompositeState
        | SimpleState
        | FinalState
        | StateMachine stateMachine Transition internal
 ;
syntax CompositeState
        = 
        subvertex: StateVertex
 ;
syntax SimpleState
        = 
        StateMachine stateMachine Transition internal
 ;
syntax FinalState
        = 
        StateMachine stateMachine Transition internal
 ;
syntax StateVertex
        = State
        | PseudoState
        | compositeState: CompositeState
 ;
syntax PseudoState
        = 
        compositeState: CompositeState
 ;
syntax Transition
        = 
        Event trigger StateVertex source StateVertex target
 ;
syntax Event
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
