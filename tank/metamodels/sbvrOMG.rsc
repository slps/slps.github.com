@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SbvrOMG

syntax Actuality
        = 
        ()
 ;
syntax StateOfAffairs
        = 
        ()
 ;
syntax Thing
        = 
        ANY name+
 ;
syntax Name
        = 
        ()
 ;
syntax Designation
        = 
        ANY implicitlyIsUnderstood ANY signifier
 ;
syntax Representation
        = 
        ANY meaning ANY expression
 ;
syntax Meaning
        = 
        ANY representation+
 ;
syntax Expression
        = 
        ()
 ;
syntax BindableTarget
        = 
        ()
 ;
syntax AdoptedDefinition
        = 
        ()
 ;
syntax Definition
        = 
        ()
 ;
syntax Advice
        = 
        ()
 ;
syntax ElementOfGuidance
        = 
        isPracticable: ANY
 ;
syntax Proposition
        = 
        ANY isFalse ANY isTrue ANY statement+ ANY isPossiblyTrue ANY isObligatedToBeTrue ANY isPermittedToBeTrue ANY isNecessarilyTrue
 ;
syntax Statement
        = 
        ()
 ;
syntax AdviceOfContingency
        = 
        ()
 ;
syntax AdviceOfPossibility
        = 
        ()
 ;
syntax AdviceOfOptionality
        = 
        ()
 ;
syntax AdviceOfPermission
        = 
        ()
 ;
syntax AdviceStatement
        = 
        ()
 ;
syntax GuidanceStatement
        = 
        ()
 ;
syntax AggregationFormulation
        = 
        ()
 ;
syntax ProjectingFormulation
        = 
        projection: ANY
 ;
syntax LogicalFormulation
        = 
        ()
 ;
syntax SemanticFormulation
        = 
        ()
 ;
syntax Projection
        = 
        ANY constrainingFormulation ANY projectionVariable+ ANY auxiliaryVariable+
 ;
syntax Variable
        = 
        ANY restrictingFormulation ANY projectionPosition ANY rangedoverConcept ANY isUnitary
 ;
syntax PositiveInteger
        = 
        ()
 ;
syntax NonnegativeInteger
        = 
        ()
 ;
syntax Integer
        = 
        value: ANY
 ;
syntax Number
        = 
        ()
 ;
syntax Quantity
        = 
        ()
 ;
syntax NounConcept
        = 
        ()
 ;
syntax Concept
        = 
        ANY attributiveNamespace+ ANY definition+ ANY moreGeneralConcept+ ANY category+ ANY essentialCharacteristic+ ANY instance+ ANY referenceScheme+ ANY impliedCharacteristic+ ANY necessaryCharacteristic+ ANY designation+ ANY extension
 ;
syntax AttributiveNamespace
        = 
        ()
 ;
syntax Namespace
        = 
        ANY uri+
 ;
syntax Uri
        = 
        ()
 ;
syntax Text
        = 
        value: ANY
 ;
syntax Characteristic
        = 
        ()
 ;
syntax FactType
        = 
        ANY factTypeForm+ ANY role+
 ;
syntax FactTypeForm
        = 
        ANY placeholder+
 ;
syntax Placeholder
        = 
        startingCharacterPosition: ANY
 ;
syntax FactTypeRole
        = 
        ANY roleBinding+
 ;
syntax Role
        = 
        ()
 ;
syntax RoleBinding
        = 
        ()
 ;
syntax ReferenceScheme
        = 
        ANY simplyUsedRole+ ANY identifyingCharacteristic+ ANY extensionallyUsedRole+
 ;
syntax Set
        = 
        ANY cardinality ANY element+
 ;
syntax AuxiliaryVariable
        = 
        ()
 ;
syntax AnswerNominalization
        = 
        ()
 ;
syntax AssociativeFactType
        = 
        ()
 ;
syntax AssortmentFactType
        = 
        ()
 ;
syntax AtleastnQuantification
        = 
        minimumCardinality: ANY
 ;
syntax Quantification
        = 
        scopeFormulation: ANY
 ;
syntax AtmostnQuantification
        = 
        maximumCardinality: ANY
 ;
syntax AtmostoneQuantification
        = 
        ()
 ;
syntax AtomicFormulation
        = 
        ANY roleBinding+
 ;
syntax BagProjection
        = 
        ()
 ;
syntax BinaryFactType
        = 
        ()
 ;
