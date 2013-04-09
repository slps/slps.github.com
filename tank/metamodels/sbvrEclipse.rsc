@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SbvrEclipse

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
syntax AtleastnQuantificationHasMinimumCardinality
        = 
        ANY atleastnQuantification ANY minimumCardinality
 ;
syntax AtmostnQuantificationHasMaximumCardinality
        = 
        ANY atmostnQuantification ANY maximumCardinality
 ;
syntax AtomicFormulationIsBasedOnFactType
        = 
        ANY atomicFormulation ANY factType
 ;
syntax AttributiveNamespaceIsForSubjectConcept
        = 
        ANY attributiveNamespace ANY subjectConcept
 ;
syntax AttributiveNamespaceIsWithinVocabularyNamespace
        = 
        ANY attributiveNamespace ANY vocabularyNamespace
 ;
syntax BinaryLogicalOperationHasLogicalOperand1
        = 
        ANY binaryLogicalOperation ANY logicalOperand1
 ;
syntax BinaryLogicalOperationHasLogicalOperand2
        = 
        ANY binaryLogicalOperation ANY logicalOperand2
 ;
syntax BodyOfSharedMeaningsIncludesBodyOfSharedConcepts
        = 
        ANY bodyOfSharedMeanings ANY bodyOfSharedConcepts
 ;
syntax BodyOfSharedMeaningsIncludesBodyOfSharedGuidance
        = 
        ANY bodyOfSharedMeanings ANY bodyOfSharedGuidance
 ;
syntax BodyOfSharedMeaningsUnitesSemanticCommunity
        = 
        ANY bodyOfSharedMeanings ANY semanticCommunity
 ;
syntax BodyOfSharedMeanings1ContainsBodyOfSharedMeanings2
        = 
        ANY bodyOfSharedMeanings1 ANY bodyOfSharedMeanings2
 ;
syntax BusinessPolicyIsBasisForAdvice
        = 
        ANY businessPolicy ANY advice
 ;
syntax BusinessRuleIsDerivedFromBusinessPolicy
        = 
        ANY businessRule ANY businessPolicy
 ;
syntax CategorizationSchemeContainsCategory
        = 
        ANY categorizationScheme ANY category
 ;
syntax CategorizationSchemeIsForGeneralConcept
        = 
        ANY categorizationScheme ANY generalConcept
 ;
syntax CategorizationTypeIsForGeneralConcept
        = 
        ANY categorizationType ANY generalConcept
 ;
syntax ClosedLogicalFormulationFormalizesStatement
        = 
        ANY closedLogicalFormulation ANY statement
 ;
syntax ClosedLogicalFormulationMeansProposition
        = 
        ANY closedLogicalFormulation ANY proposition
 ;
syntax ClosedProjectionDefinesFactType
        = 
        ANY closedProjection ANY factType
 ;
syntax ClosedProjectionDefinesNounConcept
        = 
        ANY closedProjection ANY nounConcept
 ;
syntax ClosedProjectionFormalizesDefinition
        = 
        ANY closedProjection ANY definition
 ;
syntax ClosedProjectionMeansQuestion
        = 
        ANY closedProjection ANY question
 ;
syntax ClosedSemanticFormulationFormulatesMeaning
        = 
        ANY closedSemanticFormulation ANY meaning
 ;
syntax CommunicationContentIsComposedOfRepresentation
        = 
        ANY communicationContent ANY representation
 ;
syntax CommunityHasSubcommunity
        = 
        ANY community ANY subcommunity
 ;
syntax CommunityHasUri
        = 
        ANY community ANY uri
 ;
syntax ConceptHasDefinition
        = 
        ANY concept ANY definition
 ;
syntax ConceptHasDesignation
        = 
        ANY concept ANY designation
 ;
syntax ConceptHasExtension
        = 
        ANY concept ANY extension
 ;
syntax ConceptHasImpliedCharacteristic
        = 
        ANY concept ANY impliedCharacteristic
 ;
syntax ConceptHasInstance
        = 
        ANY concept ANY instance
 ;
syntax ConceptHasNecessaryCharacteristic
        = 
        ANY concept ANY necessaryCharacteristic
 ;
