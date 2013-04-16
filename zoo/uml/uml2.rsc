@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Uml2

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Element
        = MultiplicityElement
        | Relationship
        | Slot
        | ActivityGroup
        | Clause
        | TemplateSignature
        | TemplateParameter
        | TemplateableElement
        | ParameterableElement
        | TemplateParameterSubstitution
        | ExceptionHandler
        | LinkEndData
        | QualifierValue
 ;
syntax MultiplicityElement
        = ConnectorEnd
        | Pin
 ;
syntax NamedElement
        = Namespace
        | TypedElement
        | RedefinableElement
        | CollaborationOccurrence
        | Trigger
        | InteractionFragment
        | Lifeline
        | Message
        | GeneralOrdering
        | MessageEnd
        | Vertex
        | ParameterSet
        | DeployedArtifact
        | DeploymentTarget
        | PackageableElement
        | ConnectableElement
        | Extend
        | Include
        | ActivityPartition
 ;
syntax Namespace
        = Package
        | Classifier
        | BehavioralFeature
        | InteractionOperand
        | Region
        | State
 ;
syntax OpaqueExpression
        = Expression
        | String body String language Parameter result Behavior behavior
 ;
syntax ValueSpecification
        = OpaqueExpression
        | LiteralSpecification
        | InstanceValue
        | TimeExpression
        | Duration
        | Interval
 ;
syntax Expression
        = 
        String symbol ValueSpecification operand+
 ;
syntax Comment
        = 
        String body Element annotatedElement+ StringExpression bodyExpression
 ;
syntax DirectedRelationship
        = Generalization
        | ElementImport
        | PackageImport
        | PackageMerge
        | TemplateBinding
        | ProtocolConformance
        | Dependency
        | InformationFlow
        | Extend
        | Include
 ;
syntax Relationship
        = DirectedRelationship
        | Association
 ;
syntax Class
        = Stereotype
        | Behavior
        | Component
        | AssociationClass
        | Node
        | Operation ownedOperation+ Class superClass+ Extension extension+ Classifier nestedClassifier+ Boolean isActive Reception ownedReception+
 ;
syntax Property
        = ExtensionEnd
        | Port
        | String default Boolean isComposite Boolean isDerived Class class_ Property opposite Boolean isDerivedUnion Association owningAssociation Property redefinedProperty+ Property subsettedProperty+ DataType datatype Association association AggregationKind aggregation ValueSpecification defaultValue Property qualifier+ Property associationEnd
 ;
syntax Operation
        = 
        Parameter ownedParameter+ Class class_ Boolean isQuery DataType datatype Constraint precondition+ Constraint postcondition+ Operation redefinedOperation+ Constraint bodyCondition
 ;
syntax TypedElement
        = ValueSpecification
        | ObjectNode
 ;
syntax Parameter
        = 
        Operation operation String default ParameterDirectionKind direction ValueSpecification defaultValue Boolean isException Boolean isStream ParameterEffectKind effect ParameterSet parameterSet+
 ;
syntax Package
        = Profile
        | Model
        | Package nestedPackage+ Package nestingPackage Type ownedType+ PackageableElement ownedMember+ PackageMerge packageMerge+ ProfileApplication appliedProfile+ PackageMerge packageExtension+
 ;
syntax Enumeration
        = 
        EnumerationLiteral ownedLiteral+
 ;
syntax DataType
        = Enumeration
        | PrimitiveType
        | Property ownedAttribute+ Operation ownedOperation+
 ;
syntax EnumerationLiteral
        = 
        enumeration: Enumeration
 ;
syntax PrimitiveType
        = 
        Property ownedAttribute+ Operation ownedOperation+
 ;
syntax Classifier
        = DataType
        | BehavioredClassifier
        | InformationItem
        | StructuredClassifier
        | Interface
        | Actor
        | Signal
        | ParameterableClassifier
        | TemplateableClassifier
        | Association
        | Artifact
 ;
syntax Feature
        = Connector
        | StructuralFeature
        | BehavioralFeature
 ;
syntax Constraint
        = InteractionConstraint
        | IntervalConstraint
        | Namespace context Namespace namespace ValueSpecification specification Element constrainedElement+
 ;
syntax VisibilityKind
        = package: ()
        | private: ()
        | protected: ()
        | public: ()
 ;
syntax LiteralBoolean
        = 
        value: Boolean
 ;
