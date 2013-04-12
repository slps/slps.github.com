@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Umldi_c

syntax Element
        = 
        ModelElement
 ;
syntax ModelElement
        = GeneralizableElement
        | Namespace
        | Feature
        | AssociationEnd
        | Relationship
        | Parameter
        | Instance
        | Action
        | AttributeLink
        | Link
        | Argument
        | LinkEnd
        | Stimulus
        | Message
        | Interaction
        | InteractionInstanceSet
        | CollaborationInstanceSet
 ;
syntax Classifier
        = Signal
        | ClassifierRole
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
syntax Relationship
        = 
        Generalization
 ;
syntax Association
        = AssociationRole
        | connection: AssociationEnd
 ;
syntax Attribute
        = 
        AssociationEnd associationEnd Expression initialValue
 ;
syntax BehavioralFeature
        = Operation
        | Reception
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
syntax Instance
        = Object
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
        = 
        Instance ownedInstance+ LinkEnd linkEnd+ Classifier classifier+ ComponentInstance componentInstance AttributeLink slot+ Link ownedLink+
 ;
syntax Link
        = 
        Association association LinkEnd connection
 ;
syntax LinkObject
        = 
        ()
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
