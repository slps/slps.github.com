@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SyncCharts

syntax ModelElement
        = 
        ()
 ;
syntax SyncChart
        = 
        ANY context ANY referenceState+
 ;
syntax ReferenceState
        = 
        ANY subSyncChart ANY containers
 ;
syntax Arc
        = 
        ()
 ;
syntax Vertex
        = 
        ()
 ;
syntax PseudoState
        = 
        kind: ANY
 ;
syntax PseudoStateKind
        = 
        ()
 ;
syntax State
        = 
        isFinal: ANY
 ;
syntax SimpleState
        = 
        ()
 ;
syntax CompositeState
        = 
        ANY canTerminate ANY isSuspendable ANY stg+
 ;
syntax Stg
        = 
        ANY withFinal ANY compositeState ANY arc+ ANY referenceState+
 ;
syntax Transition
        = 
        kind: ANY
 ;
syntax TransitionKind
        = 
        ()
 ;
syntax PseudoTransition
        = 
        kind: ANY
 ;
syntax PseudoTransitionKind
        = 
        ()
 ;
