@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SbvrOMG

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Boolean
        = "true"
        | "false"
 ;
syntax String
        = 
        String
 ;