syntax BinaryLogicalOperation
        = 
        ANY logicalOperand2+ ANY logicalOperand1+
 ;
syntax LogicalOperation
        = 
        logicalOperand: ANY
 ;
syntax BodyOfSharedConcepts
        = 
        ()
 ;
syntax BodyOfSharedGuidance
        = 
        ()
 ;
syntax BodyOfSharedMeanings
        = 
        ANY elementaryFactType+
 ;
syntax BusinessPolicy
        = 
        ()
 ;
syntax ElementOfGovernance
        = 
        isDirectlyEnforceable: ANY
 ;
syntax BusinessPolicyStatement
        = 
        ()
 ;
syntax BusinessRule
        = 
        ()
 ;
syntax Rule
        = 
        ()
 ;
syntax BusinessVocabulary
        = 
        ()
 ;
syntax Vocabulary
        = 
        ()
 ;
syntax CategorizationFactType
        = 
        ()
 ;
syntax SpecializationFactType
        = 
        ()
 ;
syntax CategorizationScheme
        = 
        ()
 ;
syntax CategorizationType
        = 
        ()
 ;
syntax CharacteristicType
        = 
        ()
 ;
syntax ConceptType
        = 
        ()
 ;
syntax ObjectType
        = 
        ANY categorizationScheme+ ANY categorizationType+
 ;
syntax ClosedLogicalFormulation
        = 
        ()
 ;
syntax ClosedSemanticFormulation
        = 
        ()
 ;
syntax ClosedProjection
        = 
        ()
 ;
syntax CommunicationContent
        = 
        ()
 ;
syntax Community
        = 
        ANY uri+ ANY subcommunity+
 ;
syntax ConceptOfThingAsComposite
        = 
        ()
 ;
syntax ConceptOfThingAsContinuant
        = 
        ()
 ;
syntax ConceptOfThingAsDeveloped
        = 
        ()
 ;
syntax ConceptOfThingAsOccurrent
        = 
        ()
 ;
syntax ConceptOfThingAsPrimitive
        = 
        ()
 ;
syntax ConceptOfThingAsUnitary
        = 
        ()
 ;
syntax ConceptOfThingExistingDependently
        = 
        ()
 ;
syntax ConceptOfThingExistingIndependently
        = 
        ()
 ;
syntax ConceptualSchema
        = 
        ()
 ;
syntax Conjunction
        = 
        ()
 ;
syntax ContextOfThing
        = 
        ()
 ;
syntax Segmentation
        = 
        ()
 ;
syntax ContextualizationFactType
        = 
        ()
 ;
syntax ContextualizedConcept
        = 
        ()
 ;
syntax ContingencyStatement
        = 
        ()
 ;
syntax StatementOfAdviceOfPossibility
        = 
        ()
 ;
syntax DefiniteDescription
        = 
        ()
 ;
syntax IntensionalDefinition
        = 
        ()
 ;
syntax DerivableConcept
        = 
        ()
 ;
syntax Description
        = 
        ()
 ;
syntax DescriptiveExample
        = 
        ()
 ;
syntax Disjunction
        = 
        ()
 ;
syntax Equivalence
        = 
        ()
 ;
syntax ExactlynQuantification
        = 
        cardinality: ANY
 ;
syntax ExactlyoneQuantification
        = 
        ()
 ;
syntax ExclusiveDisjunction
        = 
        ()
 ;
syntax ExistentialQuantification
        = 
        ()
 ;
syntax ExplicitnessOfRepresentation
        = 
        ()
 ;
syntax ExtensionalDefinition
        = 
        ()
 ;
syntax Facet
        = 
        ()
 ;
syntax Fact
        = 
        ()
 ;
syntax FactModel
        = 
        ()
 ;
syntax FactSymbol
        = 
        ()
 ;
syntax FactTypeHasFactInFactModel
        = 
        ANY factType ANY fact ANY factModel
 ;
syntax FactTypeNominalization
        = 
        ()
 ;
syntax FactTypeRoleDesignation
        = 
        ()
 ;
syntax FactTypeTemplating
        = 
        ()
 ;
syntax FormalRepresentation
        = 
        ()
 ;
syntax FundamentalConcept
        = 
        ()
 ;
syntax Icon
        = 
        ()
 ;
syntax NonverbalDesignation
        = 
        ()
 ;
syntax Implication
        = 
        ANY consequent+ ANY antecedent+
 ;
