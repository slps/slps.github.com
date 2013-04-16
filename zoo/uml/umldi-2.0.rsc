@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Umldi_2_0

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Collaboration
        = 
        Collaboration usedCollaboration+ Operation representedOperation Classifier representedClassifier Interaction interaction+ ModelElement constrainingElement+
 ;
syntax ClassifierRole
        = 
        ModelElement availableContents+ Classifier base+ Instance conformingInstance+ Feature availableFeature+ Multiplicity multiplicity
 ;
syntax AssociationRole
        = 
        Association base Link conformingLink+ Message message+ Multiplicity multiplicity
 ;
syntax AssociationEndRole
        = 
        AssociationEnd base Attribute availableQualifier+ Multiplicity collaborationMultiplicity
 ;
syntax Message
        = 
        Interaction interaction Stimulus conformingStimulus+ Action action AssociationRole communicationConnection Message activator ClassifierRole receiver ClassifierRole sender Message predecessor+
 ;
syntax Interaction
        = 
        Message message+ Collaboration context
 ;
syntax InteractionInstanceSet
        = 
        Interaction interaction CollaborationInstanceSet context Stimulus participatingStimulus+
 ;
syntax CollaborationInstanceSet
        = 
        Collaboration collaboration ModelElement constrainingElement+ Instance participatingInstance+ InteractionInstanceSet interactionInstanceSet+ Link participatingLink+
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
syntax UseCase
        = 
        Include include+ Extend extend+ ExtensionPoint extensionPoint+
 ;
syntax Actor
        = 
        Generalization powertypeRange+ Feature feature+
 ;
syntax UseCaseInstance
        = 
        Instance ownedInstance+ LinkEnd linkEnd+ Classifier classifier+ ComponentInstance componentInstance AttributeLink slot+ Link ownedLink+
 ;
syntax Extend
        = 
        ExtensionPoint extensionPoint+ UseCase extension UseCase base BooleanExpression condition
 ;
syntax Include
        = 
        UseCase addition UseCase base
 ;
syntax ExtensionPoint
        = 
        UseCase useCase String location
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
        MultiplicityRange range+
 ;
syntax MultiplicityRange
        = 
        Multiplicity multiplicity Integer lower Integer upper
 ;
syntax Expression
        = BooleanExpression
        | TypeExpression
        | MappingExpression
        | ProcedureExpression
        | ObjectSetExpression
        | ActionExpression
        | IterationExpression
        | TimeExpression
        | ArgListsExpression
        | String language String body
 ;
syntax BooleanExpression
        = 
        String language String body
 ;
syntax TypeExpression
        = 
        String language String body
 ;
syntax MappingExpression
        = 
        String language String body
 ;
syntax ProcedureExpression
        = 
        String language String body
 ;
syntax ObjectSetExpression
        = 
        String language String body
 ;
syntax ActionExpression
        = 
        String language String body
 ;
syntax IterationExpression
        = 
        String language String body
 ;
syntax TimeExpression
        = 
        String language String body
 ;
syntax ArgListsExpression
        = 
        String language String body
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
        = UseCaseInstance
        | Object
        | DataValue
        | ComponentInstance
        | NodeInstance
        | SubsystemInstance
 ;
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
syntax AttributeLink
        = 
        Instance instance Instance value LinkEnd linkEnd Attribute attribute
 ;
syntax Object
        = LinkObject
        | Instance ownedInstance+ LinkEnd linkEnd+ Classifier classifier+ ComponentInstance componentInstance AttributeLink slot+ Link ownedLink+
 ;
syntax Link
        = LinkObject
        | Association association LinkEnd connection
 ;
syntax LinkObject
        = 
        Association association LinkEnd connection
 ;
syntax DataValue
        = 
        Instance ownedInstance+ LinkEnd linkEnd+ Classifier classifier+ ComponentInstance componentInstance AttributeLink slot+ Link ownedLink+
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
syntax LinkEnd
        = 
        Link link AttributeLink qualifiedValue+ Instance instance AssociationEnd associationEnd
 ;
