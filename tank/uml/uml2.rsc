@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Uml2

syntax Element
        = 
        ()
 ;
syntax MultiplicityElement
        = 
        ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Namespace
        = 
        ()
 ;
syntax OpaqueExpression
        = 
        ANY body ANY language ANY result ANY behavior
 ;
syntax ValueSpecification
        = 
        ()
 ;
syntax Expression
        = 
        ANY symbol ANY operand+
 ;
syntax Comment
        = 
        ANY body ANY annotatedElement+ ANY bodyExpression
 ;
syntax DirectedRelationship
        = 
        ()
 ;
syntax Relationship
        = 
        ()
 ;
syntax Class
        = 
        ANY ownedOperation+ ANY superClass+ ANY extension+ ANY nestedClassifier+ ANY isActive ANY ownedReception+
 ;
syntax Type
        = 
        ()
 ;
syntax Property
        = 
        ANY default ANY isComposite ANY isDerived ANY class_ ANY opposite ANY isDerivedUnion ANY owningAssociation ANY redefinedProperty+ ANY subsettedProperty+ ANY datatype ANY association ANY aggregation ANY defaultValue ANY qualifier+ ANY associationEnd
 ;
syntax Operation
        = 
        ANY ownedParameter+ ANY class_ ANY isQuery ANY datatype ANY precondition+ ANY postcondition+ ANY redefinedOperation+ ANY bodyCondition
 ;
syntax TypedElement
        = 
        ()
 ;
syntax Parameter
        = 
        ANY operation ANY default ANY direction ANY defaultValue ANY isException ANY isStream ANY effect ANY parameterSet+
 ;
syntax Package
        = 
        ANY nestedPackage+ ANY nestingPackage ANY ownedType+ ANY ownedMember+ ANY packageMerge+ ANY appliedProfile+ ANY packageExtension+
 ;
syntax Enumeration
        = 
        ANY ownedLiteral+
 ;
syntax DataType
        = 
        ANY ownedAttribute+ ANY ownedOperation+
 ;
syntax EnumerationLiteral
        = 
        enumeration: ANY
 ;
syntax PrimitiveType
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
syntax Constraint
        = 
        ANY context ANY namespace ANY specification ANY constrainedElement+
 ;
syntax VisibilityKind
        = package: ()
        | private: ()
        | protected: ()
        | public: ()
 ;
syntax LiteralBoolean
        = 
        value: ANY
 ;
syntax LiteralSpecification
        = 
        ()
 ;
syntax LiteralString
        = 
        value: ANY
 ;
syntax LiteralNull
        = 
        
 ;
syntax LiteralInteger
        = 
        value: ANY
 ;
syntax LiteralUnlimitedNatural
        = 
        value: ANY
 ;
syntax BehavioralFeature
        = 
        ()
 ;
syntax StructuralFeature
        = 
        ()
 ;
syntax InstanceSpecification
        = 
        ANY slot+ ANY classifier+ ANY specification
 ;
syntax Slot
        = 
        ANY owningInstance ANY value+ ANY definingFeature
 ;
syntax InstanceValue
        = 
        instance: ANY
 ;
syntax RedefinableElement
        = 
        ()
 ;
syntax Generalization
        = 
        ANY specific ANY general ANY isSubstitutable ANY generalizationSet+
 ;
syntax PackageableElement
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
syntax Association
        = 
        ANY isDerived ANY ownedEnd+ ANY endType+ ANY memberEnd
 ;
syntax PackageMerge
        = 
        ANY mergingPackage ANY mergedPackage
 ;
syntax Stereotype
        = 
        ()
 ;
syntax Profile
        = 
        ANY ownedStereotype+ ANY metaclassReference+ ANY metamodelReference+
 ;
syntax ProfileApplication
        = 
        importedProfile: ANY
 ;
syntax Extension
        = 
        ANY isRequired ANY metaclass
 ;
syntax ExtensionEnd
        = 
        ()
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
        = 
        ()
 ;
syntax BehavioredClassifier
        = 
        ()
 ;
