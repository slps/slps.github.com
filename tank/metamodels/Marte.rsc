@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Marte

syntax Element
        = Comment
        | NamedElement
        | TemplateableElement
        | Relationship
        | TemplateSignature
        | TemplateParameter
        | ParameterableElement
        | TemplateParameterSubstitution
        | MultiplicityElement
        | Image
        | ActivityGroup
        | Slot
        | ExceptionHandler
 ;
syntax Comment
        = 
        MARTE_PrimitivesTypes/String body Element annotatedElement+
 ;
syntax Package
        = Profile
        | Type ownedType+ PackageMerge packageMerge+ PackageableElement packagedElement+ Package nestedPackage+ Package nestingPackage ProfileApplication profileApplication+
 ;
syntax NamedElement
        = Namespace
        | TypedElement
        | RedefinableElement
        | DeploymentTarget
        | CollaborationUse
        | Message
        | Lifeline
        | Trigger
        | Vertex
        | ParameterSet
        | DeployedArtifact
        | MessageEnd
        | InteractionFragment
        | GeneralOrdering
        | PackageableElement
        | ActivityPartition
        | Include
        | Extend
 ;
syntax StructuralFeature
        = 
        Property
 ;
syntax ConnectableElement
        = Parameter
        | Variable
 ;
syntax TemplateableElement
        = 
        StringExpression
 ;
syntax Property
        = Port
        | Class class DataType datatype Association owningAssociation Association association MARTE_PrimitivesTypes/Boolean isDerived MARTE_PrimitivesTypes/Boolean isDerivedUnion MARTE_PrimitivesTypes/String default AggregationKind aggregation MARTE_PrimitivesTypes/Boolean isComposite Property redefinedProperty+ ValueSpecification defaultValue Property opposite Property subsettedProperty+ Property qualifier+ Property associationEnd
 ;
syntax VisibilityKind
        = public: ()
        | private: ()
        | protected: ()
        | package: ()
 ;
syntax Dependency
        = Abstraction
        | Deployment
        | NamedElement supplier+ NamedElement client+
 ;
syntax DirectedRelationship
        = ElementImport
        | PackageImport
        | TemplateBinding
        | Generalization
        | PackageMerge
        | ProfileApplication
        | ProtocolConformance
        | Dependency
        | Include
        | Extend
 ;
syntax Relationship
        = DirectedRelationship
        | Association
 ;
syntax Namespace
        = Package
        | Classifier
        | BehavioralFeature
        | Region
        | Transition
        | State
        | InteractionOperand
 ;
syntax ElementImport
        = 
        VisibilityKind visibility MARTE_PrimitivesTypes/String alias PackageableElement importedElement Namespace importingNamespace
 ;
syntax PackageImport
        = 
        VisibilityKind visibility Package importedPackage Namespace importingNamespace
 ;
syntax Constraint
        = IntervalConstraint
        | InteractionConstraint
        | Element constrainedElement+ ValueSpecification specification Namespace context
 ;
syntax TypedElement
        = ConnectableElement
        | ValueSpecification
        | ObjectNode
 ;
syntax Association
        = Extension
        | MARTE_PrimitivesTypes/Boolean isDerived Property ownedEnd+ Type endType+ Property memberEnd Property navigableOwnedEnd+
 ;
syntax Classifier
        = BehavioredClassifier
        | DataType
        | Signal
        | Interface
        | StructuredClassifier
        | Association
        | Artifact
 ;
syntax RedefinableElement
        = Feature
        | ExtensionPoint
        | ActivityNode
        | ActivityEdge
        | Region
        | Transition
 ;
syntax TemplateBinding
        = 
        TemplateSignature signature TemplateParameterSubstitution parameterSubstitution+ TemplateableElement boundElement
 ;
syntax TemplateSignature
        = 
        TemplateParameter parameter+ TemplateParameter ownedParameter+ TemplateableElement template
 ;
syntax TemplateParameter
        = 
        TemplateSignature signature ParameterableElement parameteredElement ParameterableElement ownedParameteredElement ParameterableElement default ParameterableElement ownedDefault
 ;
syntax ParameterableElement
        = ConnectableElement
        | PackageableElement
 ;
syntax TemplateParameterSubstitution
        = 
        TemplateParameter formal ParameterableElement actual+ ParameterableElement ownedActual+ TemplateBinding templateBinding
 ;
syntax Generalization
        = 
        MARTE_PrimitivesTypes/Boolean isSubstitutable Classifier general GeneralizationSet generalizationSet+ Classifier specific
 ;
syntax GeneralizationSet
        = 
        MARTE_PrimitivesTypes/Boolean isCovering MARTE_PrimitivesTypes/Boolean isDisjoint Classifier powertype Generalization generalization+
 ;
