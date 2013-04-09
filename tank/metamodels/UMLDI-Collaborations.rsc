@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UMLDI_Collaborations

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
syntax StructuralFeature
        = 
        ()
 ;
syntax AssociationEnd
        = 
        ANY association ANY specification+ ANY participant ANY qualifier+ ANY isNavigable ANY ordering ANY aggregation ANY targetScope ANY multiplicity ANY changeability
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
