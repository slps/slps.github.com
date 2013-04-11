@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SbvrEclipse

syntax Actuality
        = 
        Representation
 ;
syntax StateOfAffairs
        = 
        Actuality
 ;
syntax Thing
        = StateOfAffairs
        | Meaning
        | BindableTarget
        | SemanticFormulation
        | Namespace
        | RoleBinding
        | ReferenceScheme
        | Set
        | BodyOfSharedConcepts
        | BodyOfSharedGuidance
        | CategorizationScheme
        | Community
        | ConceptualSchema
        | FactModel
        | Language
        | LevelOfEnforcement
        | Res
        | Situation
        | SubjectField
        | TerminologicalDictionary
        | Viewpoint
        | Name name+
 ;
syntax Name
        = 
        Boolean implicitlyIsUnderstood Expression signifier
 ;
syntax Designation
        = Name
        | Placeholder
        | FactSymbol
        | FactTypeRoleDesignation
        | NonverbalDesignation
        | PreferredDesignation
        | ProhibitedDesignation
        | Term
        | Boolean implicitlyIsUnderstood Expression signifier
 ;
syntax Representation
        = Designation
        | Definition
        | Statement
        | FactTypeForm
        | CommunicationContent
        | Description
        | DescriptiveExample
        | FormalRepresentation
        | InformalRepresentation
        | Note
        | Reference
        | Meaning meaning Expression expression
 ;
syntax Meaning
        = Proposition
        | Concept
        | Question
        | Representation representation+
 ;
syntax Expression
        = 
        Text
 ;
syntax BindableTarget
        = IndividualConcept
        | Expression
        | Variable
 ;
syntax AdoptedDefinition
        = 
        ()
 ;
syntax Definition
        = AdoptedDefinition
        | IntensionalDefinition
        | ExtensionalDefinition
        | OwnedDefinition
 ;
syntax Advice
        = AdviceOfPossibility
        | AdviceOfPermission
 ;
syntax ElementOfGuidance
        = Advice
        | ElementOfGovernance
        | BusinessRule
        | isPracticable: Boolean
 ;
syntax Proposition
        = ElementOfGuidance
        | Rule
        | Fact
        | Boolean isFalse Boolean isTrue Statement statement+ Boolean isPossiblyTrue Boolean isObligatedToBeTrue Boolean isPermittedToBeTrue Boolean isNecessarilyTrue
 ;
syntax Statement
        = 
        GuidanceStatement
 ;
syntax AdviceOfContingency
        = 
        ()
 ;
syntax AdviceOfPossibility
        = 
        AdviceOfContingency
 ;
syntax AdviceOfOptionality
        = 
        ()
 ;
syntax AdviceOfPermission
        = 
        AdviceOfOptionality
 ;
syntax AdviceStatement
        = StatementOfAdviceOfPossibility
        | StatementOfAdviceOfPermission
 ;
syntax GuidanceStatement
        = AdviceStatement
        | BusinessPolicyStatement
        | RuleStatement
 ;
syntax AggregationFormulation
        = 
        projection: Projection
 ;
syntax ProjectingFormulation
        = AggregationFormulation
        | AnswerNominalization
        | FactTypeNominalization
        | NounConceptNominalization
        | QuestionNominalization
        | projection: Projection
 ;
syntax LogicalFormulation
        = ClosedLogicalFormulation
        | ProjectingFormulation
        | Quantification
        | AtomicFormulation
        | LogicalOperation
        | InstantiationFormulation
        | ModalFormulation
        | Objectification
        | PropositionNominalization
 ;
syntax SemanticFormulation
        = LogicalFormulation
        | Projection
        | ClosedSemanticFormulation
 ;
syntax Projection
        = BagProjection
        | ClosedProjection
        | SetProjection
        | LogicalFormulation constrainingFormulation Variable projectionVariable+ AuxiliaryVariable auxiliaryVariable+
 ;
syntax Variable
        = AuxiliaryVariable
        | LogicalFormulation restrictingFormulation PositiveInteger projectionPosition Concept rangedoverConcept Boolean isUnitary
 ;
syntax PositiveInteger
        = 
        ()
 ;
syntax NonnegativeInteger
        = 
        PositiveInteger
 ;
syntax Integer
        = NonnegativeInteger
        | value: Integer
 ;
syntax Number
        = 
        Integer
 ;
syntax Quantity
        = 
        Number
 ;
syntax NounConcept
        = IndividualConcept
        | Quantity
        | Role
        | ContextualizedConcept
 ;