syntax Feature
        = Connector
        | StructuralFeature
        | BehavioralFeature
 ;
syntax Substitution
        = 
        Classifier contract Classifier substitutingClassifier
 ;
syntax PackageableElement
        = Constraint
        | Type
        | GeneralizationSet
        | Observation
        | Event
        | Dependency
        | ValueSpecification
 ;
syntax PackageMerge
        = 
        Package mergedPackage Package receivingPackage
 ;
syntax ProfileApplication
        = 
        Profile appliedProfile MARTE_PrimitivesTypes/Boolean isStrict Package applyingPackage
 ;
syntax Profile
        = 
        Stereotype ownedStereotype+ ElementImport metaclassReference+ PackageImport metamodelReference+
 ;
syntax Stereotype
        = 
        Image icon+
 ;
syntax Class
        = Stereotype
        | Behavior
        | Classifier nestedClassifier+ Operation ownedOperation+ Class superClass+ MARTE_PrimitivesTypes/Boolean isActive Reception ownedReception+ Extension extension+
 ;
syntax StringExpression
        = 
        StringExpression subExpression+ StringExpression owningExpression
 ;
syntax Expression
        = StringExpression
        | MARTE_PrimitivesTypes/String symbol ValueSpecification operand+
 ;
syntax ValueSpecification
        = Expression
        | OpaqueExpression
        | TimeExpression
        | Duration
        | Interval
 ;
syntax BehavioredClassifier
        = UseCase
        | Collaboration
        | Class
 ;
syntax Behavior
        = StateMachine
        | Activity
        | Interaction
 ;
syntax MultiplicityElement
        = ConnectorEnd
        | Parameter
        | Pin
        | Variable
 ;
syntax DeploymentTarget
        = 
        InstanceSpecification
 ;
syntax DataType
        = Enumeration
        | Property ownedAttribute+ Operation ownedOperation+
 ;
syntax AggregationKind
        = none: ()
        | shared: ()
        | composite: ()
 ;
syntax CollaborationUse
        = 
        Collaboration type Dependency roleBinding+
 ;
syntax UseCase
        = 
        Include include+ Extend extend+ ExtensionPoint extensionPoint+ Classifier subject+
 ;
syntax Realization
        = Substitution
        | InterfaceRealization
 ;
syntax Abstraction
        = Realization
        | Manifestation
        | mapping: OpaqueExpression
 ;
syntax Image
        = 
        MARTE_PrimitivesTypes/String content MARTE_PrimitivesTypes/String location MARTE_PrimitivesTypes/String format
 ;
syntax OpaqueExpression
        = 
        MARTE_PrimitivesTypes/String body+ MARTE_PrimitivesTypes/String language+ Parameter result Behavior behavior
 ;
syntax Parameter
        = 
        ParameterDirectionKind direction MARTE_PrimitivesTypes/String default ValueSpecification defaultValue Operation operation ParameterSet parameterSet+ MARTE_PrimitivesTypes/Boolean isException MARTE_PrimitivesTypes/Boolean isStream ParameterEffectKind effect
 ;
syntax EncapsulatedClassifier
        = 
        Class
 ;
syntax Operation
        = 
        Interface interface Class class MARTE_PrimitivesTypes/Boolean isQuery MARTE_PrimitivesTypes/Boolean isOrdered MARTE_PrimitivesTypes/Boolean isUnique MARTE_PrimitivesTypes/Integer lower MARTE_PrimitivesTypes/UnlimitedNatural upper Constraint precondition+ Constraint postcondition+ Operation redefinedOperation+ DataType datatype Constraint bodyCondition Type type
 ;
syntax Reception
        = 
        signal: Signal
 ;
syntax Extension
        = 
        MARTE_PrimitivesTypes/Boolean isRequired Class metaclass
 ;
syntax EnumerationLiteral
        = 
        enumeration: Enumeration
 ;
syntax ActivityPartition
        = 
        MARTE_PrimitivesTypes/Boolean isDimension MARTE_PrimitivesTypes/Boolean isExternal ActivityNode node+ ActivityPartition subpartition+ ActivityPartition superPartition Element represents ActivityEdge edge+
 ;
syntax Enumeration
        = 
        EnumerationLiteral ownedLiteral+
 ;
syntax InstanceSpecification
        = EnumerationLiteral
        | Classifier classifier+ Slot slot+ ValueSpecification specification
 ;
syntax BehavioralFeature
        = Reception
        | Operation
 ;
syntax Signal
        = 
        Property ownedAttribute+
 ;
syntax TimeExpression
        = 
        ValueSpecification expr Observation observation+
 ;
