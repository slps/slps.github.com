@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Marte

syntax Element
        = 
        ()
 ;
syntax Comment
        = 
        ANY body ANY annotatedElement+
 ;
syntax Package
        = 
        ANY ownedType+ ANY packageMerge+ ANY packagedElement+ ANY nestedPackage+ ANY nestingPackage ANY profileApplication+
 ;
syntax NamedElement
        = 
        ()
 ;
syntax StructuralFeature
        = 
        ()
 ;
syntax ConnectableElement
        = 
        ()
 ;
syntax TemplateableElement
        = 
        ()
 ;
syntax Property
        = 
        ANY class ANY datatype ANY owningAssociation ANY association ANY isDerived ANY isDerivedUnion ANY default ANY aggregation ANY isComposite ANY redefinedProperty+ ANY defaultValue ANY opposite ANY subsettedProperty+ ANY qualifier+ ANY associationEnd
 ;
syntax VisibilityKind
        = public: ()
        | private: ()
        | protected: ()
        | package: ()
 ;
syntax Dependency
        = 
        ANY supplier+ ANY client+
 ;
syntax DirectedRelationship
        = 
        ()
 ;
syntax Relationship
        = 
        ()
 ;
syntax Namespace
        = 
        ()
 ;
syntax ElementImport
        = 
        ANY visibility ANY alias ANY importedElement ANY importingNamespace
 ;
syntax PackageImport
        = 
        ANY visibility ANY importedPackage ANY importingNamespace
 ;
syntax Constraint
        = 
        ANY constrainedElement+ ANY specification ANY context
 ;
syntax TypedElement
        = 
        ()
 ;
syntax Type
        = 
        ()
 ;
syntax Association
        = 
        ANY isDerived ANY ownedEnd+ ANY endType+ ANY memberEnd ANY navigableOwnedEnd+
 ;
syntax Classifier
        = 
        ()
 ;
syntax RedefinableElement
        = 
        ()
 ;
syntax TemplateBinding
        = 
        ANY signature ANY parameterSubstitution+ ANY boundElement
 ;
syntax TemplateSignature
        = 
        ANY parameter+ ANY ownedParameter+ ANY template
 ;
syntax TemplateParameter
        = 
        ANY signature ANY parameteredElement ANY ownedParameteredElement ANY default ANY ownedDefault
 ;
syntax ParameterableElement
        = 
        ()
 ;
syntax TemplateParameterSubstitution
        = 
        ANY formal ANY actual+ ANY ownedActual+ ANY templateBinding
 ;
syntax Generalization
        = 
        ANY isSubstitutable ANY general ANY generalizationSet+ ANY specific
 ;
syntax GeneralizationSet
        = 
        ANY isCovering ANY isDisjoint ANY powertype ANY generalization+
 ;
syntax Feature
        = 
        ()
 ;
syntax Substitution
        = 
        ANY contract ANY substitutingClassifier
 ;
syntax PackageableElement
        = 
        ()
 ;
syntax PackageMerge
        = 
        ANY mergedPackage ANY receivingPackage
 ;
syntax ProfileApplication
        = 
        ANY appliedProfile ANY isStrict ANY applyingPackage
 ;
syntax Profile
        = 
        ANY ownedStereotype+ ANY metaclassReference+ ANY metamodelReference+
 ;
syntax Stereotype
        = 
        ANY icon+
 ;
syntax Class
        = 
        ANY nestedClassifier+ ANY ownedOperation+ ANY superClass+ ANY isActive ANY ownedReception+ ANY extension+
 ;
syntax StringExpression
        = 
        ANY subExpression+ ANY owningExpression
 ;
syntax Expression
        = 
        ANY symbol ANY operand+
 ;
syntax ValueSpecification
        = 
        ()
 ;
syntax BehavioredClassifier
        = 
        ()
 ;
syntax Behavior
        = 
        ()
 ;
syntax MultiplicityElement
        = 
        ()
 ;
syntax DeploymentTarget
        = 
        ()
 ;
syntax DataType
        = 
        ANY ownedAttribute+ ANY ownedOperation+
 ;
syntax AggregationKind
        = none: ()
        | shared: ()
        | composite: ()
 ;