syntax LiteralSpecification
        = LiteralBoolean
        | LiteralString
        | LiteralNull
        | LiteralInteger
        | LiteralUnlimitedNatural
 ;
syntax LiteralString
        = 
        value: String
 ;
syntax LiteralNull
        = 
        ()
 ;
syntax LiteralInteger
        = 
        value: Integer
 ;
syntax LiteralUnlimitedNatural
        = 
        value: UnlimitedNatural
 ;
syntax BehavioralFeature
        = Reception
        | Operation
 ;
syntax StructuralFeature
        = 
        Property
 ;
syntax InstanceSpecification
        = EnumerationLiteral
        | Slot slot+ Classifier classifier+ ValueSpecification specification
 ;
syntax Slot
        = 
        InstanceSpecification owningInstance ValueSpecification value+ StructuralFeature definingFeature
 ;
syntax InstanceValue
        = 
        instance: InstanceSpecification
 ;
syntax RedefinableElement
        = Feature
        | ActivityEdge
        | ActivityNode
        | ExtensionPoint
        | Transition
        | RedefinableTemplateSignature
        | Region
 ;
syntax Generalization
        = 
        Classifier specific Classifier general Boolean isSubstitutable GeneralizationSet generalizationSet+
 ;
syntax PackageableElement
        = Type
        | Constraint
        | GeneralizationSet
        | PrimitiveFunction
        | InstanceSpecification
        | Dependency
        | InformationFlow
        | Package
 ;
syntax ElementImport
        = 
        VisibilityKind visibility String alias PackageableElement importedElement Namespace importingNamespace
 ;
syntax PackageImport
        = ProfileApplication
        | VisibilityKind visibility Package importedPackage Namespace importingNamespace
 ;
syntax Association
        = Extension
        | CommunicationPath
        | AssociationClass
        | Boolean isDerived Property ownedEnd+ Type endType+ Property memberEnd
 ;
syntax PackageMerge
        = 
        Package mergingPackage Package mergedPackage
 ;
syntax Stereotype
        = 
        Operation ownedOperation+ Class superClass+ Extension extension+ Classifier nestedClassifier+ Boolean isActive Reception ownedReception+
 ;
syntax Profile
        = 
        Stereotype ownedStereotype+ ElementImport metaclassReference+ PackageImport metamodelReference+
 ;
syntax ProfileApplication
        = 
        importedProfile: Profile
 ;
syntax Extension
        = 
        Boolean isRequired Class metaclass
 ;
syntax ExtensionEnd
        = 
        String default Boolean isComposite Boolean isDerived Class class_ Property opposite Boolean isDerivedUnion Association owningAssociation Property redefinedProperty+ Property subsettedProperty+ DataType datatype Association association AggregationKind aggregation ValueSpecification defaultValue Property qualifier+ Property associationEnd
 ;
syntax ParameterDirectionKind
        = in: ()
        | inout: ()
        | out: ()
        | return: ()
 ;
syntax AggregationKind
        = composite: ()
        | none: ()
        | shared: ()
 ;
syntax Behavior
        = Activity
        | StateMachine
        | Interaction
 ;
syntax BehavioredClassifier
        = UseCase
        | Class
        | Collaboration
 ;
syntax Activity
        = 
        String body String language ActivityEdge edge+ ActivityGroup group+ ActivityNode node+ Action action+ StructuredActivityNode structuredNode+ Boolean isSingleExecution Boolean isReadOnly
 ;
syntax Permission
        = 
        NamedElement client+ NamedElement supplier+
 ;
syntax Dependency
        = Permission
        | Usage
        | Abstraction
        | Deployment
        | NamedElement client+ NamedElement supplier+
 ;
syntax Usage
        = 
        NamedElement client+ NamedElement supplier+
 ;
syntax Abstraction
        = Realization
        | Manifestation
        | mapping: OpaqueExpression
 ;
syntax Realization
        = Substitution
        | Implementation
        | Component abstraction Classifier realizingClassifier
 ;
syntax Substitution
        = 
        Classifier contract Classifier substitutingClassifier
 ;
syntax GeneralizationSet
        = 
        Boolean isCovering Boolean isDisjoint Classifier powertype Generalization generalization+
 ;
