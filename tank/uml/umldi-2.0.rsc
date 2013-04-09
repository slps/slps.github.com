@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Umldi_2_0

syntax Collaboration
        = 
        ANY usedCollaboration+ ANY representedOperation ANY representedClassifier ANY interaction+ ANY constrainingElement+
 ;
syntax ClassifierRole
        = 
        ANY availableContents+ ANY base+ ANY conformingInstance+ ANY availableFeature+ ANY multiplicity
 ;
syntax AssociationRole
        = 
        ANY base ANY conformingLink+ ANY message+ ANY multiplicity
 ;
syntax AssociationEndRole
        = 
        ANY base ANY availableQualifier+ ANY collaborationMultiplicity
 ;
syntax Message
        = 
        ANY interaction ANY conformingStimulus+ ANY action ANY communicationConnection ANY activator ANY receiver ANY sender ANY predecessor+
 ;
syntax Interaction
        = 
        ANY message+ ANY context
 ;
syntax InteractionInstanceSet
        = 
        ANY interaction ANY context ANY participatingStimulus+
 ;
syntax CollaborationInstanceSet
        = 
        ANY collaboration ANY constrainingElement+ ANY participatingInstance+ ANY interactionInstanceSet+ ANY participatingLink+
 ;
syntax UseCase
        = 
        ANY include+ ANY extend+ ANY extensionPoint+
 ;
syntax Actor
        = 
        ANY powertypeRange+ ANY feature+
 ;
syntax UseCaseInstance
        = 
        ANY ownedInstance+ ANY linkEnd+ ANY classifier+ ANY componentInstance ANY slot+ ANY ownedLink+
 ;
syntax Extend
        = 
        ANY extensionPoint+ ANY extension ANY base ANY condition
 ;
syntax Include
        = 
        ANY addition ANY base
 ;
syntax ExtensionPoint
        = 
        ANY useCase ANY location
 ;
syntax AggregationKind
        = ak_none: ()
        | ak_aggregate: ()
        | ak_composite: ()
 ;
syntax CallConcurrencyKind
        = cck_sequential: ()
        | cck_guarded: ()
        | cck_concurrent: ()
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
syntax TypeExpression
        = 
        ()
 ;
syntax MappingExpression
        = 
        ()
 ;
syntax ProcedureExpression
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
syntax PseudostateKind
        = pk_choice: ()
        | pk_deepHistory: ()
        | pk_fork: ()
        | pk_initial: ()
        | pk_join: ()
        | pk_junction: ()
        | pk_shallowHistory: ()
 ;
syntax Instance
        = 
        ()
 ;
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
syntax AttributeLink
        = 
        ANY instance ANY value ANY linkEnd ANY attribute
 ;
syntax Object
        = 
        ANY ownedInstance+ ANY linkEnd+ ANY classifier+ ANY componentInstance ANY slot+ ANY ownedLink+
 ;
syntax Link
        = 
        ANY association ANY connection
 ;
syntax LinkObject
        = 
        ()
 ;
syntax DataValue
        = 
        ANY ownedInstance+ ANY linkEnd+ ANY classifier+ ANY componentInstance ANY slot+ ANY ownedLink+
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
syntax Reception
        = 
        ANY signal ANY specification ANY isRoot ANY isLeaf ANY isAbstract
 ;
syntax LinkEnd
        = 
        ANY link ANY qualifiedValue+ ANY instance ANY associationEnd
 ;
syntax ReturnAction
        = 
        ANY actualArgument+ ANY actionSequence ANY recurrence ANY target ANY isAsynchronous ANY script
 ;
syntax TerminateAction
        = 
        ANY actualArgument+ ANY actionSequence ANY recurrence ANY target ANY isAsynchronous ANY script
 ;
syntax Stimulus
        = 
        ANY argument+ ANY communicationLink ANY receiver ANY dispatchAction ANY sender
 ;
syntax Exception
        = 
        ()
 ;
syntax ComponentInstance
        = 
        ANY resident+ ANY nodeInstance
 ;
syntax NodeInstance
        = 
        ANY resident+
 ;
syntax SubsystemInstance
        = 
        ANY ownedInstance+ ANY linkEnd+ ANY classifier+ ANY componentInstance ANY slot+ ANY ownedLink+
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
syntax Point
        = 
        ANY x ANY y
 ;
syntax Dimension
        = 
        ANY width ANY height
 ;
syntax BezierPoint
        = 
        ANY base ANY control1 ANY control2
 ;
syntax DiagramElement
        = 
        ()
 ;