syntax Concept
        = NounConcept
        | FactType
        | CategorizationType
        | ObjectType
        | ConceptOfThingAsComposite
        | ConceptOfThingAsContinuant
        | ConceptOfThingAsDeveloped
        | ConceptOfThingAsOccurrent
        | ConceptOfThingAsPrimitive
        | ConceptOfThingAsUnitary
        | ConceptOfThingExistingDependently
        | ConceptOfThingExistingIndependently
        | DerivableConcept
        | AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax AttributiveNamespace
        = 
        Uri uri+
 ;
syntax Namespace
        = AttributiveNamespace
        | VocabularyNamespace
        | Uri uri+
 ;
syntax Uri
        = 
        value: String
 ;
syntax Text
        = Uri
        | value: String
 ;
syntax Characteristic
        = 
        FactTypeForm factTypeForm+ FactTypeRole role+
 ;
syntax FactType
        = Characteristic
        | AssociativeFactType
        | AssortmentFactType
        | BinaryFactType
        | SpecializationFactType
        | IsroleofFactType
        | FactTypeForm factTypeForm+ FactTypeRole role+
 ;
syntax FactTypeForm
        = NounForm
        | SententialForm
        | Placeholder placeholder+
 ;
syntax Placeholder
        = 
        startingCharacterPosition: PositiveInteger
 ;
syntax FactTypeRole
        = 
        RoleBinding roleBinding+
 ;
syntax Role
        = FactTypeRole
        | SituationalRole
 ;
syntax RoleBinding
        = 
        Name name+
 ;
syntax ReferenceScheme
        = 
        FactTypeRole simplyUsedRole+ Characteristic identifyingCharacteristic+ FactTypeRole extensionallyUsedRole+
 ;
syntax Set
        = BodyOfSharedMeanings
        | Vocabulary
        | Rulebook
        | NonnegativeInteger cardinality Thing element+
 ;
syntax AuxiliaryVariable
        = 
        LogicalFormulation restrictingFormulation PositiveInteger projectionPosition Concept rangedoverConcept Boolean isUnitary
 ;
syntax AnswerNominalization
        = 
        projection: Projection
 ;
syntax AssociativeFactType
        = 
        IspropertyofFactType
 ;
syntax AssortmentFactType
        = 
        FactTypeForm factTypeForm+ FactTypeRole role+
 ;
syntax AtleastnQuantification
        = ExistentialQuantification
        | minimumCardinality: NonnegativeInteger
 ;
syntax Quantification
        = AtleastnQuantification
        | AtmostnQuantification
        | ExactlynQuantification
        | NumericRangeQuantification
        | UniversalQuantification
        | scopeFormulation: LogicalFormulation
 ;
syntax AtmostnQuantification
        = AtmostoneQuantification
        | maximumCardinality: NonnegativeInteger
 ;
syntax AtmostoneQuantification
        = 
        maximumCardinality: NonnegativeInteger
 ;
syntax AtomicFormulation
        = 
        RoleBinding roleBinding+
 ;
syntax BagProjection
        = 
        LogicalFormulation constrainingFormulation Variable projectionVariable+ AuxiliaryVariable auxiliaryVariable+
 ;
syntax BinaryFactType
        = 
        PartitiveFactType
 ;
syntax BinaryLogicalOperation
        = Conjunction
        | Disjunction
        | Equivalence
        | ExclusiveDisjunction
        | Implication
        | NandFormulation
        | NorFormulation
        | WhetherornotFormulation
        | LogicalFormulation logicalOperand2+ LogicalFormulation logicalOperand1+
 ;
syntax LogicalOperation
        = BinaryLogicalOperation
        | LogicalNegation
        | logicalOperand: LogicalFormulation
 ;
syntax BodyOfSharedConcepts
        = 
        Name name+
 ;
syntax BodyOfSharedGuidance
        = 
        Name name+
 ;
syntax BodyOfSharedMeanings
        = 
        FactType elementaryFactType+
 ;
syntax BusinessPolicy
        = 
        isDirectlyEnforceable: Boolean
 ;
syntax ElementOfGovernance
        = BusinessPolicy
        | OperativeBusinessRule
        | isDirectlyEnforceable: Boolean
 ;
syntax BusinessPolicyStatement
        = 
        ()
 ;
syntax BusinessRule
        = StructuralBusinessRule
        | OperativeBusinessRule
        | isPracticable: Boolean
 ;
syntax Rule
        = StructuralRule
        | BusinessRule
 ;
syntax BusinessVocabulary
        = 
        ()
 ;
syntax Vocabulary
        = 
        BusinessVocabulary
 ;
syntax CategorizationFactType
        = 
        ()
 ;