syntax AssociationClass
        = 
        Operation ownedOperation+ Class superClass+ Extension extension+ Classifier nestedClassifier+ Boolean isActive Reception ownedReception+ Boolean isDerived Property ownedEnd+ Type endType+ Property memberEnd
 ;
syntax InformationItem
        = 
        Classifier represented+
 ;
syntax InformationFlow
        = 
        Relationship realization+ Classifier conveyed+
 ;
syntax Model
        = 
        viewpoint: String
 ;
syntax ConnectorEnd
        = 
        Property definingEnd ConnectableElement role Property partWithPort
 ;
syntax ConnectableElement
        = Parameter
        | Variable
 ;
syntax Connector
        = 
        Association type Connector redefinedConnector+ ConnectorEnd end ConnectorKind kind Behavior contract+
 ;
syntax StructuredClassifier
        = EncapsulatedClassifier
        | Collaboration
 ;
syntax ActivityEdge
        = ControlFlow
        | ObjectFlow
 ;
syntax ActivityGroup
        = InterruptibleActivityRegion
        | ActivityPartition
 ;
syntax ActivityNode
        = ControlNode
        | ExecutableNode
        | ObjectNode
 ;
syntax Action
        = CreateObjectAction
        | DestroyObjectAction
        | TestIdentityAction
        | ReadSelfAction
        | StructuralFeatureAction
        | LinkAction
        | ClearAssociationAction
        | VariableAction
        | ApplyFunctionAction
        | InvocationAction
        | ReadExtentAction
        | ReclassifyObjectAction
        | ReadIsClassifiedObjectAction
        | StartOwnedBehaviorAction
        | ReadLinkObjectEndAction
        | ReadLinkObjectEndQualifierAction
        | AcceptEventAction
        | ReplyAction
        | RaiseExceptionAction
        | StructuredActivityNode
        | String effect OutputPin output+ InputPin input+ Classifier context Constraint localPrecondition+ Constraint localPostcondition+
 ;
syntax ObjectNode
        = ActivityParameterNode
        | CentralBufferNode
        | ExpansionNode
        | Pin
 ;
syntax ControlNode
        = InitialNode
        | FinalNode
        | DecisionNode
        | MergeNode
        | ForkNode
        | JoinNode
 ;
syntax ControlFlow
        = 
        Activity activity ActivityNode source ActivityNode target ActivityGroup inGroup+ ValueSpecification guard ActivityEdge redefinedElement+ StructuredActivityNode inStructuredNode ActivityPartition inPartition+ ValueSpecification weight InterruptibleActivityRegion interrupts
 ;
syntax ObjectFlow
        = 
        Boolean isMulticast Boolean isMultireceive Behavior transformation Behavior selection
 ;
syntax InitialNode
        = 
        ()
 ;
syntax FinalNode
        = ActivityFinalNode
        | FlowFinalNode
 ;
syntax ActivityFinalNode
        = 
        ()
 ;
syntax DecisionNode
        = 
        decisionInput: Behavior
 ;
syntax MergeNode
        = 
        ()
 ;
syntax ExecutableNode
        = 
        Action
 ;
syntax OutputPin
        = 
        ()
 ;
syntax InputPin
        = 
        ValuePin
 ;
syntax Pin
        = OutputPin
        | InputPin
 ;
syntax ActivityParameterNode
        = 
        parameter: Parameter
 ;
syntax ValuePin
        = 
        value: ValueSpecification
 ;
syntax Interface
        = 
        Property ownedAttribute+ Operation ownedOperation+ Interface redefinedInterface+ Classifier nestedClassifier+ Reception ownedReception+ ProtocolStateMachine protocol
 ;
syntax Implementation
        = 
        Interface contract BehavioredClassifier implementingClassifier
 ;
syntax Artifact
        = DeploymentSpecification
        | String fileName Artifact nestedArtifact+ Manifestation manifestation+ Operation ownedOperation+ Property ownedAttribute+
 ;
syntax Manifestation
        = 
        utilizedElement: PackageableElement
 ;
syntax Actor
        = 
        Feature feature+ Boolean isAbstract NamedElement inheritedMember+ Classifier general+ Generalization generalization+ Property attribute+ Classifier redefinedClassifier+ Substitution substitution+ GeneralizationSet powertypeExtent+ UseCase ownedUseCase+ UseCase useCase+ CollaborationOccurrence representation CollaborationOccurrence occurrence+
 ;