syntax GraphElement
        = 
        ()
 ;
syntax SemanticModelBridge
        = 
        ()
 ;
syntax GraphEdge
        = 
        ANY anchor ANY waypoints
 ;
syntax GraphNode
        = 
        size: ANY
 ;
syntax GraphConnector
        = 
        ANY graphElement ANY graphEdge+ ANY position
 ;
syntax LeafElement
        = 
        ()
 ;
syntax Reference
        = 
        referenced: ANY
 ;
syntax TextElement
        = 
        text: ANY
 ;
syntax GraphicPrimitive
        = 
        ()
 ;
syntax Polyline
        = 
        ANY waypoints ANY closed
 ;
syntax Ellipse
        = 
        ANY center ANY radiusX ANY radiusY ANY rotation ANY startAngle ANY endAngle
 ;
syntax Image
        = 
        ANY uri ANY mimeType
 ;
syntax Property
        = 
        ANY key ANY value
 ;
syntax SimpleSemanticModelElement
        = 
        typeInfo: ANY
 ;
syntax Uml1SemanticModelBridge
        = 
        element: ANY
 ;
syntax CoreSemanticModelBridge
        = 
        ANY diagram ANY graphElement ANY presentation
 ;
syntax DiagramLink
        = 
        ANY graphElement ANY diagram ANY zoom ANY viewport
 ;
syntax Diagram
        = 
        ANY owner ANY diagramLink+ ANY name ANY zoom ANY viewport
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
syntax Class
        = 
        isActive: ANY
 ;
syntax DataType
        = 
        ANY powertypeRange+ ANY feature+
 ;
syntax Feature
        = 
        ()
 ;
syntax StructuralFeature
        = 
        ()
 ;
syntax AssociationEnd
        = 
        ANY association ANY specification+ ANY participant ANY qualifier+ ANY isNavigable ANY ordering ANY aggregation ANY targetScope ANY multiplicity ANY changeability
 ;
syntax Interface
        = 
        ANY powertypeRange+ ANY feature+
 ;
syntax Constraint
        = 
        ANY constrainedElement+ ANY body
 ;
syntax Relationship
        = 
        ()
 ;
syntax Association
        = 
        connection: ANY
 ;
syntax Attribute
        = 
        ANY associationEnd ANY initialValue
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
syntax Method
        = 
        ANY specification ANY body
 ;
syntax Generalization
        = 
        ANY parent ANY powertype ANY child ANY discriminator
 ;
syntax AssociationClass
        = 
        ()
 ;
syntax Dependency
        = 
        ANY client+ ANY supplier+
 ;
syntax Abstraction
        = 
        mapping: ANY
 ;
syntax PresentationElement
        = 
        ()
 ;
syntax Usage
        = 
        ()
 ;
syntax Binding
        = 
        ANY argument+
 ;
syntax Component
        = 
        ANY deploymentLocation+ ANY residentElement+ ANY implementation+
 ;
syntax Node
        = 
        ANY deployedComponent+
 ;
syntax Permission
        = 
        ()
 ;
syntax Comment
        = 
        ANY annotatedElement+ ANY body
 ;
syntax Flow
        = 
        ANY source+ ANY target+
 ;
syntax ElementResidence
        = 
        ANY container ANY resident ANY visibility
 ;
syntax TemplateParameter
        = 
        ANY template ANY parameter ANY defaultElement
 ;
syntax Primitive
        = 
        ()
 ;
syntax Enumeration
        = 
        ANY literal+
 ;
syntax EnumerationLiteral
        = 
        enumeration: ANY
 ;
syntax Stereotype
        = 
        ANY stereotypeConstraint+ ANY definedTag+ ANY icon ANY baseClass+
 ;
syntax TagDefinition
        = 
        ANY owner ANY tagType ANY multiplicity
 ;
syntax TaggedValue
        = 
        ANY type ANY referenceValue+ ANY modelElement ANY dataValue+
 ;
syntax ProgrammingLanguageDataType
        = 
        expression: ANY
 ;
syntax Artifact
        = 
        ANY powertypeRange+ ANY feature+
 ;
syntax TemplateArgument
        = 
        ANY binding ANY modelElement
 ;
syntax Package
        = 
        ANY elementImport+
 ;
syntax Model
        = 
        ()
 ;
syntax Subsystem
        = 
        isInstantiable: ANY
 ;
syntax ElementImport
        = 
        ANY package ANY importedElement ANY visibility ANY alias ANY isSpecification
 ;