syntax SpecializationFactType
        = CategorizationFactType
        | ContextualizationFactType
 ;
syntax CategorizationScheme
        = Segmentation
        | ExplicitnessOfRepresentation
        | FactTypeTemplating
        | KindOfGuidanceStatement
        | RealworldNumericalCorrespondence
 ;
syntax CategorizationType
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax CharacteristicType
        = 
        ()
 ;
syntax ConceptType
        = 
        CharacteristicType
 ;
syntax ObjectType
        = ConceptType
        | FundamentalConcept
        | LogicalFormulationKind
        | SituationalRole
        | CategorizationScheme categorizationScheme+ CategorizationType categorizationType+
 ;
syntax ClosedLogicalFormulation
        = 
        ()
 ;
syntax ClosedSemanticFormulation
        = ClosedLogicalFormulation
        | ()
 ;
syntax ClosedProjection
        = 
        LogicalFormulation constrainingFormulation Variable projectionVariable+ AuxiliaryVariable auxiliaryVariable+
 ;
syntax CommunicationContent
        = 
        Meaning meaning Expression expression
 ;
syntax Community
        = SemanticCommunity
        | SpeechCommunity
        | Uri uri+ Community subcommunity+
 ;
syntax ConceptOfThingAsComposite
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax ConceptOfThingAsContinuant
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax ConceptOfThingAsDeveloped
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax ConceptOfThingAsOccurrent
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax ConceptOfThingAsPrimitive
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax ConceptOfThingAsUnitary
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax ConceptOfThingExistingDependently
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax ConceptOfThingExistingIndependently
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax ConceptualSchema
        = 
        Name name+
 ;
syntax Conjunction
        = 
        LogicalFormulation logicalOperand2+ LogicalFormulation logicalOperand1+
 ;
syntax ContextOfThing
        = 
        ()
 ;
syntax Segmentation
        = ContextOfThing
        | RepresentationFormality
        | ThingInContext
 ;
syntax ContextualizationFactType
        = 
        IsfacetofFactType
 ;
syntax ContextualizedConcept
        = 
        Facet
 ;
syntax ContingencyStatement
        = 
        ()
 ;
syntax StatementOfAdviceOfPossibility
        = ContingencyStatement
        | NonnecessityStatement
        | PossibilityStatement
 ;
syntax DefiniteDescription
        = 
        ()
 ;
syntax IntensionalDefinition
        = 
        DefiniteDescription
 ;
syntax DerivableConcept
        = 
        AttributiveNamespace attributiveNamespace+ Definition definition+ Concept moreGeneralConcept+ Concept category+ Characteristic essentialCharacteristic+ Thing instance+ ReferenceScheme referenceScheme+ Characteristic impliedCharacteristic+ Characteristic necessaryCharacteristic+ Designation designation+ Set extension
 ;
syntax Description
        = 
        Meaning meaning Expression expression
 ;
syntax DescriptiveExample
        = 
        Meaning meaning Expression expression
 ;
syntax Disjunction
        = 
        LogicalFormulation logicalOperand2+ LogicalFormulation logicalOperand1+
 ;
syntax Equivalence
        = 
        LogicalFormulation logicalOperand2+ LogicalFormulation logicalOperand1+
 ;
syntax ExactlynQuantification
        = ExactlyoneQuantification
        | cardinality: NonnegativeInteger
 ;
syntax ExactlyoneQuantification
        = 
        cardinality: NonnegativeInteger
 ;
syntax ExclusiveDisjunction
        = 
        LogicalFormulation logicalOperand2+ LogicalFormulation logicalOperand1+
 ;
syntax ExistentialQuantification
        = 
        minimumCardinality: NonnegativeInteger
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
        Boolean isFalse Boolean isTrue Statement statement+ Boolean isPossiblyTrue Boolean isObligatedToBeTrue Boolean isPermittedToBeTrue Boolean isNecessarilyTrue
 ;
syntax FactModel
        = 
        Name name+
 ;
syntax FactSymbol
        = 
        Boolean implicitlyIsUnderstood Expression signifier
 ;
syntax FactTypeHasFactInFactModel
        = 
        FactType factType Fact fact FactModel factModel
 ;
syntax FactTypeNominalization
        = 
        projection: Projection
 ;
syntax FactTypeRoleDesignation
        = 
        Boolean implicitlyIsUnderstood Expression signifier
 ;
syntax FactTypeTemplating
        = 
        ()
 ;
syntax FormalRepresentation
        = 
        Meaning meaning Expression expression
 ;
syntax FundamentalConcept
        = 
        CategorizationScheme categorizationScheme+ CategorizationType categorizationType+
 ;