syntax Extend
        = 
        UseCase extendedCase UseCase extension Constraint condition ExtensionPoint extensionLocation+
 ;
syntax UseCase
        = 
        Include include+ Extend extend+ ExtensionPoint extensionPoint+ Classifier subject+
 ;
syntax ExtensionPoint
        = 
        useCase: UseCase
 ;
syntax Include
        = 
        UseCase includingCase UseCase addition
 ;
syntax CollaborationOccurrence
        = 
        Collaboration type Dependency roleBinding+
 ;
syntax Collaboration
        = 
        ConnectableElement collaborationRole+
 ;
syntax Port
        = 
        Boolean isBehavior Boolean isService Interface required+ Port redefinedPort+ Interface provided+ ProtocolStateMachine protocol
 ;
syntax EncapsulatedClassifier
        = 
        Class
 ;
syntax CallConcurrencyKind
        = guarded: ()
        | concurrent: ()
        | sequential: ()
 ;
syntax CallTrigger
        = 
        operation: Operation
 ;
syntax MessageTrigger
        = CallTrigger
        | SignalTrigger
        | AnyTrigger
 ;
syntax ChangeTrigger
        = 
        changeExpression: ValueSpecification
 ;
syntax Trigger
        = MessageTrigger
        | ChangeTrigger
        | TimeTrigger
 ;
syntax Reception
        = 
        signal: Signal
 ;
syntax Signal
        = 
        Property ownedAttribute+
 ;
syntax SignalTrigger
        = 
        Signal signal+
 ;
syntax TimeTrigger
        = 
        Boolean isRelative ValueSpecification when
 ;
syntax AnyTrigger
        = 
        ()
 ;
syntax Variable
        = 
        scope: StructuredActivityNode
 ;
syntax StructuredActivityNode
        = ConditionalNode
        | LoopNode
        | ExpansionRegion
        | Variable variable+ ActivityNode containedNode+ ActivityEdge containedEdge+ Boolean mustIsolate
 ;
syntax ConditionalNode
        = 
        Boolean isDeterminate Boolean isAssured Clause clause+ OutputPin result+
 ;
syntax Clause
        = 
        ActivityNode test+ ActivityNode body+ Clause predecessorClause+ Clause successorClause+ OutputPin decider OutputPin bodyOutput+
 ;
syntax LoopNode
        = 
        Boolean isTestedFirst ActivityNode bodyPart+ ActivityNode setupPart+ OutputPin decider ActivityNode test+ OutputPin result+ OutputPin loopVariable+ OutputPin bodyOutput+ InputPin loopVariableInput+
 ;
syntax Interaction
        = 
        Lifeline lifeline+ Message message+ InteractionFragment fragment+ Gate formalGate+
 ;
syntax InteractionFragment
        = ExecutionOccurrence
        | StateInvariant
        | InteractionOccurrence
        | CombinedFragment
        | Continuation
        | EventOccurrence
        | Interaction
        | InteractionOperand
 ;
syntax Lifeline
        = 
        InteractionFragment coveredBy+ ConnectableElement represents Interaction interaction OpaqueExpression selector PartDecomposition decomposedAs
 ;
syntax Message
        = 
        MessageKind messageKind MessageSort messageSort MessageEnd receiveEvent MessageEnd sendEvent Connector connector Interaction interaction NamedElement signature ValueSpecification argument+
 ;
syntax GeneralOrdering
        = 
        EventOccurrence before EventOccurrence after
 ;
syntax MessageKind
        = found: ()
        | lost: ()
        | unknown: ()
        | complete: ()
 ;
syntax MessageSort
        = synchSignal: ()
        | synchCall: ()
        | asynchCall: ()
        | asynchSignal: ()
 ;
syntax MessageEnd
        = Gate
        | EventOccurrence
 ;
syntax EventOccurrence
        = Stop
        | ExecutionOccurrence startExec+ ExecutionOccurrence finishExec+ GeneralOrdering toAfter+ GeneralOrdering toBefore+
 ;
syntax ExecutionOccurrence
        = 
        EventOccurrence start EventOccurrence finish Behavior behavior+
 ;
syntax StateInvariant
        = 
        invariant: Constraint
 ;
syntax Stop
        = 
        ExecutionOccurrence startExec+ ExecutionOccurrence finishExec+ GeneralOrdering toAfter+ GeneralOrdering toBefore+
 ;