syntax Activity
        = 
        ANY body ANY language ANY edge+ ANY group+ ANY node+ ANY action+ ANY structuredNode+ ANY isSingleExecution ANY isReadOnly
 ;
syntax Permission
        = 
        ()
 ;
syntax Dependency
        = 
        ANY client+ ANY supplier+
 ;
syntax Usage
        = 
        ()
 ;
syntax Abstraction
        = 
        mapping: ANY
 ;
syntax Realization
        = 
        ANY abstraction ANY realizingClassifier
 ;
syntax Substitution
        = 
        ANY contract ANY substitutingClassifier
 ;
syntax GeneralizationSet
        = 
        ANY isCovering ANY isDisjoint ANY powertype ANY generalization+
 ;
syntax AssociationClass
        = 
        ()
 ;
syntax InformationItem
        = 
        ANY represented+
 ;
syntax InformationFlow
        = 
        ANY realization+ ANY conveyed+
 ;
syntax Model
        = 
        viewpoint: ANY
 ;
syntax ConnectorEnd
        = 
        ANY definingEnd ANY role ANY partWithPort
 ;
syntax ConnectableElement
        = 
        ()
 ;
syntax Connector
        = 
        ANY type ANY redefinedConnector+ ANY end ANY kind ANY contract+
 ;
syntax StructuredClassifier
        = 
        ()
 ;
syntax ActivityEdge
        = 
        ()
 ;
syntax ActivityGroup
        = 
        ()
 ;
syntax ActivityNode
        = 
        ()
 ;
syntax Action
        = 
        ANY effect ANY output+ ANY input+ ANY context ANY localPrecondition+ ANY localPostcondition+
 ;
syntax ObjectNode
        = 
        ()
 ;
syntax ControlNode
        = 
        ()
 ;
syntax ControlFlow
        = 
        ANY activity ANY source ANY target ANY inGroup+ ANY guard ANY redefinedElement+ ANY inStructuredNode ANY inPartition+ ANY weight ANY interrupts
 ;
syntax ObjectFlow
        = 
        ANY isMulticast ANY isMultireceive ANY transformation ANY selection
 ;
syntax InitialNode
        = 
        
 ;
syntax FinalNode
        = 
        ()
 ;
syntax ActivityFinalNode
        = 
        
 ;
syntax DecisionNode
        = 
        decisionInput: ANY
 ;
syntax MergeNode
        = 
        
 ;
syntax ExecutableNode
        = 
        ()
 ;
syntax OutputPin
        = 
        
 ;
syntax InputPin
        = 
        
 ;
syntax Pin
        = 
        ()
 ;
syntax ActivityParameterNode
        = 
        parameter: ANY
 ;
syntax ValuePin
        = 
        value: ANY
 ;
syntax Interface
        = 
        ANY ownedAttribute+ ANY ownedOperation+ ANY redefinedInterface+ ANY nestedClassifier+ ANY ownedReception+ ANY protocol
 ;
syntax Implementation
        = 
        ANY contract ANY implementingClassifier
 ;
syntax Artifact
        = 
        ANY fileName ANY nestedArtifact+ ANY manifestation+ ANY ownedOperation+ ANY ownedAttribute+
 ;
syntax Manifestation
        = 
        utilizedElement: ANY
 ;
syntax Actor
        = 
        ANY feature+ ANY isAbstract ANY inheritedMember+ ANY general+ ANY generalization+ ANY attribute+ ANY redefinedClassifier+ ANY substitution+ ANY powertypeExtent+ ANY ownedUseCase+ ANY useCase+ ANY representation ANY occurrence+
 ;
syntax Extend
        = 
        ANY extendedCase ANY extension ANY condition ANY extensionLocation+
 ;
syntax UseCase
        = 
        ANY include+ ANY extend+ ANY extensionPoint+ ANY subject+
 ;
syntax ExtensionPoint
        = 
        useCase: ANY
 ;
syntax Include
        = 
        ANY includingCase ANY addition
 ;