syntax Icon
        = 
        ()
 ;
syntax NonverbalDesignation
        = 
        Icon
 ;
syntax Implication
        = 
        LogicalFormulation consequent+ LogicalFormulation antecedent+
 ;
syntax ImpossibilityStatement
        = 
        ()
 ;
syntax StructuralRuleStatement
        = ImpossibilityStatement
        | NecessityStatement
        | RestrictedPossibilityStatement
 ;
syntax RuleStatement
        = StructuralRuleStatement
        | OperativeBusinessRuleStatement
 ;
syntax IndividualConcept
        = 
        ()
 ;
syntax InformalRepresentation
        = 
        Meaning meaning Expression expression
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
        FactTypeForm factTypeForm+ FactTypeRole role+
 ;
syntax KindOfGuidanceStatement
        = 
        ()
 ;
syntax Language
        = 
        Name name+
 ;
syntax LevelOfEnforcement
        = 
        Name name+
 ;
syntax LogicalFormulationKind
        = 
        CategorizationScheme categorizationScheme+ CategorizationType categorizationType+
 ;
syntax LogicalNegation
        = 
        logicalOperand: LogicalFormulation
 ;
syntax ModalFormulation
        = NecessityFormulation
        | ObligationFormulation
        | PermissibilityFormulation
        | PossibilityFormulation
 ;
syntax NandFormulation
        = 
        LogicalFormulation logicalOperand2+ LogicalFormulation logicalOperand1+
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
        = NonobligationStatement
        | OptionalityStatement
        | PermissionStatement
 ;
syntax NorFormulation
        = 
        LogicalFormulation logicalOperand2+ LogicalFormulation logicalOperand1+
 ;
syntax Note
        = 
        Meaning meaning Expression expression
 ;
syntax NounConceptNominalization
        = 
        projection: Projection
 ;
syntax NounForm
        = 
        Placeholder placeholder+
 ;
syntax NumericRangeQuantification
        = 
        NonnegativeInteger maximumCardinality NonnegativeInteger minimumCardinality
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
        = ObligationStatement
        | ProhibitionStatement
        | RestrictedPermissionStatement
 ;
syntax OperativeBusinessRule
        = 
        LevelOfEnforcement levelOfEnforcement+
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
        Boolean implicitlyIsUnderstood Expression signifier
 ;
syntax ProhibitedDesignation
        = 
        Boolean implicitlyIsUnderstood Expression signifier
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
        Representation representation+
 ;
syntax QuestionNominalization
        = 
        projection: Projection
 ;
syntax RealworldNumericalCorrespondence
        = 
        ()
 ;
syntax Reference
        = 
        Meaning meaning Expression expression
 ;
syntax RepresentationFormality
        = 
        ()
 ;
syntax Res
        = 
        Name name+
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
        NonnegativeInteger cardinality Thing element+
 ;
syntax SemanticCommunity
        = 
        SpeechCommunity speechCommunity+
 ;
syntax SpeechCommunity
        = 
        Uri uri+ Community subcommunity+
 ;
syntax SententialForm
        = 
        Placeholder placeholder+
 ;
syntax SetProjection
        = 
        LogicalFormulation constrainingFormulation Variable projectionVariable+ AuxiliaryVariable auxiliaryVariable+
 ;
syntax Situation
        = 
        Name name+
 ;
syntax SituationalRole
        = 
        CategorizationScheme categorizationScheme+ CategorizationType categorizationType+
 ;
syntax SpeechCommunityAdoptsAdoptedDefinitionCitingReference
        = 
        SpeechCommunity speechCommunity AdoptedDefinition adoptedDefinition Reference reference
 ;
syntax StateOfAffairsInvolvesThingInRole
        = 
        StateOfAffairs stateOfAffairs Thing thing Role role
 ;
syntax StructuralBusinessRule
        = 
        ()
 ;
syntax StructuralRule
        = StructuralBusinessRule
        | ()
 ;
syntax SubjectField
        = 
        Name name+
 ;
syntax Term
        = 
        Boolean implicitlyIsUnderstood Expression signifier
 ;
syntax TerminologicalDictionary
        = 
        Uri uri+
 ;
syntax ThingInContext
        = 
        ()
 ;
syntax UniversalQuantification
        = 
        scopeFormulation: LogicalFormulation
 ;
syntax Viewpoint
        = 
        Name name+
 ;
syntax VocabularyNamespace
        = 
        Uri uri+
 ;
syntax WhetherornotFormulation
        = 
        LogicalFormulation inconsequent+ LogicalFormulation consequent+
 ;