syntax TemplateSignature
        = RedefinableTemplateSignature
        | TemplateParameter parameter+ TemplateParameter ownedParameter+ TemplateSignature nestedSignature+ TemplateSignature nestingSignature TemplateableElement template
 ;
syntax TemplateParameter
        = OperationTemplateParameter
        | ClassifierTemplateParameter
        | ConnectableElementTemplateParameter
        | TemplateSignature signature ParameterableElement parameteredElement ParameterableElement ownedParameteredElement ParameterableElement default ParameterableElement ownedDefault
 ;
syntax TemplateableElement
        = NamedElement
        | Comment
        | StringExpression
 ;
syntax StringExpression
        = 
        StringExpression subExpression+ StringExpression owningExpression
 ;
syntax ParameterableElement
        = ValueSpecification
        | PackageableElement
        | ConnectableElement
 ;
syntax TemplateBinding
        = 
        TemplateableElement boundElement TemplateSignature signature TemplateParameterSubstitution parameterSubstitution+
 ;
syntax TemplateParameterSubstitution
        = 
        TemplateParameter formal TemplateBinding templateBinding ParameterableElement actual+ ParameterableElement ownedActual+
 ;
syntax OperationTemplateParameter
        = 
        TemplateSignature signature ParameterableElement parameteredElement ParameterableElement ownedParameteredElement ParameterableElement default ParameterableElement ownedDefault
 ;
syntax ClassifierTemplateParameter
        = 
        allowSubstitutable: Boolean
 ;
syntax RedefinableTemplateSignature
        = 
        Classifier redefinitionContext+ Boolean isLeaf TemplateParameter parameter+ TemplateParameter ownedParameter+ TemplateSignature nestedSignature+ TemplateSignature nestingSignature TemplateableElement template
 ;
syntax ConnectableElementTemplateParameter
        = 
        TemplateSignature signature ParameterableElement parameteredElement ParameterableElement ownedParameteredElement ParameterableElement default ParameterableElement ownedDefault
 ;
syntax ForkNode
        = 
        ()
 ;
syntax JoinNode
        = 
        Boolean isCombineDuplicate ValueSpecification joinSpec
 ;
syntax FlowFinalNode
        = 
        ()
 ;
syntax CentralBufferNode
        = 
        DataStoreNode
 ;
syntax ActivityPartition
        = 
        Boolean isDimension Boolean isExternal ActivityEdge containedEdge+ ActivityNode containedNode+ ActivityPartition subgroup+ ActivityPartition superPartition Element represents
 ;
syntax ExpansionNode
        = 
        ExpansionRegion regionAsOutput ExpansionRegion regionAsInput
 ;
syntax ExpansionRegion
        = 
        ExpansionKind mode ExpansionNode outputElement+ ExpansionNode inputElement+
 ;
syntax ExpansionKind
        = parallel: ()
        | iterative: ()
        | stream: ()
 ;
syntax ExceptionHandler
        = 
        ExecutableNode protectedNode ExecutableNode handlerBody ObjectNode exceptionInput Classifier exceptionType+
 ;
syntax InteractionOccurrence
        = PartDecomposition
        | Interaction refersTo Gate actualGate+ InputPin argument+
 ;
syntax Gate
        = 
        Message receiveMessage Message sendMessage
 ;
syntax PartDecomposition
        = 
        Interaction refersTo Gate actualGate+ InputPin argument+
 ;
syntax InteractionOperand
        = 
        InteractionConstraint guard InteractionFragment fragment+
 ;
syntax InteractionConstraint
        = 
        ValueSpecification minint ValueSpecification maxint
 ;
syntax InteractionOperator
        = consider: ()
        | par: ()
        | opt: ()
        | loop: ()
        | alt: ()
        | break: ()
        | assert: ()
        | strict: ()
        | seq: ()
        | ignore: ()
        | neg: ()
        | critical: ()
 ;
syntax CombinedFragment
        = 
        InteractionOperator interactionOperator InteractionOperand operand+ Gate cfragmentGate+
 ;
syntax Continuation
        = 
        setting: Boolean
 ;
syntax StateMachine
        = ProtocolStateMachine
        | Region region+ Pseudostate connectionPoint+ StateMachine extendedStateMachine BehavioredClassifier stateMachine_redefinitionContext
 ;
syntax Region
        = 
        Vertex subvertex+ Transition transition+ StateMachine stateMachine State state Region extendedRegion
 ;