syntax Observation
        = TimeObservation
        | DurationObservation
 ;
syntax Duration
        = 
        ValueSpecification expr Observation observation+
 ;
syntax DurationInterval
        = 
        ValueSpecification min ValueSpecification max
 ;
syntax Interval
        = DurationInterval
        | TimeInterval
        | ValueSpecification min ValueSpecification max
 ;
syntax TimeConstraint
        = 
        firstEvent: MARTE_PrimitivesTypes/Boolean
 ;
syntax IntervalConstraint
        = TimeConstraint
        | DurationConstraint
 ;
syntax TimeInterval
        = 
        ValueSpecification min ValueSpecification max
 ;
syntax DurationConstraint
        = 
        firstEvent: MARTE_PrimitivesTypes/Boolean
 ;
syntax TimeObservation
        = 
        NamedElement event MARTE_PrimitivesTypes/Boolean firstEvent
 ;
syntax DurationObservation
        = 
        NamedElement event MARTE_PrimitivesTypes/Boolean firstEvent
 ;
syntax ConnectorEnd
        = 
        Property definingEnd Property partWithPort ConnectableElement role
 ;
syntax TimeEvent
        = 
        MARTE_PrimitivesTypes/Boolean isRelative ValueSpecification when
 ;
syntax Event
        = 
        TimeEvent
 ;
syntax Port
        = 
        MARTE_PrimitivesTypes/Boolean isBehavior MARTE_PrimitivesTypes/Boolean isService Interface required+ Port redefinedPort+ Interface provided+ ProtocolStateMachine protocol
 ;
syntax Action
        = InvocationAction
        | StructuredActivityNode
 ;
syntax Message
        = 
        MessageKind messageKind MessageSort messageSort MessageEnd receiveEvent MessageEnd sendEvent Connector connector Interaction interaction ValueSpecification argument+ NamedElement signature
 ;
syntax Lifeline
        = 
        ConnectableElement represents Interaction interaction ValueSpecification selector PartDecomposition decomposedAs InteractionFragment coveredBy+
 ;
syntax Connector
        = 
        Association type Connector redefinedConnector+ ConnectorEnd end ConnectorKind kind Behavior contract+
 ;
syntax Collaboration
        = 
        ConnectableElement collaborationRole+
 ;
syntax Interface
        = 
        Property ownedAttribute+ Operation ownedOperation+ Classifier nestedClassifier+ Interface redefinedInterface+ Reception ownedReception+ ProtocolStateMachine protocol
 ;
syntax InterfaceRealization
        = 
        Interface contract BehavioredClassifier implementingClassifier
 ;
syntax Trigger
        = 
        Event event Port port+
 ;
syntax ProtocolStateMachine
        = 
        ProtocolConformance conformance+
 ;
syntax StateMachine
        = ProtocolStateMachine
        | Region region+ State submachineState+ Pseudostate connectionPoint+ StateMachine extendedStateMachine+
 ;
syntax ProtocolConformance
        = 
        ProtocolStateMachine generalMachine ProtocolStateMachine specificMachine
 ;
syntax Deployment
        = 
        DeployedArtifact deployedArtifact+ DeploymentSpecification configuration+ DeploymentTarget location
 ;
syntax Include
        = 
        UseCase addition UseCase includingCase
 ;
syntax Extend
        = 
        UseCase extendedCase Constraint condition ExtensionPoint extensionLocation+ UseCase extension
 ;
syntax ExtensionPoint
        = 
        useCase: UseCase
 ;
syntax Region
        = 
        Vertex subvertex+ Transition transition+ State state Region extendedRegion StateMachine stateMachine
 ;
syntax StructuredClassifier
        = EncapsulatedClassifier
        | Collaboration
 ;
syntax Vertex
        = Pseudostate
        | ConnectionPointReference
 ;
syntax Transition
        = 
        TransitionKind kind Region container Transition redefinedTransition Constraint guard Behavior effect Trigger trigger+ Vertex target Vertex source
 ;
syntax TransitionKind
        = internal: ()
        | local: ()
        | external: ()
 ;
syntax State
        = 
        MARTE_PrimitivesTypes/Boolean isComposite MARTE_PrimitivesTypes/Boolean isOrthogonal MARTE_PrimitivesTypes/Boolean isSimple MARTE_PrimitivesTypes/Boolean isSubmachineState StateMachine submachine ConnectionPointReference connection+ Pseudostate connectionPoint+ State redefinedState Constraint stateInvariant Behavior entry Behavior exit Behavior doActivity Trigger deferrableTrigger+ Region region+
 ;