syntax AtleastnQuantificationHasMinimumCardinality
        = 
        AtleastnQuantification atleastnQuantification NonnegativeInteger minimumCardinality
 ;
syntax AtmostnQuantificationHasMaximumCardinality
        = 
        AtmostnQuantification atmostnQuantification NonnegativeInteger maximumCardinality
 ;
syntax AtomicFormulationIsBasedOnFactType
        = 
        AtomicFormulation atomicFormulation FactType factType
 ;
syntax AttributiveNamespaceIsForSubjectConcept
        = 
        AttributiveNamespace attributiveNamespace Concept subjectConcept
 ;
syntax AttributiveNamespaceIsWithinVocabularyNamespace
        = 
        AttributiveNamespace attributiveNamespace VocabularyNamespace vocabularyNamespace
 ;
syntax BinaryLogicalOperationHasLogicalOperand1
        = 
        BinaryLogicalOperation binaryLogicalOperation LogicalFormulation logicalOperand1
 ;
syntax BinaryLogicalOperationHasLogicalOperand2
        = 
        BinaryLogicalOperation binaryLogicalOperation LogicalFormulation logicalOperand2
 ;
syntax BodyOfSharedMeaningsIncludesBodyOfSharedConcepts
        = 
        BodyOfSharedMeanings bodyOfSharedMeanings BodyOfSharedConcepts bodyOfSharedConcepts
 ;
syntax BodyOfSharedMeaningsIncludesBodyOfSharedGuidance
        = 
        BodyOfSharedMeanings bodyOfSharedMeanings BodyOfSharedGuidance bodyOfSharedGuidance
 ;
syntax BodyOfSharedMeaningsUnitesSemanticCommunity
        = 
        BodyOfSharedMeanings bodyOfSharedMeanings SemanticCommunity semanticCommunity
 ;
syntax BodyOfSharedMeanings1ContainsBodyOfSharedMeanings2
        = 
        BodyOfSharedMeanings bodyOfSharedMeanings1 BodyOfSharedMeanings bodyOfSharedMeanings2
 ;
syntax BusinessPolicyIsBasisForAdvice
        = 
        BusinessPolicy businessPolicy Advice advice
 ;
syntax BusinessRuleIsDerivedFromBusinessPolicy
        = 
        BusinessRule businessRule BusinessPolicy businessPolicy
 ;
syntax CategorizationSchemeContainsCategory
        = 
        CategorizationScheme categorizationScheme Concept category
 ;
syntax CategorizationSchemeIsForGeneralConcept
        = 
        CategorizationScheme categorizationScheme ObjectType generalConcept
 ;
syntax CategorizationTypeIsForGeneralConcept
        = 
        CategorizationType categorizationType ObjectType generalConcept
 ;
syntax ClosedLogicalFormulationFormalizesStatement
        = 
        ClosedLogicalFormulation closedLogicalFormulation Statement statement
 ;
syntax ClosedLogicalFormulationMeansProposition
        = 
        ClosedLogicalFormulation closedLogicalFormulation Proposition proposition
 ;
syntax ClosedProjectionDefinesFactType
        = 
        ClosedProjection closedProjection FactType factType
 ;
syntax ClosedProjectionDefinesNounConcept
        = 
        ClosedProjection closedProjection NounConcept nounConcept
 ;
syntax ClosedProjectionFormalizesDefinition
        = 
        ClosedProjection closedProjection Definition definition
 ;
syntax ClosedProjectionMeansQuestion
        = 
        ClosedProjection closedProjection Question question
 ;
syntax ClosedSemanticFormulationFormulatesMeaning
        = 
        ClosedSemanticFormulation closedSemanticFormulation Meaning meaning
 ;
syntax CommunicationContentIsComposedOfRepresentation
        = 
        CommunicationContent communicationContent Representation representation
 ;
syntax CommunityHasSubcommunity
        = 
        Community community Community subcommunity
 ;
syntax CommunityHasUri
        = 
        Community community Uri uri
 ;
syntax ConceptHasDefinition
        = 
        Concept concept Definition definition
 ;
syntax ConceptHasDesignation
        = 
        Concept concept Designation designation
 ;
syntax ConceptHasExtension
        = 
        Concept concept Set extension
 ;
syntax ConceptHasImpliedCharacteristic
        = 
        Concept concept Characteristic impliedCharacteristic
 ;
syntax ConceptHasInstance
        = 
        Concept concept Thing instance
 ;
syntax ConceptHasNecessaryCharacteristic
        = 
        Concept concept Characteristic necessaryCharacteristic
 ;