syntax Pseudostate
        = 
        kind: PseudostateKind
 ;
syntax State
        = FinalState
        | Boolean isComposite Boolean isOrthogonal Boolean isSimple Boolean isSubmachineState StateMachine submachine ConnectionPointReference connection+ State redefinedState Trigger deferrableTrigger+ Region region+ Activity entry Activity exit Activity doActivity Constraint stateInvariant
 ;
syntax Vertex
        = Pseudostate
        | ConnectionPointReference
 ;
syntax ConnectionPointReference
        = 
        Pseudostate entry+ Pseudostate exit+
 ;
syntax Transition
        = ProtocolTransition
        | TransitionKind kind Region container Vertex source Vertex target Transition redefinedTransition Trigger trigger+ Constraint guard Activity effect
 ;
syntax TransitionKind
        = internal: ()
        | local: ()
        | external: ()
 ;
syntax PseudostateKind
        = deepHistory: ()
        | shallowHistory: ()
        | choice: ()
        | join: ()
        | exitPoint: ()
        | terminate: ()
        | fork: ()
        | junction: ()
        | initial: ()
        | entryPoint: ()
 ;
syntax FinalState
        = 
        Boolean isComposite Boolean isOrthogonal Boolean isSimple Boolean isSubmachineState StateMachine submachine ConnectionPointReference connection+ State redefinedState Trigger deferrableTrigger+ Region region+ Activity entry Activity exit Activity doActivity Constraint stateInvariant
 ;
syntax CreateObjectAction
        = 
        Classifier classifier OutputPin result
 ;
syntax DestroyObjectAction
        = 
        Boolean isDestroyLinks Boolean isDestroyOwnedObjects InputPin target
 ;
syntax TestIdentityAction
        = 
        InputPin first InputPin second OutputPin result
 ;
syntax ReadSelfAction
        = 
        result: OutputPin
 ;
syntax StructuralFeatureAction
        = ReadStructuralFeatureAction
        | WriteStructuralFeatureAction
        | ClearStructuralFeatureAction
 ;
syntax ReadStructuralFeatureAction
        = 
        result: OutputPin
 ;
syntax WriteStructuralFeatureAction
        = RemoveStructuralFeatureValueAction
        | AddStructuralFeatureValueAction
        | TimeObservationAction
        | DurationObservationAction
 ;
syntax ClearStructuralFeatureAction
        = 
        StructuralFeature structuralFeature InputPin object
 ;
syntax RemoveStructuralFeatureValueAction
        = 
        value: InputPin
 ;
syntax AddStructuralFeatureValueAction
        = 
        Boolean isReplaceAll InputPin insertAt
 ;
syntax LinkAction
        = ReadLinkAction
        | WriteLinkAction
 ;
syntax LinkEndData
        = LinkEndCreationData
        | InputPin value Property end QualifierValue qualifier+
 ;
syntax ReadLinkAction
        = 
        result: OutputPin
 ;
syntax LinkEndCreationData
        = 
        Boolean isReplaceAll InputPin insertAt
 ;
syntax CreateLinkAction
        = 
        CreateLinkObjectAction
 ;
syntax WriteLinkAction
        = CreateLinkAction
        | DestroyLinkAction
 ;
syntax DestroyLinkAction
        = 
        ()
 ;
syntax ClearAssociationAction
        = 
        InputPin object Association association
 ;
syntax VariableAction
        = ReadVariableAction
        | WriteVariableAction
        | ClearVariableAction
 ;
syntax ReadVariableAction
        = 
        result: OutputPin
 ;
syntax WriteVariableAction
        = AddVariableValueAction
        | RemoveVariableValueAction
 ;
syntax ClearVariableAction
        = 
        variable: Variable
 ;
syntax AddVariableValueAction
        = 
        Boolean isReplaceAll InputPin insertAt
 ;
syntax RemoveVariableValueAction
        = 
        value: InputPin
 ;
syntax ApplyFunctionAction
        = 
        PrimitiveFunction function InputPin argument+ OutputPin result+
 ;
syntax PrimitiveFunction
        = 
        String body String language
 ;
syntax CallAction
        = CallOperationAction
        | CallBehaviorAction
 ;
syntax InvocationAction
        = CallAction
        | SendSignalAction
        | BroadcastSignalAction
        | SendObjectAction
 ;