syntax CollaborationOccurrence
        = 
        ANY type ANY roleBinding+
 ;
syntax Collaboration
        = 
        ANY collaborationRole+
 ;
syntax Port
        = 
        ANY isBehavior ANY isService ANY required+ ANY redefinedPort+ ANY provided+ ANY protocol
 ;
syntax EncapsulatedClassifier
        = 
        ()
 ;
syntax CallConcurrencyKind
        = guarded: ()
        | concurrent: ()
        | sequential: ()
 ;
syntax CallTrigger
        = 
        operation: ANY
 ;
syntax MessageTrigger
        = 
        ()
 ;
syntax ChangeTrigger
        = 
        changeExpression: ANY
 ;
syntax Trigger
        = 
        ()
 ;
syntax Reception
        = 
        signal: ANY
 ;
syntax Signal
        = 
        ANY ownedAttribute+
 ;
syntax SignalTrigger
        = 
        ANY signal+
 ;
syntax TimeTrigger
        = 
        ANY isRelative ANY when
 ;
syntax AnyTrigger
        = 
        
 ;
syntax Variable
        = 
        scope: ANY
 ;
syntax StructuredActivityNode
        = 
        ANY variable+ ANY containedNode+ ANY containedEdge+ ANY mustIsolate
 ;
syntax ConditionalNode
        = 
        ANY isDeterminate ANY isAssured ANY clause+ ANY result+
 ;
syntax Clause
        = 
        ANY test+ ANY body+ ANY predecessorClause+ ANY successorClause+ ANY decider ANY bodyOutput+
 ;
syntax LoopNode
        = 
        ANY isTestedFirst ANY bodyPart+ ANY setupPart+ ANY decider ANY test+ ANY result+ ANY loopVariable+ ANY bodyOutput+ ANY loopVariableInput+
 ;
syntax Interaction
        = 
        ANY lifeline+ ANY message+ ANY fragment+ ANY formalGate+
 ;
syntax InteractionFragment
        = 
        ()
 ;
syntax Lifeline
        = 
        ANY coveredBy+ ANY represents ANY interaction ANY selector ANY decomposedAs
 ;
syntax Message
        = 
        ANY messageKind ANY messageSort ANY receiveEvent ANY sendEvent ANY connector ANY interaction ANY signature ANY argument+
 ;
syntax GeneralOrdering
        = 
        ANY before ANY after
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
        = 
        ()
 ;
syntax EventOccurrence
        = 
        ANY startExec+ ANY finishExec+ ANY toAfter+ ANY toBefore+
 ;
syntax ExecutionOccurrence
        = 
        ANY start ANY finish ANY behavior+
 ;
syntax StateInvariant
        = 
        invariant: ANY
 ;
syntax Stop
        = 
        ()
 ;
syntax TemplateSignature
        = 
        ANY parameter+ ANY ownedParameter+ ANY nestedSignature+ ANY nestingSignature ANY template
 ;
syntax TemplateParameter
        = 
        ANY signature ANY parameteredElement ANY ownedParameteredElement ANY default ANY ownedDefault
 ;
syntax TemplateableElement
        = 
        ()
 ;
syntax StringExpression
        = 
        ANY subExpression+ ANY owningExpression
 ;
syntax ParameterableElement
        = 
        ()
 ;
syntax TemplateBinding
        = 
        ANY boundElement ANY signature ANY parameterSubstitution+
 ;
syntax TemplateParameterSubstitution
        = 
        ANY formal ANY templateBinding ANY actual+ ANY ownedActual+
 ;
syntax OperationTemplateParameter
        = 
        ()
 ;
syntax ClassifierTemplateParameter
        = 
        allowSubstitutable: ANY
 ;
syntax ParameterableClassifier
        = 
        ()
 ;
syntax RedefinableTemplateSignature
        = 
        ()
 ;
syntax TemplateableClassifier
        = 
        ()
 ;
syntax ConnectableElementTemplateParameter
        = 
        ()
 ;
syntax ForkNode
        = 
        
 ;
syntax JoinNode
        = 
        ANY isCombineDuplicate ANY joinSpec
 ;