syntax ConceptHasSharedUnderstandingBySemanticCommunity
        = 
        Concept concept SemanticCommunity semanticCommunity
 ;
syntax ConceptIncorporatesCharacteristic
        = 
        Concept concept Characteristic characteristic
 ;
syntax ConceptIsClosedInConceptualSchema
        = 
        Concept concept ConceptualSchema conceptualSchema
 ;
syntax ConceptIsIncludedInBodyOfSharedConcepts
        = 
        Concept concept BodyOfSharedConcepts bodyOfSharedConcepts
 ;
syntax Concept1IsCoextensiveWithConcept2
        = 
        Concept concept1 Concept concept2
 ;
syntax Concept1SpecializesConcept2
        = 
        Concept concept1 Concept concept2
 ;
syntax ConceptualSchemaIncludesConcept
        = 
        ConceptualSchema conceptualSchema Concept concept
 ;
syntax ConceptualSchemaIncludesFact
        = 
        ConceptualSchema conceptualSchema Fact fact
 ;
syntax DefinitionServesAsDesignation
        = 
        Definition definition Designation designation
 ;
syntax DescriptionPortraysMeaning
        = 
        Description description Meaning meaning
 ;
syntax DescriptiveExampleIllustratesMeaning
        = 
        DescriptiveExample descriptiveExample Meaning meaning
 ;
syntax DesignationHasSignifier
        = 
        Designation designation Expression signifier
 ;
syntax DesignationIsInNamespace
        = 
        Designation designation Namespace namespace
 ;
syntax ElementOfGuidanceAuthorizesStateOfAffairs
        = 
        ElementOfGuidance elementOfGuidance StateOfAffairs stateOfAffairs
 ;
syntax ElementOfGuidanceIsIncludedInBodyOfSharedGuidance
        = 
        ElementOfGuidance elementOfGuidance BodyOfSharedGuidance bodyOfSharedGuidance
 ;
syntax ElementOfGuidanceObligatesStateOfAffairs
        = 
        ElementOfGuidance elementOfGuidance StateOfAffairs stateOfAffairs
 ;
syntax ElementOfGuidanceProhibitsStateOfAffairs
        = 
        ElementOfGuidance elementOfGuidance StateOfAffairs stateOfAffairs
 ;
syntax ExactlynQuantificationHasCardinality
        = 
        ExactlynQuantification exactlynQuantification NonnegativeInteger cardinality
 ;
syntax ExpressionRepresentsMeaning
        = 
        Expression expression Meaning meaning
 ;
syntax FactModelIncludesFact
        = 
        FactModel factModel Fact fact
 ;
syntax FactModelIsBasedOnConceptualSchema
        = 
        FactModel factModel ConceptualSchema conceptualSchema
 ;
syntax FactTypeFormDemonstratesDesignation
        = 
        FactTypeForm factTypeForm Designation designation
 ;
syntax FactTypeFormIncorporatesFactSymbol
        = 
        FactTypeForm factTypeForm FactSymbol factSymbol
 ;
syntax FactTypeFormIsInNamespace
        = 
        FactTypeForm factTypeForm Namespace namespace
 ;
syntax FactTypeHasFactTypeForm
        = 
        FactType factType FactTypeForm factTypeForm
 ;
syntax FactTypeInternallyIsClosedInConceptualSchema
        = 
        FactType factType ConceptualSchema conceptualSchema
 ;
syntax FactTypeIsElementaryInBodyOfSharedMeanings
        = 
        FactType factType BodyOfSharedMeanings bodyOfSharedMeanings
 ;
syntax FactTypeRoleHasRoleBinding
        = 
        FactTypeRole factTypeRole RoleBinding roleBinding
 ;
syntax FactTypeRoleIsInFactType
        = 
        FactTypeRole factTypeRole FactType factType
 ;
syntax ImplicationHasAntecedent
        = 
        Implication implication LogicalFormulation antecedent
 ;
syntax ImplicationHasConsequent
        = 
        Implication implication LogicalFormulation consequent
 ;
syntax InstantiationFormulationBindsToBindableTarget
        = 
        InstantiationFormulation instantiationFormulation BindableTarget bindableTarget
 ;
syntax InstantiationFormulationConsidersConcept
        = 
        InstantiationFormulation instantiationFormulation Concept concept
 ;
syntax IntensionalDefinitionUsesDelimitingCharacteristic
        = 
        IntensionalDefinition intensionalDefinition Characteristic delimitingCharacteristic
 ;
syntax LogicalFormulationConstrainsProjection
        = 
        LogicalFormulation logicalFormulation Projection projection
 ;