syntax SendSignalAction
        = 
        InputPin target Signal signal
 ;
syntax BroadcastSignalAction
        = 
        signal: Signal
 ;
syntax SendObjectAction
        = 
        InputPin target InputPin request
 ;
syntax CallOperationAction
        = 
        Operation operation InputPin target
 ;
syntax CallBehaviorAction
        = 
        behavior: Behavior
 ;
syntax TimeExpression
        = 
        Boolean firstTime NamedElement event
 ;
syntax Duration
        = 
        Boolean firstTime NamedElement event
 ;
syntax TimeObservationAction
        = 
        TimeExpression now+
 ;
syntax DurationInterval
        = 
        ValueSpecification min+ ValueSpecification max+
 ;
syntax Interval
        = DurationInterval
        | TimeInterval
        | ValueSpecification min+ ValueSpecification max+
 ;
syntax TimeConstraint
        = 
        ()
 ;
syntax IntervalConstraint
        = TimeConstraint
        | DurationConstraint
 ;
syntax TimeInterval
        = 
        ValueSpecification min+ ValueSpecification max+
 ;
syntax DurationObservationAction
        = 
        Duration duration+
 ;
syntax DurationConstraint
        = 
        ()
 ;
syntax DataStoreNode
        = 
        ()
 ;
syntax ParameterEffectKind
        = update: ()
        | read: ()
        | delete: ()
        | create: ()
 ;
syntax InterruptibleActivityRegion
        = 
        ActivityEdge interruptingEdge+ ActivityNode containedNode+
 ;
syntax ObjectNodeOrderingKind
        = FIFO: ()
        | unordered: ()
        | ordered: ()
        | LIFO: ()
 ;
syntax ParameterSet
        = 
        Parameter parameter+ Constraint condition+
 ;
syntax Component
        = 
        Boolean isIndirectlyInstantiated Interface required+ Interface provided+ Realization realization+ PackageableElement ownedMember+
 ;
syntax ConnectorKind
        = delegation: ()
        | assembly: ()
 ;
syntax Deployment
        = 
        DeployedArtifact deployedArtifact+ DeploymentTarget location DeploymentSpecification configuration+
 ;
syntax DeployedArtifact
        = 
        Artifact
 ;
syntax DeploymentTarget
        = 
        Node
 ;
syntax Node
        = Device
        | ExecutionEnvironment
        | Node nestedNode+
 ;
syntax Device
        = 
        Node nestedNode+
 ;
syntax ExecutionEnvironment
        = 
        Node nestedNode+
 ;
syntax CommunicationPath
        = 
        Boolean isDerived Property ownedEnd+ Type endType+ Property memberEnd
 ;
syntax ProtocolConformance
        = 
        ProtocolStateMachine specificMachine ProtocolStateMachine generalMachine
 ;
syntax ProtocolStateMachine
        = 
        ProtocolConformance conformance+
 ;
syntax ProtocolTransition
        = 
        Constraint postCondition Operation referred+ Constraint preCondition
 ;
syntax ReadExtentAction
        = 
        OutputPin result Classifier classifier
 ;
syntax ReclassifyObjectAction
        = 
        Boolean isReplaceAll Classifier oldClassifier+ Classifier newClassifier+ InputPin object
 ;
syntax ReadIsClassifiedObjectAction
        = 
        Boolean isDirect Classifier classifier OutputPin result InputPin object
 ;
syntax StartOwnedBehaviorAction
        = 
        object: InputPin
 ;
syntax QualifierValue
        = 
        Property qualifier InputPin value
 ;
syntax ReadLinkObjectEndAction
        = 
        InputPin object Property end OutputPin result
 ;
syntax ReadLinkObjectEndQualifierAction
        = 
        InputPin object OutputPin result Property qualifier
 ;
syntax CreateLinkObjectAction
        = 
        result: OutputPin
 ;
syntax AcceptEventAction
        = AcceptCallAction
        | Trigger trigger+ OutputPin result+
 ;
syntax AcceptCallAction
        = 
        returnInformation: OutputPin
 ;
syntax ReplyAction
        = 
        CallTrigger replyToCall InputPin replyValue+ InputPin returnInformation
 ;
syntax RaiseExceptionAction
        = 
        exception: InputPin
 ;
syntax DeploymentSpecification
        = 
        String deploymentLocation String executionLocation
 ;