syntax CollaborationUse
        = 
        ANY type ANY roleBinding+
 ;
syntax UseCase
        = 
        ANY include+ ANY extend+ ANY extensionPoint+ ANY subject+
 ;
syntax Realization
        = 
        ()
 ;
syntax Abstraction
        = 
        mapping: ANY
 ;
syntax Image
        = 
        ANY content ANY location ANY format
 ;
syntax OpaqueExpression
        = 
        ANY body+ ANY language+ ANY result ANY behavior
 ;
syntax Parameter
        = 
        ANY direction ANY default ANY defaultValue ANY operation ANY parameterSet+ ANY isException ANY isStream ANY effect
 ;
syntax EncapsulatedClassifier
        = 
        ()
 ;
syntax Operation
        = 
        ANY interface ANY class ANY isQuery ANY isOrdered ANY isUnique ANY lower ANY upper ANY precondition+ ANY postcondition+ ANY redefinedOperation+ ANY datatype ANY bodyCondition ANY type
 ;
syntax Reception
        = 
        signal: ANY
 ;
syntax Extension
        = 
        ANY isRequired ANY metaclass
 ;
syntax EnumerationLiteral
        = 
        enumeration: ANY
 ;
syntax ActivityPartition
        = 
        ANY isDimension ANY isExternal ANY node+ ANY subpartition+ ANY superPartition ANY represents ANY edge+
 ;
syntax Enumeration
        = 
        ANY ownedLiteral+
 ;
syntax InstanceSpecification
        = 
        ANY classifier+ ANY slot+ ANY specification
 ;
syntax BehavioralFeature
        = 
        ()
 ;
syntax Signal
        = 
        ANY ownedAttribute+
 ;
syntax TimeExpression
        = 
        ANY expr ANY observation+
 ;
syntax Observation
        = 
        ()
 ;
syntax Duration
        = 
        ANY expr ANY observation+
 ;
syntax DurationInterval
        = 
        ()
 ;
syntax Interval
        = 
        ANY min ANY max
 ;
syntax TimeConstraint
        = 
        firstEvent: ANY
 ;
syntax IntervalConstraint
        = 
        ()
 ;
syntax TimeInterval
        = 
        ()
 ;
syntax DurationConstraint
        = 
        firstEvent: ANY
 ;
syntax TimeObservation
        = 
        ANY event ANY firstEvent
 ;
syntax DurationObservation
        = 
        ANY event ANY firstEvent
 ;
syntax ConnectorEnd
        = 
        ANY definingEnd ANY partWithPort ANY role
 ;
syntax TimeEvent
        = 
        ANY isRelative ANY when
 ;
syntax Event
        = 
        ()
 ;
syntax Port
        = 
        ANY isBehavior ANY isService ANY required+ ANY redefinedPort+ ANY provided+ ANY protocol
 ;
syntax Action
        = 
        ()
 ;
syntax Message
        = 
        ANY messageKind ANY messageSort ANY receiveEvent ANY sendEvent ANY connector ANY interaction ANY argument+ ANY signature
 ;
syntax Lifeline
        = 
        ANY represents ANY interaction ANY selector ANY decomposedAs ANY coveredBy+
 ;
syntax ExecutionSpecification
        = 
        ()
 ;
syntax InvocationAction
        = 
        ()
 ;
syntax Connector
        = 
        ANY type ANY redefinedConnector+ ANY end ANY kind ANY contract+
 ;
syntax Collaboration
        = 
        ANY collaborationRole+
 ;
syntax Interface
        = 
        ANY ownedAttribute+ ANY ownedOperation+ ANY nestedClassifier+ ANY redefinedInterface+ ANY ownedReception+ ANY protocol
 ;
syntax InterfaceRealization
        = 
        ANY contract ANY implementingClassifier
 ;
syntax Trigger
        = 
        ANY event ANY port+
 ;
syntax ProtocolStateMachine
        = 
        ANY conformance+
 ;
syntax StateMachine
        = 
        ANY region+ ANY submachineState+ ANY connectionPoint+ ANY extendedStateMachine+
 ;
syntax ProtocolConformance
        = 
        ANY generalMachine ANY specificMachine
 ;