syntax LogicalFormulationRestrictsVariable
        = 
        LogicalFormulation logicalFormulation Variable variable
 ;
syntax LogicalOperationHasLogicalOperand
        = 
        LogicalOperation logicalOperation LogicalFormulation logicalOperand
 ;
syntax MeaningCorrespondsToThing
        = 
        Meaning meaning Thing thing
 ;
syntax ModalFormulationEmbedsLogicalFormulation
        = 
        ModalFormulation modalFormulation LogicalFormulation logicalFormulation
 ;
syntax NameReferencesThing
        = 
        Name name Thing thing
 ;
syntax NamespaceHasUri
        = 
        Namespace namespace Uri uri
 ;
syntax Namespace1IncorporatesNamespace2
        = 
        Namespace namespace1 Namespace namespace2
 ;
syntax NoteCommentsOnMeaning
        = 
        Note note Meaning meaning
 ;
syntax NumericRangeQuantificationHasMaximumCardinality
        = 
        NumericRangeQuantification numericRangeQuantification NonnegativeInteger maximumCardinality
 ;
syntax NumericRangeQuantificationHasMinimumCardinality
        = 
        NumericRangeQuantification numericRangeQuantification NonnegativeInteger minimumCardinality
 ;
syntax ObjectificationBindsToBindableTarget
        = 
        Objectification objectification BindableTarget bindableTarget
 ;
syntax ObjectificationConsidersLogicalFormulation
        = 
        Objectification objectification LogicalFormulation logicalFormulation
 ;
syntax OperativeBusinessRuleHasLevelOfEnforcement
        = 
        OperativeBusinessRule operativeBusinessRule LevelOfEnforcement levelOfEnforcement
 ;
syntax PlaceholderIsAtStartingCharacterPosition
        = 
        Placeholder placeholder PositiveInteger startingCharacterPosition
 ;
syntax PlaceholderIsInFactTypeForm
        = 
        Placeholder placeholder FactTypeForm factTypeForm
 ;
syntax PlaceholderUsesDesignation
        = 
        Placeholder placeholder Designation designation
 ;
syntax ProjectingFormulationBindsToBindableTarget
        = 
        ProjectingFormulation projectingFormulation BindableTarget bindableTarget
 ;
syntax ProjectingFormulationHasProjection
        = 
        ProjectingFormulation projectingFormulation Projection projection
 ;
syntax ProjectionHasAuxiliaryVariable
        = 
        Projection projection AuxiliaryVariable auxiliaryVariable
 ;
syntax ProjectionIsOnVariable
        = 
        Projection projection Variable variable
 ;
syntax PropositionIsBasedOnFactType
        = 
        Proposition proposition FactType factType
 ;
syntax PropositionNominalizationBindsToBindableTarget
        = 
        PropositionNominalization propositionNominalization BindableTarget bindableTarget
 ;
syntax PropositionNominalizationConsidersLogicalFormulation
        = 
        PropositionNominalization propositionNominalization LogicalFormulation logicalFormulation
 ;
syntax QuantificationIntroducesVariable
        = 
        Quantification quantification Variable variable
 ;
syntax QuantificationScopesOverLogicalFormulation
        = 
        Quantification quantification LogicalFormulation logicalFormulation
 ;
syntax Quantity1EqualsQuantity2
        = 
        Quantity quantity1 Quantity quantity2
 ;
syntax Quantity1IsLessThanQuantity2
        = 
        Quantity quantity1 Quantity quantity2
 ;
syntax ReferencePointsToInformationSource
        = 
        Reference reference CommunicationContent informationSource
 ;
syntax ReferenceSchemeExtensionallyUsesFactTypeRole
        = 
        ReferenceScheme referenceScheme FactTypeRole factTypeRole
 ;
syntax ReferenceSchemeIsForConcept
        = 
        ReferenceScheme referenceScheme Concept concept
 ;
syntax ReferenceSchemeSimplyUsesFactTypeRole
        = 
        ReferenceScheme referenceScheme FactTypeRole factTypeRole
 ;
syntax ReferenceSchemeUsesCharacteristic
        = 
        ReferenceScheme referenceScheme Characteristic characteristic
 ;
syntax ReferenceSupportsMeaning
        = 
        Reference reference Meaning meaning
 ;
syntax RepresentationHasExpression
        = 
        Representation representation Expression expression
 ;
syntax RepresentationIsInDesignationContext
        = 
        Representation representation Concept designationContext
 ;
syntax RepresentationIsInSubjectField
        = 
        Representation representation SubjectField subjectField
 ;
syntax RepresentationRepresentsMeaning
        = 
        Representation representation Meaning meaning
 ;
