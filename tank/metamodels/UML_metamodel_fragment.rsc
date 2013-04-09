@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UML_metamodel_fragment

syntax Class
        = 
        ANY parent ANY child ANY dependency
 ;
syntax Generalization
        = 
        ()
 ;
syntax Dependency
        = 
        ANY supplier ANY client ANY stereotype
 ;
syntax Stereotype
        = 
        ANY baseClass ANY extendedElement
 ;
syntax StateMachine
        = 
        ANY context ANY top
 ;
syntax State
        = 
        ANY stateMachine ANY internal
 ;
syntax CompositeState
        = 
        subvertex: ANY
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
        = 
        compositeState: ANY
 ;
syntax PseudoState
        = 
        ()
 ;
syntax Transition
        = 
        ANY trigger ANY source ANY target
 ;
syntax Event
        = 
        ()
 ;