syntax Deployment
        = 
        ANY deployedArtifact+ ANY configuration+ ANY location
 ;
syntax Include
        = 
        ANY addition ANY includingCase
 ;
syntax Extend
        = 
        ANY extendedCase ANY condition ANY extensionLocation+ ANY extension
 ;
syntax ExtensionPoint
        = 
        useCase: ANY
 ;
syntax Region
        = 
        ANY subvertex+ ANY transition+ ANY state ANY extendedRegion ANY stateMachine
 ;
syntax StructuredClassifier
        = 
        ()
 ;
syntax Vertex
        = 
        ()
 ;
syntax Transition
        = 
        ANY kind ANY container ANY redefinedTransition ANY guard ANY effect ANY trigger+ ANY target ANY source
 ;
syntax TransitionKind
        = internal: ()
        | local: ()
        | external: ()
 ;
syntax State
        = 
        ANY isComposite ANY isOrthogonal ANY isSimple ANY isSubmachineState ANY submachine ANY connection+ ANY connectionPoint+ ANY redefinedState ANY stateInvariant ANY entry ANY exit ANY doActivity ANY deferrableTrigger+ ANY region+
 ;
syntax ParameterSet
        = 
        ANY parameter+ ANY condition+
 ;
syntax ActivityNode
        = 
        ()
 ;
syntax ActivityGroup
        = 
        ()
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
syntax ActivityEdge
        = 
        ()
 ;
syntax InterruptibleActivityRegion
        = 
        ANY node+ ANY interruptingEdge+
 ;
syntax DeployedArtifact
        = 
        ()
 ;
syntax Slot
        = 
        ANY definingFeature ANY value+ ANY owningInstance
 ;
syntax ExecutableNode
        = 
        ()
 ;
syntax OutputPin
        = 
        ()
 ;
syntax Pin
        = 
        isControl: ANY
 ;
syntax InputPin
        = 
        ()
 ;
syntax MessageKind
        = complete: ()
        | lost: ()
        | found: ()
        | unknown: ()
 ;
syntax ExceptionHandler
        = 
        ANY handlerBody ANY exceptionInput ANY exceptionType+ ANY protectedNode
 ;
syntax ObjectNode
        = 
        ()
 ;
syntax ObjectNodeOrderingKind
        = unordered: ()
        | ordered: ()
        | LIFO: ()
        | FIFO: ()
 ;
syntax MessageEnd
        = 
        ()
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
        ANY lifeline+ ANY fragment+ ANY action+ ANY formalGate+ ANY message+
 ;
syntax PartDecomposition
        = 
        ()
 ;
syntax InteractionUse
        = 
        ANY refersTo ANY actualGate+ ANY argument+
 ;
syntax InteractionFragment
        = 
        ()
 ;
syntax ConnectorKind
        = assembly: ()
        | delegation: ()
 ;
syntax Pseudostate
        = 
        ANY kind ANY stateMachine ANY state
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
        ANY entry+ ANY exit+ ANY state
 ;
syntax StructuredActivityNode
        = 
        ANY variable+ ANY edge+ ANY mustIsolate ANY node+
 ;
syntax Variable
        = 
        ANY scope ANY activityScope
 ;
syntax Activity
        = 
        ANY structuredNode+ ANY variable+ ANY node+ ANY isReadOnly ANY edge+ ANY partition+ ANY isSingleExecution ANY group+
 ;
syntax OccurrenceSpecification
        = 
        ANY toBefore+ ANY event ANY toAfter+
 ;
syntax DeploymentSpecification
        = 
        ANY deploymentLocation ANY executionLocation ANY deployment
 ;
syntax Gate
        = 
        ANY message
 ;
syntax Artifact
        = 
        ANY fileName ANY nestedArtifact+ ANY manifestation+ ANY ownedOperation+ ANY ownedAttribute+
 ;
syntax GeneralOrdering
        = 
        ANY before ANY after
 ;
syntax Manifestation
        = 
        utilizedElement: ANY
 ;
syntax InteractionOperand
        = 
        ANY guard ANY fragment+
 ;
syntax InteractionConstraint
        = 
        ANY minint ANY maxint
 ;