syntax RepresentationUsesVocabulary
        = 
        Representation representation Vocabulary vocabulary
 ;
syntax ResIsSensoryManifestationOfSignifier
        = 
        Res res Expression signifier
 ;
syntax RoleBindingBindsToBindableTarget
        = 
        RoleBinding roleBinding BindableTarget bindableTarget
 ;
syntax RoleBindingOccursInAtomicFormulation
        = 
        RoleBinding roleBinding AtomicFormulation atomicFormulation
 ;
syntax RoleRangesOverObjectType
        = 
        Role role ObjectType objectType
 ;
syntax RulebookIncludesRepresentation
        = 
        Rulebook rulebook Representation representation
 ;
syntax SemanticCommunityHasSpeechCommunity
        = 
        SemanticCommunity semanticCommunity SpeechCommunity speechCommunity
 ;
syntax SetHasCardinality
        = 
        Set set NonnegativeInteger cardinality
 ;
syntax SpeechCommunityDeterminesRulebook
        = 
        SpeechCommunity speechCommunity Rulebook rulebook
 ;
syntax SpeechCommunityOwnsOwnedDefinition
        = 
        SpeechCommunity speechCommunity OwnedDefinition ownedDefinition
 ;
syntax SpeechCommunityOwnsVocabulary
        = 
        SpeechCommunity speechCommunity Vocabulary vocabulary
 ;
syntax SpeechCommunityRegulatesItsUsageOfSignifier
        = 
        SpeechCommunity speechCommunity Expression signifier
 ;
syntax SpeechCommunityUsesLanguage
        = 
        SpeechCommunity speechCommunity Language language
 ;
syntax SpeechCommunityUsesVocabulary
        = 
        SpeechCommunity speechCommunity Vocabulary vocabulary
 ;
syntax StatementExpressesProposition
        = 
        Statement statement Proposition proposition
 ;
syntax TermDenotesThing
        = 
        Term term Thing thing
 ;
syntax TerminologicalDictionaryExpressesBodyOfSharedMeanings
        = 
        TerminologicalDictionary terminologicalDictionary BodyOfSharedMeanings bodyOfSharedMeanings
 ;
syntax TerminologicalDictionaryHasUri
        = 
        TerminologicalDictionary terminologicalDictionary Uri uri
 ;
syntax TerminologicalDictionaryPresentsVocabulary
        = 
        TerminologicalDictionary terminologicalDictionary Vocabulary vocabulary
 ;
syntax ThingIsInSet
        = 
        Thing thing Set set
 ;
syntax Thing1IsThing2
        = 
        Thing thing1 Thing thing2
 ;
syntax VariableHasProjectionPosition
        = 
        Variable variable PositiveInteger projectionPosition
 ;
syntax VariableIsFreesWithinSemanticFormulation
        = 
        Variable variable SemanticFormulation semanticFormulation
 ;
syntax VariableMapsToFactTypeRole
        = 
        Variable variable FactTypeRole factTypeRole
 ;
syntax VariableRangesOverConcept
        = 
        Variable variable Concept concept
 ;
syntax VocabularyIsDesignedForSpeechCommunity
        = 
        Vocabulary vocabulary SpeechCommunity speechCommunity
 ;
syntax VocabularyIsExpressedInLanguage
        = 
        Vocabulary vocabulary Language language
 ;
syntax VocabularyIsUsedToExpressBodyOfSharedMeanings
        = 
        Vocabulary vocabulary BodyOfSharedMeanings bodyOfSharedMeanings
 ;
syntax VocabularyNamespaceIsDerivedFromVocabulary
        = 
        VocabularyNamespace vocabularyNamespace Vocabulary vocabulary
 ;
syntax VocabularyNamespaceIsForLanguage
        = 
        VocabularyNamespace vocabularyNamespace Language language
 ;
syntax VocabularyNamespaceIsSpecificToDesignationContext
        = 
        VocabularyNamespace vocabularyNamespace Concept designationContext
 ;
syntax VocabularyNamespaceIsSpecificToSubjectField
        = 
        VocabularyNamespace vocabularyNamespace SubjectField subjectField
 ;
syntax Vocabulary1IncorporatesVocabulary2
        = 
        Vocabulary vocabulary1 Vocabulary vocabulary2
 ;
syntax WhetherornotFormulationHasConsequent
        = 
        WhetherornotFormulation whetherornotFormulation LogicalFormulation consequent
 ;
syntax WhetherornotFormulationHasInconsequent
        = 
        WhetherornotFormulation whetherornotFormulation LogicalFormulation inconsequent
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax String
        = 
        String
 ;
