@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Fragment

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
        ()
 ;
syntax FinalState
        = 
        ()
 ;
syntax StateVertex
        = State
        | PseudoState
        | compositeState: CompositeState
 ;
syntax PseudoState
        = 
        ()
 ;
syntax Transition
        = 
        Event trigger StateVertex source StateVertex target
 ;
syntax Event
        = 
        ()
 ;