syntax ConceptHasSharedUnderstandingBySemanticCommunity
        = 
        ANY concept ANY semanticCommunity
 ;
syntax ConceptIncorporatesCharacteristic
        = 
        ANY concept ANY characteristic
 ;
syntax ConceptIsClosedInConceptualSchema
        = 
        ANY concept ANY conceptualSchema
 ;
syntax ConceptIsIncludedInBodyOfSharedConcepts
        = 
        ANY concept ANY bodyOfSharedConcepts
 ;
syntax Concept1IsCoextensiveWithConcept2
        = 
        ANY concept1 ANY concept2
 ;
syntax Concept1SpecializesConcept2
        = 
        ANY concept1 ANY concept2
 ;
syntax ConceptualSchemaIncludesConcept
        = 
        ANY conceptualSchema ANY concept
 ;
syntax ConceptualSchemaIncludesFact
        = 
        ANY conceptualSchema ANY fact
 ;
syntax DefinitionServesAsDesignation
        = 
        ANY definition ANY designation
 ;
syntax DescriptionPortraysMeaning
        = 
        ANY description ANY meaning
 ;
syntax DescriptiveExampleIllustratesMeaning
        = 
        ANY descriptiveExample ANY meaning
 ;
syntax DesignationHasSignifier
        = 
        ANY designation ANY signifier
 ;
syntax DesignationIsInNamespace
        = 
        ANY designation ANY namespace
 ;
syntax ElementOfGuidanceAuthorizesStateOfAffairs
        = 
        ANY elementOfGuidance ANY stateOfAffairs
 ;
syntax ElementOfGuidanceIsIncludedInBodyOfSharedGuidance
        = 
        ANY elementOfGuidance ANY bodyOfSharedGuidance
 ;
syntax ElementOfGuidanceObligatesStateOfAffairs
        = 
        ANY elementOfGuidance ANY stateOfAffairs
 ;
syntax ElementOfGuidanceProhibitsStateOfAffairs
        = 
        ANY elementOfGuidance ANY stateOfAffairs
 ;
syntax ExactlynQuantificationHasCardinality
        = 
        ANY exactlynQuantification ANY cardinality
 ;
syntax ExpressionRepresentsMeaning
        = 
        ANY expression ANY meaning
 ;
syntax FactModelIncludesFact
        = 
        ANY factModel ANY fact
 ;
syntax FactModelIsBasedOnConceptualSchema
        = 
        ANY factModel ANY conceptualSchema
 ;
syntax FactTypeFormDemonstratesDesignation
        = 
        ANY factTypeForm ANY designation
 ;
syntax FactTypeFormIncorporatesFactSymbol
        = 
        ANY factTypeForm ANY factSymbol
 ;
syntax FactTypeFormIsInNamespace
        = 
        ANY factTypeForm ANY namespace
 ;
syntax FactTypeHasFactTypeForm
        = 
        ANY factType ANY factTypeForm
 ;
syntax FactTypeInternallyIsClosedInConceptualSchema
        = 
        ANY factType ANY conceptualSchema
 ;
syntax FactTypeIsElementaryInBodyOfSharedMeanings
        = 
        ANY factType ANY bodyOfSharedMeanings
 ;
syntax FactTypeRoleHasRoleBinding
        = 
        ANY factTypeRole ANY roleBinding
 ;
syntax FactTypeRoleIsInFactType
        = 
        ANY factTypeRole ANY factType
 ;
syntax ImplicationHasAntecedent
        = 
        ANY implication ANY antecedent
 ;
syntax ImplicationHasConsequent
        = 
        ANY implication ANY consequent
 ;
syntax InstantiationFormulationBindsToBindableTarget
        = 
        ANY instantiationFormulation ANY bindableTarget
 ;
syntax InstantiationFormulationConsidersConcept
        = 
        ANY instantiationFormulation ANY concept
 ;
syntax IntensionalDefinitionUsesDelimitingCharacteristic
        = 
        ANY intensionalDefinition ANY delimitingCharacteristic
 ;
syntax LogicalFormulationConstrainsProjection
        = 
        ANY logicalFormulation ANY projection
 ;