syntax ImpossibilityStatement
        = 
        ()
 ;
syntax StructuralRuleStatement
        = 
        ()
 ;
syntax RuleStatement
        = 
        ()
 ;
syntax IndividualConcept
        = 
        ()
 ;
syntax InformalRepresentation
        = 
        ()
 ;
syntax InstantiationFormulation
        = 
        ()
 ;
syntax IsfacetofFactType
        = 
        ()
 ;
syntax IspropertyofFactType
        = 
        ()
 ;
syntax IsroleofFactType
        = 
        ()
 ;
syntax KindOfGuidanceStatement
        = 
        ()
 ;
syntax Language
        = 
        ()
 ;
syntax LevelOfEnforcement
        = 
        ()
 ;
syntax LogicalFormulationKind
        = 
        ()
 ;
syntax LogicalNegation
        = 
        ()
 ;
syntax ModalFormulation
        = 
        ()
 ;
syntax NandFormulation
        = 
        ()
 ;
syntax NecessityFormulation
        = 
        ()
 ;
syntax NecessityStatement
        = 
        ()
 ;
syntax NonnecessityStatement
        = 
        ()
 ;
syntax NonobligationStatement
        = 
        ()
 ;
syntax StatementOfAdviceOfPermission
        = 
        ()
 ;
syntax NorFormulation
        = 
        ()
 ;
syntax Note
        = 
        ()
 ;
syntax NounConceptNominalization
        = 
        ()
 ;
syntax NounForm
        = 
        ()
 ;
syntax NumericRangeQuantification
        = 
        ANY maximumCardinality ANY minimumCardinality
 ;
syntax Objectification
        = 
        ()
 ;
syntax ObligationFormulation
        = 
        ()
 ;
syntax ObligationStatement
        = 
        ()
 ;
syntax OperativeBusinessRuleStatement
        = 
        ()
 ;
syntax OperativeBusinessRule
        = 
        ANY levelOfEnforcement+
 ;
syntax OptionalityStatement
        = 
        ()
 ;
syntax OwnedDefinition
        = 
        ()
 ;
syntax PartitiveFactType
        = 
        ()
 ;
syntax PermissibilityFormulation
        = 
        ()
 ;
syntax PermissionStatement
        = 
        ()
 ;
syntax PossibilityFormulation
        = 
        ()
 ;
syntax PossibilityStatement
        = 
        ()
 ;
syntax PreferredDesignation
        = 
        ()
 ;
syntax ProhibitedDesignation
        = 
        ()
 ;
syntax ProhibitionStatement
        = 
        ()
 ;
syntax PropositionNominalization
        = 
        ()
 ;
syntax Question
        = 
        ()
 ;
syntax QuestionNominalization
        = 
        ()
 ;
syntax RealworldNumericalCorrespondence
        = 
        ()
 ;
syntax Reference
        = 
        ()
 ;
syntax RepresentationFormality
        = 
        ()
 ;
syntax Res
        = 
        ()
 ;
syntax RestrictedPermissionStatement
        = 
        ()
 ;
syntax RestrictedPossibilityStatement
        = 
        ()
 ;
syntax Rulebook
        = 
        ()
 ;
syntax SemanticCommunity
        = 
        ANY speechCommunity+
 ;
syntax SpeechCommunity
        = 
        ()
 ;
syntax SententialForm
        = 
        ()
 ;
syntax SetProjection
        = 
        ()
 ;
syntax Situation
        = 
        ()
 ;
syntax SituationalRole
        = 
        ()
 ;
syntax SpeechCommunityAdoptsAdoptedDefinitionCitingReference
        = 
        ANY speechCommunity ANY adoptedDefinition ANY reference
 ;
syntax StateOfAffairsInvolvesThingInRole
        = 
        ANY stateOfAffairs ANY thing ANY role
 ;
syntax StructuralBusinessRule
        = 
        ()
 ;
syntax StructuralRule
        = 
        ()
 ;
syntax SubjectField
        = 
        ()
 ;
syntax Term
        = 
        ()
 ;
syntax TerminologicalDictionary
        = 
        ANY uri+
 ;
syntax ThingInContext
        = 
        ()
 ;
syntax UniversalQuantification
        = 
        ()
 ;
syntax Viewpoint
        = 
        ()
 ;
syntax VocabularyNamespace
        = 
        ()
 ;
syntax WhetherornotFormulation
        = 
        ANY inconsequent+ ANY consequent+
 ;
