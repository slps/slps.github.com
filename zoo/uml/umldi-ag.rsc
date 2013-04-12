@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Umldi_ag

syntax Signal
        = 
        Exception
 ;
syntax Action
        = CreateAction
        | DestroyAction
        | UninterpretedAction
        | CallAction
        | SendAction
        | ActionSequence
        | ReturnAction
        | TerminateAction
 ;
syntax CreateAction
        = 
        instantiation: Classifier
 ;
syntax DestroyAction
        = 
        Argument actualArgument+ ActionSequence actionSequence IterationExpression recurrence ObjectSetExpression target Boolean isAsynchronous ActionExpression script
 ;
syntax UninterpretedAction
        = 
        Argument actualArgument+ ActionSequence actionSequence IterationExpression recurrence ObjectSetExpression target Boolean isAsynchronous ActionExpression script
 ;
syntax CallAction
        = 
        operation: Operation
 ;
syntax SendAction
        = 
        signal: Signal
 ;
syntax ActionSequence
        = 
        Action action+
 ;
syntax Argument
        = 
        Action action Expression value
 ;
syntax ReturnAction
        = 
        Argument actualArgument+ ActionSequence actionSequence IterationExpression recurrence ObjectSetExpression target Boolean isAsynchronous ActionExpression script
 ;
syntax TerminateAction
        = 
        Argument actualArgument+ ActionSequence actionSequence IterationExpression recurrence ObjectSetExpression target Boolean isAsynchronous ActionExpression script
 ;
syntax Exception
        = 
        ()
 ;
syntax Element
        = 
        ModelElement
 ;
syntax ModelElement
        = Action
        | Argument
        | GeneralizableElement
        | Namespace
        | Feature
        | Relationship
        | Parameter
        | StateMachine
        | Event
        | StateVertex
        | Transition
        | Guard
        | Partition
 ;
syntax Classifier
        = Signal
        | ClassifierInState
 ;
syntax Feature
        = 
        BehavioralFeature
 ;
syntax Relationship
        = 
        Generalization
 ;
syntax BehavioralFeature
        = 
        Operation
 ;
syntax Operation
        = 
        CallConcurrencyKind concurrency Boolean isRoot Boolean isLeaf Boolean isAbstract String specification
 ;
syntax Parameter
        = 
        Classifier type BehavioralFeature behavioralFeature Expression defaultValue ParameterDirectionKind kind
 ;
syntax Generalization
        = 
        GeneralizableElement parent Classifier powertype GeneralizableElement child String discriminator
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
        MultiplicityRange range+
 ;
syntax MultiplicityRange
        = 
        Multiplicity multiplicity Integer lower Integer upper
 ;
syntax Expression
        = BooleanExpression
        | ObjectSetExpression
        | ActionExpression
        | IterationExpression
        | TimeExpression
        | ArgListsExpression
        | String language String body
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
        = ActivityGraph
        | ModelElement context SubmachineState submachineState+ State top Transition transitions+
 ;
syntax Event
        = TimeEvent
        | CallEvent
        | SignalEvent
        | ChangeEvent
 ;
syntax StateVertex
        = State
        | Pseudostate
        | SynchState
        | StubState
 ;
syntax State
        = CompositeState
        | SimpleState
        | FinalState
 ;
syntax TimeEvent
        = 
        when: TimeExpression
 ;
syntax CallEvent
        = 
        operation: Operation
 ;
syntax SignalEvent
        = 
        signal: Signal
 ;
syntax Transition
        = 
        StateVertex target Event trigger StateMachine stateMachine StateVertex source Action effect Guard guard
 ;
syntax CompositeState
        = SubmachineState
        | StateVertex subvertex+ Boolean isConcurrent
 ;
syntax ChangeEvent
        = 
        changeExpression: BooleanExpression
 ;
syntax Guard
        = 
        Transition transition BooleanExpression expression
 ;
syntax Pseudostate
        = 
        kind: PseudostateKind
 ;
syntax SimpleState
        = ActionState
        | ObjectFlowState
 ;
syntax SubmachineState
        = SubactivityState
        | submachine: StateMachine
 ;
syntax SynchState
        = 
        bound: Integer
 ;
syntax StubState
        = 
        referenceState: String
 ;
syntax FinalState
        = 
        Event deferrableEvent+ Transition internalTransition+ Action exit Action doActivity Action entry StateMachine stateMachine
 ;
syntax ActivityGraph
        = 
        Partition partition+
 ;
syntax Partition
        = 
        ModelElement contents+ ActivityGraph activityGraph
 ;
syntax SubactivityState
        = 
        Boolean isDynamic ArgListsExpression dynamicArguments Multiplicity dynamicMultiplicity
 ;
syntax ActionState
        = CallState
        | Boolean isDynamic ArgListsExpression dynamicArguments Multiplicity dynamicMultiplicity
 ;
syntax CallState
        = 
        ()
 ;
syntax ObjectFlowState
        = 
        Classifier type Parameter parameter+ Boolean isSynch
 ;
syntax ClassifierInState
        = 
        State inState+ Classifier type
 ;