syntax LogicalFormulationRestrictsVariable
        = 
        ANY logicalFormulation ANY variable
 ;
syntax LogicalOperationHasLogicalOperand
        = 
        ANY logicalOperation ANY logicalOperand
 ;
syntax MeaningCorrespondsToThing
        = 
        ANY meaning ANY thing
 ;
syntax ModalFormulationEmbedsLogicalFormulation
        = 
        ANY modalFormulation ANY logicalFormulation
 ;
syntax NameReferencesThing
        = 
        ANY name ANY thing
 ;
syntax NamespaceHasUri
        = 
        ANY namespace ANY uri
 ;
syntax Namespace1IncorporatesNamespace2
        = 
        ANY namespace1 ANY namespace2
 ;
syntax NoteCommentsOnMeaning
        = 
        ANY note ANY meaning
 ;
syntax NumericRangeQuantificationHasMaximumCardinality
        = 
        ANY numericRangeQuantification ANY maximumCardinality
 ;
syntax NumericRangeQuantificationHasMinimumCardinality
        = 
        ANY numericRangeQuantification ANY minimumCardinality
 ;
syntax ObjectificationBindsToBindableTarget
        = 
        ANY objectification ANY bindableTarget
 ;
syntax ObjectificationConsidersLogicalFormulation
        = 
        ANY objectification ANY logicalFormulation
 ;
syntax OperativeBusinessRuleHasLevelOfEnforcement
        = 
        ANY operativeBusinessRule ANY levelOfEnforcement
 ;
syntax PlaceholderIsAtStartingCharacterPosition
        = 
        ANY placeholder ANY startingCharacterPosition
 ;
syntax PlaceholderIsInFactTypeForm
        = 
        ANY placeholder ANY factTypeForm
 ;
syntax PlaceholderUsesDesignation
        = 
        ANY placeholder ANY designation
 ;
syntax ProjectingFormulationBindsToBindableTarget
        = 
        ANY projectingFormulation ANY bindableTarget
 ;
syntax ProjectingFormulationHasProjection
        = 
        ANY projectingFormulation ANY projection
 ;
syntax ProjectionHasAuxiliaryVariable
        = 
        ANY projection ANY auxiliaryVariable
 ;
syntax ProjectionIsOnVariable
        = 
        ANY projection ANY variable
 ;
syntax PropositionIsBasedOnFactType
        = 
        ANY proposition ANY factType
 ;
syntax PropositionNominalizationBindsToBindableTarget
        = 
        ANY propositionNominalization ANY bindableTarget
 ;
syntax PropositionNominalizationConsidersLogicalFormulation
        = 
        ANY propositionNominalization ANY logicalFormulation
 ;
syntax QuantificationIntroducesVariable
        = 
        ANY quantification ANY variable
 ;
syntax QuantificationScopesOverLogicalFormulation
        = 
        ANY quantification ANY logicalFormulation
 ;
syntax Quantity1EqualsQuantity2
        = 
        ANY quantity1 ANY quantity2
 ;
syntax Quantity1IsLessThanQuantity2
        = 
        ANY quantity1 ANY quantity2
 ;
syntax ReferencePointsToInformationSource
        = 
        ANY reference ANY informationSource
 ;
syntax ReferenceSchemeExtensionallyUsesFactTypeRole
        = 
        ANY referenceScheme ANY factTypeRole
 ;
syntax ReferenceSchemeIsForConcept
        = 
        ANY referenceScheme ANY concept
 ;
syntax ReferenceSchemeSimplyUsesFactTypeRole
        = 
        ANY referenceScheme ANY factTypeRole
 ;
syntax ReferenceSchemeUsesCharacteristic
        = 
        ANY referenceScheme ANY characteristic
 ;
syntax ReferenceSupportsMeaning
        = 
        ANY reference ANY meaning
 ;
syntax RepresentationHasExpression
        = 
        ANY representation ANY expression
 ;
syntax RepresentationIsInDesignationContext
        = 
        ANY representation ANY designationContext
 ;
syntax RepresentationIsInSubjectField
        = 
        ANY representation ANY subjectField
 ;
