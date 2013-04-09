@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Umldi_ag

syntax Signal
        = 
        ANY powertypeRange+ ANY feature+
 ;
syntax Action
        = 
        ()
 ;
syntax CreateAction
        = 
        instantiation: ANY
 ;
syntax DestroyAction
        = 
        ANY actualArgument+ ANY actionSequence ANY recurrence ANY target ANY isAsynchronous ANY script
 ;
syntax UninterpretedAction
        = 
        ANY actualArgument+ ANY actionSequence ANY recurrence ANY target ANY isAsynchronous ANY script
 ;
syntax CallAction
        = 
        operation: ANY
 ;
syntax SendAction
        = 
        signal: ANY
 ;
syntax ActionSequence
        = 
        ANY action+
 ;
syntax Argument
        = 
        ANY action ANY value
 ;
syntax ReturnAction
        = 
        ANY actualArgument+ ANY actionSequence ANY recurrence ANY target ANY isAsynchronous ANY script
 ;
syntax TerminateAction
        = 
        ANY actualArgument+ ANY actionSequence ANY recurrence ANY target ANY isAsynchronous ANY script
 ;
syntax Exception
        = 
        ()
 ;
syntax Element
        = 
        ()
 ;
syntax ModelElement
        = 
        ()
 ;
syntax GeneralizableElement
        = 
        ()
 ;
syntax Namespace
        = 
        ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax Feature
        = 
        ()
 ;
syntax Relationship
        = 
        ()
 ;
syntax BehavioralFeature
        = 
        ()
 ;
syntax Operation
        = 
        ANY concurrency ANY isRoot ANY isLeaf ANY isAbstract ANY specification
 ;
syntax Parameter
        = 
        ANY type ANY behavioralFeature ANY defaultValue ANY kind
 ;
syntax Generalization
        = 
        ANY parent ANY powertype ANY child ANY discriminator
 ;
syntax AggregationKind
        = ak_none: ()
        | ak_aggregate: ()
        | ak_composite: ()
 ;
syntax ChangeableKind
        = ck_changeable: ()
        | ck_frozen: ()
        | ck_addOnly: ()
 ;
syntax OrderingKind
        = ok_unordered: ()
        | ok_ordered: ()
 ;
syntax CallConcurrencyKind
        = cck_sequential: ()
        | cck_guarded: ()
        | cck_concurrent: ()
 ;
syntax ParameterDirectionKind
        = pdk_in: ()
        | pdk_inout: ()
        | pdk_out: ()
        | pdk_return: ()
 ;
syntax PseudostateKind
        = pk_choice: ()
        | pk_deepHistory: ()
        | pk_fork: ()
        | pk_initial: ()
        | pk_join: ()
        | pk_junction: ()
        | pk_shallowHistory: ()
 ;
syntax ScopeKind
        = sk_instance: ()
        | sk_classifier: ()
 ;
syntax VisibilityKind
        = vk_public: ()
        | vk_protected: ()
        | vk_private: ()
        | vk_package: ()
 ;
syntax Multiplicity
        = 
        ANY range+
 ;
syntax MultiplicityRange
        = 
        ANY multiplicity ANY lower ANY upper
 ;
syntax Expression
        = 
        ANY language ANY body
 ;
syntax BooleanExpression
        = 
        ()
 ;
syntax ObjectSetExpression
        = 
        ()
 ;
syntax ActionExpression
        = 
        ()
 ;
syntax IterationExpression
        = 
        ()
 ;
syntax TimeExpression
        = 
        ()
 ;
syntax ArgListsExpression
        = 
        ()
 ;
syntax StateMachine
        = 
        ANY context ANY submachineState+ ANY top ANY transitions+
 ;
syntax Event
        = 
        ()
 ;
syntax StateVertex
        = 
        ()
 ;
syntax State
        = 
        ()
 ;
syntax TimeEvent
        = 
        when: ANY
 ;
syntax CallEvent
        = 
        operation: ANY
 ;
syntax SignalEvent
        = 
        signal: ANY
 ;
syntax Transition
        = 
        ANY target ANY trigger ANY stateMachine ANY source ANY effect ANY guard
 ;
syntax CompositeState
        = 
        ANY subvertex+ ANY isConcurrent
 ;
syntax ChangeEvent
        = 
        changeExpression: ANY
 ;
syntax Guard
        = 
        ANY transition ANY expression
 ;
syntax Pseudostate
        = 
        kind: ANY
 ;
syntax SimpleState
        = 
        ANY deferrableEvent+ ANY internalTransition+ ANY exit ANY doActivity ANY entry ANY stateMachine
 ;
syntax SubmachineState
        = 
        submachine: ANY
 ;
syntax SynchState
        = 
        bound: ANY
 ;
syntax StubState
        = 
        referenceState: ANY
 ;
syntax FinalState
        = 
        ANY deferrableEvent+ ANY internalTransition+ ANY exit ANY doActivity ANY entry ANY stateMachine
 ;
syntax ActivityGraph
        = 
        ANY partition+
 ;
syntax Partition
        = 
        ANY contents+ ANY activityGraph
 ;
syntax SubactivityState
        = 
        ANY isDynamic ANY dynamicArguments ANY dynamicMultiplicity
 ;
syntax ActionState
        = 
        ANY isDynamic ANY dynamicArguments ANY dynamicMultiplicity
 ;
syntax CallState
        = 
        ()
 ;
syntax ObjectFlowState
        = 
        ANY type ANY parameter+ ANY isSynch
 ;
syntax ClassifierInState
        = 
        ANY inState+ ANY type
 ;