syntax ParameterSet
        = 
        Parameter parameter+ Constraint condition+
 ;
syntax ActivityNode
        = ExecutableNode
        | ObjectNode
 ;
syntax ActivityGroup
        = InterruptibleActivityRegion
        | ActivityPartition
 ;
syntax ParameterDirectionKind
        = in: ()
        | inout: ()
        | out: ()
        | return: ()
 ;
syntax ParameterEffectKind
        = create: ()
        | read: ()
        | update: ()
        | delete: ()
 ;
syntax InterruptibleActivityRegion
        = 
        ActivityNode node+ ActivityEdge interruptingEdge+
 ;
syntax DeployedArtifact
        = 
        Artifact
 ;
syntax Slot
        = 
        StructuralFeature definingFeature ValueSpecification value+ InstanceSpecification owningInstance
 ;
syntax ExecutableNode
        = 
        Action
 ;
syntax OutputPin
        = 
        isControl: MARTE_PrimitivesTypes/Boolean
 ;
syntax Pin
        = OutputPin
        | InputPin
        | isControl: MARTE_PrimitivesTypes/Boolean
 ;
syntax InputPin
        = 
        isControl: MARTE_PrimitivesTypes/Boolean
 ;
syntax MessageKind
        = complete: ()
        | lost: ()
        | found: ()
        | unknown: ()
 ;
syntax ExceptionHandler
        = 
        ExecutableNode handlerBody ObjectNode exceptionInput Classifier exceptionType+ ExecutableNode protectedNode
 ;
syntax ObjectNode
        = 
        Pin
 ;
syntax ObjectNodeOrderingKind
        = unordered: ()
        | ordered: ()
        | LIFO: ()
        | FIFO: ()
 ;
syntax MessageEnd
        = 
        Gate
 ;
syntax MessageSort
        = synchCall: ()
        | asynchCall: ()
        | asynchSignal: ()
        | createMessage: ()
        | deleteMessage: ()
        | reply: ()
 ;
syntax Interaction
        = 
        Lifeline lifeline+ InteractionFragment fragment+ Action action+ Gate formalGate+ Message message+
 ;
syntax PartDecomposition
        = 
        Interaction refersTo Gate actualGate+ Action argument+
 ;
syntax InteractionUse
        = PartDecomposition
        | Interaction refersTo Gate actualGate+ Action argument+
 ;
syntax InteractionFragment
        = ExecutionSpecification
        | InteractionUse
        | OccurrenceSpecification
        | Interaction
        | InteractionOperand
 ;
syntax ConnectorKind
        = assembly: ()
        | delegation: ()
 ;
syntax Pseudostate
        = 
        PseudostateKind kind StateMachine stateMachine State state
 ;
syntax PseudostateKind
        = initial: ()
        | deepHistory: ()
        | shallowHistory: ()
        | join: ()
        | fork: ()
        | junction: ()
        | choice: ()
        | entryPoint: ()
        | exitPoint: ()
        | terminate: ()
 ;
syntax ConnectionPointReference
        = 
        Pseudostate entry+ Pseudostate exit+ State state
 ;
syntax StructuredActivityNode
        = 
        Variable variable+ ActivityEdge edge+ MARTE_PrimitivesTypes/Boolean mustIsolate ActivityNode node+
 ;
syntax Variable
        = 
        StructuredActivityNode scope Activity activityScope
 ;
syntax Activity
        = 
        StructuredActivityNode structuredNode+ Variable variable+ ActivityNode node+ MARTE_PrimitivesTypes/Boolean isReadOnly ActivityEdge edge+ ActivityPartition partition+ MARTE_PrimitivesTypes/Boolean isSingleExecution ActivityGroup group+
 ;
syntax OccurrenceSpecification
        = 
        GeneralOrdering toBefore+ Event event GeneralOrdering toAfter+
 ;
syntax DeploymentSpecification
        = 
        MARTE_PrimitivesTypes/String deploymentLocation MARTE_PrimitivesTypes/String executionLocation Deployment deployment
 ;
syntax Gate
        = 
        message: Message
 ;
syntax Artifact
        = DeploymentSpecification
        | MARTE_PrimitivesTypes/String fileName Artifact nestedArtifact+ Manifestation manifestation+ Operation ownedOperation+ Property ownedAttribute+
 ;
syntax GeneralOrdering
        = 
        OccurrenceSpecification before OccurrenceSpecification after
 ;
syntax Manifestation
        = 
        utilizedElement: PackageableElement
 ;
syntax InteractionOperand
        = 
        InteractionConstraint guard InteractionFragment fragment+
 ;
syntax InteractionConstraint
        = 
        ValueSpecification minint ValueSpecification maxint
 ;