syntax FlowFinalNode
        = 
        
 ;
syntax CentralBufferNode
        = 
        ANY ordering ANY upperBound ANY inState+ ANY selection
 ;
syntax ActivityPartition
        = 
        ANY isDimension ANY isExternal ANY containedEdge+ ANY containedNode+ ANY subgroup+ ANY superPartition ANY represents
 ;
syntax ExpansionNode
        = 
        ANY regionAsOutput ANY regionAsInput
 ;
syntax ExpansionRegion
        = 
        ANY mode ANY outputElement+ ANY inputElement+
 ;
syntax ExpansionKind
        = parallel: ()
        | iterative: ()
        | stream: ()
 ;
syntax ExceptionHandler
        = 
        ANY protectedNode ANY handlerBody ANY exceptionInput ANY exceptionType+
 ;
syntax InteractionOccurrence
        = 
        ANY refersTo ANY actualGate+ ANY argument+
 ;
syntax Gate
        = 
        ANY receiveMessage ANY sendMessage
 ;
syntax PartDecomposition
        = 
        ()
 ;
syntax InteractionOperand
        = 
        ANY guard ANY fragment+
 ;
syntax InteractionConstraint
        = 
        ANY minint ANY maxint
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
        ANY interactionOperator ANY operand+ ANY cfragmentGate+
 ;
syntax Continuation
        = 
        setting: ANY
 ;
syntax StateMachine
        = 
        ANY region+ ANY connectionPoint+ ANY extendedStateMachine ANY stateMachine_redefinitionContext
 ;
syntax Region
        = 
        ANY subvertex+ ANY transition+ ANY stateMachine ANY state ANY extendedRegion
 ;
syntax Pseudostate
        = 
        kind: ANY
 ;
syntax State
        = 
        ANY isComposite ANY isOrthogonal ANY isSimple ANY isSubmachineState ANY submachine ANY connection+ ANY redefinedState ANY deferrableTrigger+ ANY region+ ANY entry ANY exit ANY doActivity ANY stateInvariant
 ;
syntax Vertex
        = 
        ()
 ;
syntax ConnectionPointReference
        = 
        ANY entry+ ANY exit+
 ;
syntax Transition
        = 
        ANY kind ANY container ANY source ANY target ANY redefinedTransition ANY trigger+ ANY guard ANY effect
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
        ()
 ;
syntax CreateObjectAction
        = 
        ANY classifier ANY result
 ;
syntax DestroyObjectAction
        = 
        ANY isDestroyLinks ANY isDestroyOwnedObjects ANY target
 ;
syntax TestIdentityAction
        = 
        ANY first ANY second ANY result
 ;
syntax ReadSelfAction
        = 
        result: ANY
 ;
syntax StructuralFeatureAction
        = 
        ()
 ;
syntax ReadStructuralFeatureAction
        = 
        result: ANY
 ;
syntax WriteStructuralFeatureAction
        = 
        ()
 ;
syntax ClearStructuralFeatureAction
        = 
        ANY structuralFeature ANY object
 ;
syntax RemoveStructuralFeatureValueAction
        = 
        ANY value
 ;
syntax AddStructuralFeatureValueAction
        = 
        ANY isReplaceAll ANY insertAt
 ;
syntax LinkAction
        = 
        ()
 ;
syntax LinkEndData
        = 
        ANY value ANY end ANY qualifier+
 ;
syntax ReadLinkAction
        = 
        result: ANY
 ;
syntax LinkEndCreationData
        = 
        ANY isReplaceAll ANY insertAt
 ;
syntax CreateLinkAction
        = 
        
 ;
syntax WriteLinkAction
        = 
        ()
 ;
syntax DestroyLinkAction
        = 
        
 ;
syntax ClearAssociationAction
        = 
        ANY object ANY association
 ;
syntax VariableAction
        = 
        ()
 ;
syntax ReadVariableAction
        = 
        result: ANY
 ;
syntax WriteVariableAction
        = 
        ()
 ;