syntax RepresentationRepresentsMeaning
        = 
        ANY representation ANY meaning
 ;
syntax RepresentationUsesVocabulary
        = 
        ANY representation ANY vocabulary
 ;
syntax ResIsSensoryManifestationOfSignifier
        = 
        ANY res ANY signifier
 ;
syntax RoleBindingBindsToBindableTarget
        = 
        ANY roleBinding ANY bindableTarget
 ;
syntax RoleBindingOccursInAtomicFormulation
        = 
        ANY roleBinding ANY atomicFormulation
 ;
syntax RoleRangesOverObjectType
        = 
        ANY role ANY objectType
 ;
syntax RulebookIncludesRepresentation
        = 
        ANY rulebook ANY representation
 ;
syntax SemanticCommunityHasSpeechCommunity
        = 
        ANY semanticCommunity ANY speechCommunity
 ;
syntax SetHasCardinality
        = 
        ANY set ANY cardinality
 ;
syntax SpeechCommunityDeterminesRulebook
        = 
        ANY speechCommunity ANY rulebook
 ;
syntax SpeechCommunityOwnsOwnedDefinition
        = 
        ANY speechCommunity ANY ownedDefinition
 ;
syntax SpeechCommunityOwnsVocabulary
        = 
        ANY speechCommunity ANY vocabulary
 ;
syntax SpeechCommunityRegulatesItsUsageOfSignifier
        = 
        ANY speechCommunity ANY signifier
 ;
syntax SpeechCommunityUsesLanguage
        = 
        ANY speechCommunity ANY language
 ;
syntax SpeechCommunityUsesVocabulary
        = 
        ANY speechCommunity ANY vocabulary
 ;
syntax StatementExpressesProposition
        = 
        ANY statement ANY proposition
 ;
syntax TermDenotesThing
        = 
        ANY term ANY thing
 ;
syntax TerminologicalDictionaryExpressesBodyOfSharedMeanings
        = 
        ANY terminologicalDictionary ANY bodyOfSharedMeanings
 ;
syntax TerminologicalDictionaryHasUri
        = 
        ANY terminologicalDictionary ANY uri
 ;
syntax TerminologicalDictionaryPresentsVocabulary
        = 
        ANY terminologicalDictionary ANY vocabulary
 ;
syntax ThingIsInSet
        = 
        ANY thing ANY set
 ;
syntax Thing1IsThing2
        = 
        ANY thing1 ANY thing2
 ;
syntax VariableHasProjectionPosition
        = 
        ANY variable ANY projectionPosition
 ;
syntax VariableIsFreesWithinSemanticFormulation
        = 
        ANY variable ANY semanticFormulation
 ;
syntax VariableMapsToFactTypeRole
        = 
        ANY variable ANY factTypeRole
 ;
syntax VariableRangesOverConcept
        = 
        ANY variable ANY concept
 ;
syntax VocabularyIsDesignedForSpeechCommunity
        = 
        ANY vocabulary ANY speechCommunity
 ;
syntax VocabularyIsExpressedInLanguage
        = 
        ANY vocabulary ANY language
 ;
syntax VocabularyIsUsedToExpressBodyOfSharedMeanings
        = 
        ANY vocabulary ANY bodyOfSharedMeanings
 ;
syntax VocabularyNamespaceIsDerivedFromVocabulary
        = 
        ANY vocabularyNamespace ANY vocabulary
 ;
syntax VocabularyNamespaceIsForLanguage
        = 
        ANY vocabularyNamespace ANY language
 ;
syntax VocabularyNamespaceIsSpecificToDesignationContext
        = 
        ANY vocabularyNamespace ANY designationContext
 ;
syntax VocabularyNamespaceIsSpecificToSubjectField
        = 
        ANY vocabularyNamespace ANY subjectField
 ;
syntax Vocabulary1IncorporatesVocabulary2
        = 
        ANY vocabulary1 ANY vocabulary2
 ;
syntax WhetherornotFormulationHasConsequent
        = 
        ANY whetherornotFormulation ANY consequent
 ;
syntax WhetherornotFormulationHasInconsequent
        = 
        ANY whetherornotFormulation ANY inconsequent
 ;