syntax ReturnAction
        = 
        Argument actualArgument+ ActionSequence actionSequence IterationExpression recurrence ObjectSetExpression target Boolean isAsynchronous ActionExpression script
 ;
syntax TerminateAction
        = 
        Argument actualArgument+ ActionSequence actionSequence IterationExpression recurrence ObjectSetExpression target Boolean isAsynchronous ActionExpression script
 ;
syntax Stimulus
        = 
        Instance argument+ Link communicationLink Instance receiver Action dispatchAction Instance sender
 ;
syntax Exception
        = 
        ()
 ;
syntax ComponentInstance
        = 
        Instance resident+ NodeInstance nodeInstance
 ;
syntax NodeInstance
        = 
        ComponentInstance resident+
 ;
syntax SubsystemInstance
        = 
        Instance ownedInstance+ LinkEnd linkEnd+ Classifier classifier+ ComponentInstance componentInstance AttributeLink slot+ Link ownedLink+
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
        Boolean isDynamic ArgListsExpression dynamicArguments Multiplicity dynamicMultiplicity
 ;
syntax ObjectFlowState
        = 
        Classifier type Parameter parameter+ Boolean isSynch
 ;
syntax ClassifierInState
        = 
        State inState+ Classifier type
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
syntax Point
        = 
        Double x Double y
 ;
syntax Dimension
        = 
        Double width Double height
 ;
syntax BezierPoint
        = 
        Point base Point control1 Point control2
 ;
syntax DiagramElement
        = GraphElement
        | LeafElement
        | Reference
 ;
syntax GraphElement
        = GraphEdge
        | GraphNode
 ;
syntax SemanticModelBridge
        = SimpleSemanticModelElement
        | Uml1SemanticModelBridge
        | CoreSemanticModelBridge
 ;
syntax GraphEdge
        = 
        GraphConnector anchor BezierPoint waypoints
 ;
syntax GraphNode
        = Diagram
        | size: Dimension
 ;
syntax GraphConnector
        = 
        GraphElement graphElement GraphEdge graphEdge+ Point position
 ;
syntax LeafElement
        = TextElement
        | GraphicPrimitive
        | Image
 ;
syntax Reference
        = 
        referenced: DiagramElement
 ;
syntax TextElement
        = 
        text: String
 ;
syntax GraphicPrimitive
        = Polyline
        | Ellipse
 ;
syntax Polyline
        = 
        BezierPoint waypoints Boolean closed
 ;
syntax Ellipse
        = 
        Point center Double radiusX Double radiusY Double rotation Double startAngle Double endAngle
 ;
syntax Image
        = 
        String uri String mimeType
 ;
syntax Property
        = 
        String key String value
 ;
syntax SimpleSemanticModelElement
        = 
        typeInfo: String
 ;
syntax Uml1SemanticModelBridge
        = 
        element: Element
 ;
syntax CoreSemanticModelBridge
        = 
        Diagram diagram GraphElement graphElement String presentation
 ;
syntax DiagramLink
        = 
        GraphElement graphElement Diagram diagram Double zoom Point viewport
 ;
syntax Diagram
        = 
        SemanticModelBridge owner DiagramLink diagramLink+ String name Double zoom Point viewport
 ;
syntax Element
        = ModelElement
        | PresentationElement
 ;
syntax ModelElement
        = Message
        | Interaction
        | InteractionInstanceSet
        | CollaborationInstanceSet
        | ExtensionPoint
        | Instance
        | Action
        | AttributeLink
        | Link
        | Argument
        | LinkEnd
        | Stimulus
        | Partition
        | StateMachine
        | Event
        | StateVertex
        | Transition
        | Guard
        | GeneralizableElement
        | Namespace
        | Feature
        | AssociationEnd
        | Constraint
        | Relationship
        | Parameter
        | Comment
        | EnumerationLiteral
        | TagDefinition
        | TaggedValue
 ;
syntax GeneralizableElement
        = Stereotype
        | Collaboration
        | Classifier
        | Association
        | Package
 ;
syntax Namespace
        = Collaboration
        | Classifier
        | Package
 ;
syntax Classifier
        = ClassifierRole
        | UseCase
        | Actor
        | Signal
        | ClassifierInState
        | Class
        | DataType
        | Interface
        | Component
        | Node
        | Artifact
        | Subsystem
 ;