syntax ClearVariableAction
        = 
        ANY variable
 ;
syntax AddVariableValueAction
        = 
        ANY isReplaceAll ANY insertAt
 ;
syntax RemoveVariableValueAction
        = 
        ANY value
 ;
syntax ApplyFunctionAction
        = 
        ANY function ANY argument+ ANY result+
 ;
syntax PrimitiveFunction
        = 
        ANY body ANY language
 ;
syntax CallAction
        = 
        ()
 ;
syntax InvocationAction
        = 
        ()
 ;
syntax SendSignalAction
        = 
        ANY target ANY signal
 ;
syntax BroadcastSignalAction
        = 
        signal: ANY
 ;
syntax SendObjectAction
        = 
        ANY target ANY request
 ;
syntax CallOperationAction
        = 
        ANY operation ANY target
 ;
syntax CallBehaviorAction
        = 
        behavior: ANY
 ;
syntax TimeExpression
        = 
        ANY firstTime ANY event
 ;
syntax Duration
        = 
        ANY firstTime ANY event
 ;
syntax TimeObservationAction
        = 
        ANY now+
 ;
syntax DurationInterval
        = 
        ()
 ;
syntax Interval
        = 
        ANY min+ ANY max+
 ;
syntax TimeConstraint
        = 
        ()
 ;
syntax IntervalConstraint
        = 
        ()
 ;
syntax TimeInterval
        = 
        ()
 ;
syntax DurationObservationAction
        = 
        ANY duration+
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
        ANY interruptingEdge+ ANY containedNode+
 ;
syntax ObjectNodeOrderingKind
        = FIFO: ()
        | unordered: ()
        | ordered: ()
        | LIFO: ()
 ;
syntax ParameterSet
        = 
        ANY parameter+ ANY condition+
 ;
syntax Component
        = 
        ANY isIndirectlyInstantiated ANY required+ ANY provided+ ANY realization+ ANY ownedMember+
 ;
syntax ConnectorKind
        = delegation: ()
        | assembly: ()
 ;
syntax Deployment
        = 
        ANY deployedArtifact+ ANY location ANY configuration+
 ;
syntax DeployedArtifact
        = 
        ()
 ;
syntax DeploymentTarget
        = 
        ()
 ;
syntax Node
        = 
        ANY nestedNode+
 ;
syntax Device
        = 
        ()
 ;
syntax ExecutionEnvironment
        = 
        ()
 ;
syntax CommunicationPath
        = 
        ()
 ;
syntax ProtocolConformance
        = 
        ANY specificMachine ANY generalMachine
 ;
syntax ProtocolStateMachine
        = 
        ANY conformance+
 ;
syntax ProtocolTransition
        = 
        ANY postCondition ANY referred+ ANY preCondition
 ;
syntax ReadExtentAction
        = 
        ANY result ANY classifier
 ;
syntax ReclassifyObjectAction
        = 
        ANY isReplaceAll ANY oldClassifier+ ANY newClassifier+ ANY object
 ;
syntax ReadIsClassifiedObjectAction
        = 
        ANY isDirect ANY classifier ANY result ANY object
 ;
syntax StartOwnedBehaviorAction
        = 
        object: ANY
 ;
syntax QualifierValue
        = 
        ANY qualifier ANY value
 ;
syntax ReadLinkObjectEndAction
        = 
        ANY object ANY end ANY result
 ;
syntax ReadLinkObjectEndQualifierAction
        = 
        ANY object ANY result ANY qualifier
 ;
syntax CreateLinkObjectAction
        = 
        result: ANY
 ;
syntax AcceptEventAction
        = 
        ANY trigger+ ANY result+
 ;
syntax AcceptCallAction
        = 
        returnInformation: ANY
 ;
syntax ReplyAction
        = 
        ANY replyToCall ANY replyValue+ ANY returnInformation
 ;
syntax RaiseExceptionAction
        = 
        exception: ANY
 ;
syntax DeploymentSpecification
        = 
        ANY deploymentLocation ANY executionLocation
 ;
