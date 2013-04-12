@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Umldi_sm

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
syntax Reception
        = 
        Signal signal String specification Boolean isRoot Boolean isLeaf Boolean isAbstract
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
syntax Expression
        = BooleanExpression
        | ObjectSetExpression
        | ActionExpression
        | IterationExpression
        | TimeExpression
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
syntax PseudostateKind
        = pk_choice: ()
        | pk_deepHistory: ()
        | pk_fork: ()
        | pk_initial: ()
        | pk_join: ()
        | pk_junction: ()
        | pk_shallowHistory: ()
 ;
syntax StateMachine
        = 
        ModelElement context SubmachineState submachineState+ State top Transition transitions+
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
        = 
        Event deferrableEvent+ Transition internalTransition+ Action exit Action doActivity Action entry StateMachine stateMachine
 ;
syntax SubmachineState
        = 
        submachine: StateMachine
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
syntax Element
        = 
        ModelElement
 ;
syntax ModelElement
        = Action
        | Argument
        | StateMachine
        | Event
        | StateVertex
        | Transition
        | Guard
        | GeneralizableElement
        | Namespace
        | Feature
        | Relationship
        | Parameter
 ;
syntax Classifier
        = 
        Signal
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
        = Reception
        | Operation
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