syntax Class
        = AssociationClass
        | isActive: Boolean
 ;
syntax DataType
        = Primitive
        | Enumeration
        | ProgrammingLanguageDataType
 ;
syntax Feature
        = StructuralFeature
        | BehavioralFeature
 ;
syntax StructuralFeature
        = 
        Attribute
 ;
syntax AssociationEnd
        = AssociationEndRole
        | Association association Classifier specification+ Classifier participant Attribute qualifier+ Boolean isNavigable OrderingKind ordering AggregationKind aggregation ScopeKind targetScope Multiplicity multiplicity ChangeableKind changeability
 ;
syntax Interface
        = 
        Generalization powertypeRange+ Feature feature+
 ;
syntax Constraint
        = 
        ModelElement constrainedElement+ BooleanExpression body
 ;
syntax Relationship
        = Extend
        | Include
        | Generalization
        | Dependency
        | Flow
        | Association
 ;
syntax Association
        = AssociationRole
        | AssociationClass
        | connection: AssociationEnd
 ;
syntax Attribute
        = 
        AssociationEnd associationEnd Expression initialValue
 ;
syntax BehavioralFeature
        = Reception
        | Operation
        | Method
 ;
syntax Operation
        = 
        CallConcurrencyKind concurrency Boolean isRoot Boolean isLeaf Boolean isAbstract String specification
 ;
syntax Parameter
        = 
        Classifier type BehavioralFeature behavioralFeature Expression defaultValue ParameterDirectionKind kind
 ;
syntax Method
        = 
        Operation specification ProcedureExpression body
 ;
syntax Generalization
        = 
        GeneralizableElement parent Classifier powertype GeneralizableElement child String discriminator
 ;
syntax AssociationClass
        = 
        AssociationEnd connection Boolean isActive
 ;
syntax Dependency
        = Abstraction
        | Usage
        | Binding
        | Permission
        | ModelElement client+ ModelElement supplier+
 ;
syntax Abstraction
        = 
        mapping: MappingExpression
 ;
syntax Usage
        = 
        ModelElement client+ ModelElement supplier+
 ;
syntax Binding
        = 
        TemplateArgument argument+
 ;
syntax Component
        = 
        Node deploymentLocation+ ElementResidence residentElement+ Artifact implementation+
 ;
syntax Node
        = 
        Component deployedComponent+
 ;
syntax Permission
        = 
        ModelElement client+ ModelElement supplier+
 ;
syntax Comment
        = 
        ModelElement annotatedElement+ String body
 ;
syntax Flow
        = 
        ModelElement source+ ModelElement target+
 ;
syntax ElementResidence
        = 
        Component container ModelElement resident VisibilityKind visibility
 ;
syntax TemplateParameter
        = 
        ModelElement template ModelElement parameter ModelElement defaultElement
 ;
syntax Primitive
        = 
        ()
 ;
syntax Enumeration
        = 
        EnumerationLiteral literal+
 ;
syntax EnumerationLiteral
        = 
        enumeration: Enumeration
 ;
syntax Stereotype
        = 
        Constraint stereotypeConstraint+ TagDefinition definedTag+ String icon String baseClass+
 ;
syntax TagDefinition
        = 
        Stereotype owner String tagType Multiplicity multiplicity
 ;
syntax TaggedValue
        = 
        TagDefinition type ModelElement referenceValue+ ModelElement modelElement String dataValue+
 ;
syntax ProgrammingLanguageDataType
        = 
        expression: TypeExpression
 ;
syntax Artifact
        = 
        Generalization powertypeRange+ Feature feature+
 ;
syntax TemplateArgument
        = 
        Binding binding ModelElement modelElement
 ;
syntax Package
        = Model
        | Subsystem
        | ElementImport elementImport+
 ;
syntax Model
        = 
        ElementImport elementImport+
 ;
syntax Subsystem
        = 
        isInstantiable: Boolean
 ;
syntax ElementImport
        = 
        Package package ModelElement importedElement VisibilityKind visibility String alias Boolean isSpecification
 ;
