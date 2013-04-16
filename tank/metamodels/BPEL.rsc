@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BPEL

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax XSDAnnotation
        = 
        XSDDOMElement applicationInformation+ XSDDOMElement userInformation+ DOMAttr attributes+
 ;
syntax XSDAttributeDeclaration
        = 
        EBoolean attributeDeclarationReference XSDAnnotation annotation XSDSimpleTypeDefinition anonymousTypeDefinition XSDSimpleTypeDefinition typeDefinition XSDAttributeDeclaration resolvedAttributeDeclaration
 ;
syntax XSDAttributeGroupContent
        = 
        XSDAttributeUse
 ;
syntax XSDAttributeGroupDefinition
        = 
        EBoolean attributeGroupDefinitionReference XSDAnnotation annotation XSDAttributeGroupContent contents+ XSDAttributeUse attributeUses+ XSDWildcard attributeWildcardContent XSDWildcard attributeWildcard XSDAttributeGroupDefinition resolvedAttributeGroupDefinition XSDWildcard syntheticWildcard
 ;
syntax XSDAttributeUse
        = 
        EBoolean required Value value XSDConstraint constraint XSDAttributeUseCategory use EString lexicalValue XSDAttributeDeclaration attributeDeclaration XSDAttributeDeclaration content
 ;
syntax XSDBoundedFacet
        = 
        value: EBoolean
 ;
syntax XSDCardinalityFacet
        = 
        value: XSDCardinality
 ;
syntax XSDComplexTypeContent
        = XSDParticle
        | XSDSimpleTypeDefinition
 ;
syntax XSDComplexTypeDefinition
        = 
        XSDDerivationMethod derivationMethod XSDComplexFinal final+ EBoolean abstract XSDContentTypeCategory contentTypeCategory XSDProhibitedSubstitutions prohibitedSubstitutions+ XSDComplexFinal lexicalFinal+ XSDProhibitedSubstitutions block+ EBoolean mixed XSDAnnotation contentAnnotation XSDTypeDefinition baseTypeDefinition XSDComplexTypeContent content XSDComplexTypeContent contentType XSDAttributeUse attributeUses+ XSDAttributeGroupContent attributeContents+ XSDWildcard attributeWildcard XSDWildcard attributeWildcardContent XSDTypeDefinition rootTypeDefinition XSDParticle syntheticParticle XSDWildcard syntheticWildcard
 ;
syntax XSDComponent
        = XSDComplexTypeContent
        | XSDFacet
        | XSDNamedComponent
        | XSDScope
        | XSDXPathDefinition
        | XSDAnnotation
        | XSDAttributeUse
        | XSDTerm
 ;
syntax XSDConcreteComponent
        = XSDAttributeGroupContent
        | XSDComponent
        | XSDDiagnostic
        | XSDParticleContent
        | XSDSchemaContent
 ;
syntax XSDConstrainingFacet
        = XSDFixedFacet
        | XSDRepeatableFacet
 ;
syntax XSDDiagnostic
        = 
        XSDDiagnosticSeverity severity EString message EString locationURI EInt line EInt column DOMNode node EString annotationURI EString key EString substitutions+ XSDConcreteComponent components+ XSDConcreteComponent primaryComponent
 ;
syntax XSDElementDeclaration
        = 
        EBoolean nillable XSDDisallowedSubstitutions disallowedSubstitutions+ XSDSubstitutionGroupExclusions substitutionGroupExclusions+ EBoolean abstract XSDProhibitedSubstitutions lexicalFinal+ XSDDisallowedSubstitutions block+ EBoolean elementDeclarationReference EBoolean circular XSDAnnotation annotation XSDTypeDefinition anonymousTypeDefinition XSDTypeDefinition typeDefinition XSDIdentityConstraintDefinition identityConstraintDefinitions+ XSDElementDeclaration resolvedElementDeclaration XSDElementDeclaration substitutionGroupAffiliation XSDElementDeclaration substitutionGroup+
 ;
syntax XSDEnumerationFacet
        = 
        Value value+
 ;
syntax XSDFacet
        = XSDConstrainingFacet
        | XSDFundamentalFacet
 ;
syntax XSDFeature
        = XSDAttributeDeclaration
        | XSDElementDeclaration
 ;
syntax XSDFixedFacet
        = XSDFractionDigitsFacet
        | XSDLengthFacet
        | XSDMaxFacet
        | XSDMaxLengthFacet
        | XSDMinFacet
        | XSDMinLengthFacet
        | XSDTotalDigitsFacet
        | XSDWhiteSpaceFacet
 ;
syntax XSDFractionDigitsFacet
        = 
        value: EInt
 ;
syntax XSDFundamentalFacet
        = XSDBoundedFacet
        | XSDCardinalityFacet
        | XSDNumericFacet
        | XSDOrderedFacet
 ;
syntax XSDIdentityConstraintDefinition
        = 
        XSDIdentityConstraintCategory identityConstraintCategory XSDAnnotation annotation XSDIdentityConstraintDefinition referencedKey XSDXPathDefinition selector XSDXPathDefinition fields+
 ;
syntax XSDImport
        = 
        EString namespace XSDAnnotation annotation
 ;
syntax XSDInclude
        = 
        annotation: XSDAnnotation
 ;
syntax XSDLengthFacet
        = 
        value: EInt
 ;
syntax XSDMaxExclusiveFacet
        = 
        Value value EBoolean inclusive EBoolean exclusive
 ;
syntax XSDMaxFacet
        = XSDMaxExclusiveFacet
        | XSDMaxInclusiveFacet
 ;
syntax XSDMaxInclusiveFacet
        = 
        Value value EBoolean inclusive EBoolean exclusive
 ;
syntax XSDMaxLengthFacet
        = 
        value: EInt
 ;
syntax XSDMinExclusiveFacet
        = 
        Value value EBoolean inclusive EBoolean exclusive
 ;
syntax XSDMinFacet
        = XSDMinExclusiveFacet
        | XSDMinInclusiveFacet
 ;
syntax XSDMinInclusiveFacet
        = 
        Value value EBoolean inclusive EBoolean exclusive
 ;
syntax XSDMinLengthFacet
        = 
        value: EInt
 ;
syntax XSDModelGroup
        = 
        XSDCompositor compositor XSDAnnotation annotation XSDParticle contents+ XSDParticle particles+
 ;
syntax XSDModelGroupDefinition
        = 
        EBoolean modelGroupDefinitionReference XSDAnnotation annotation XSDModelGroup modelGroup XSDModelGroupDefinition resolvedModelGroupDefinition
 ;
syntax XSDNamedComponent
        = XSDFeature
        | XSDIdentityConstraintDefinition
        | XSDNotationDeclaration
        | XSDRedefinableComponent
 ;
syntax XSDNotationDeclaration
        = 
        EString systemIdentifier EString publicIdentifier XSDAnnotation annotation
 ;
syntax XSDNumericFacet
        = 
        value: EBoolean
 ;
syntax XSDOrderedFacet
        = 
        value: XSDOrdered
 ;
syntax XSDParticle
        = 
        EInt minOccurs EInt maxOccurs XSDParticleContent content XSDTerm term
 ;
syntax XSDParticleContent
        = 
        XSDTerm
 ;
syntax XSDPatternFacet
        = 
        EString value+
 ;
syntax XSDRedefinableComponent
        = XSDAttributeGroupDefinition
        | XSDModelGroupDefinition
        | XSDTypeDefinition
 ;
syntax XSDRedefineContent
        = XSDAnnotation
        | XSDRedefinableComponent
        | XSDTypeDefinition
 ;
syntax XSDRedefine
        = 
        XSDAnnotation annotations+ XSDRedefineContent contents+
 ;
syntax XSDRepeatableFacet
        = XSDEnumerationFacet
        | XSDPatternFacet
 ;
syntax XSDSchema
        = 
        XSDDOMDocument document EString schemaLocation EString targetNamespace XSDForm attributeFormDefault XSDForm elementFormDefault XSDProhibitedSubstitutions finalDefault+ XSDDisallowedSubstitutions blockDefault+ EString version XSDSchemaContent contents+ XSDElementDeclaration elementDeclarations+ XSDAttributeDeclaration attributeDeclarations+ XSDAttributeGroupDefinition attributeGroupDefinitions+ XSDTypeDefinition typeDefinitions+ XSDModelGroupDefinition modelGroupDefinitions+ XSDIdentityConstraintDefinition identityConstraintDefinitions+ XSDNotationDeclaration notationDeclarations+ XSDAnnotation annotations+ XSDDiagnostic allDiagnostics+ XSDSchemaDirective referencingDirectives+ XSDSchema rootVersion XSDSchema originalVersion XSDSchema incorporatedVersions+ XSDSchema schemaForSchema
 ;
syntax XSDSchemaCompositor
        = XSDInclude
        | XSDRedefine
 ;
syntax XSDSchemaContent
        = XSDRedefineContent
        | XSDSchemaDirective
        | XSDAttributeDeclaration
        | XSDNotationDeclaration
 ;
syntax XSDSchemaDirective
        = XSDImport
        | XSDSchemaCompositor
 ;
syntax XSDScope
        = XSDSchema
        | XSDComplexTypeDefinition
 ;
syntax XSDSimpleTypeDefinition
        = 
        XSDVariety variety XSDSimpleFinal final+ XSDSimpleFinal lexicalFinal+ EString validFacets+ XSDSimpleTypeDefinition contents+ XSDConstrainingFacet facetContents+ XSDConstrainingFacet facets+ XSDSimpleTypeDefinition memberTypeDefinitions+ XSDFundamentalFacet fundamentalFacets+ XSDSimpleTypeDefinition baseTypeDefinition XSDSimpleTypeDefinition primitiveTypeDefinition XSDSimpleTypeDefinition itemTypeDefinition XSDSimpleTypeDefinition rootTypeDefinition XSDMinFacet minFacet XSDMaxFacet maxFacet XSDMaxInclusiveFacet maxInclusiveFacet XSDMinInclusiveFacet minInclusiveFacet XSDMinExclusiveFacet minExclusiveFacet XSDMaxExclusiveFacet maxExclusiveFacet XSDLengthFacet lengthFacet XSDWhiteSpaceFacet whiteSpaceFacet XSDEnumerationFacet enumerationFacets+ XSDPatternFacet patternFacets+ XSDCardinalityFacet cardinalityFacet XSDNumericFacet numericFacet XSDMaxLengthFacet maxLengthFacet XSDMinLengthFacet minLengthFacet XSDTotalDigitsFacet totalDigitsFacet XSDFractionDigitsFacet fractionDigitsFacet XSDOrderedFacet orderedFacet XSDBoundedFacet boundedFacet XSDMaxFacet effectiveMaxFacet XSDWhiteSpaceFacet effectiveWhiteSpaceFacet XSDMaxLengthFacet effectiveMaxLengthFacet XSDFractionDigitsFacet effectiveFractionDigitsFacet XSDPatternFacet effectivePatternFacet XSDEnumerationFacet effectiveEnumerationFacet XSDTotalDigitsFacet effectiveTotalDigitsFacet XSDMinLengthFacet effectiveMinLengthFacet XSDLengthFacet effectiveLengthFacet XSDMinFacet effectiveMinFacet XSDFacet syntheticFacets+
 ;
syntax XSDTerm
        = XSDModelGroup
        | XSDWildcard
 ;
syntax XSDTotalDigitsFacet
        = 
        value: EInt
 ;
syntax XSDTypeDefinition
        = XSDComplexTypeDefinition
        | XSDSimpleTypeDefinition
 ;
syntax XSDWhiteSpaceFacet
        = 
        value: XSDWhiteSpace
 ;
syntax XSDWildcard
        = 
        XSDNamespaceConstraintCategory namespaceConstraintCategory EString namespaceConstraint+ XSDProcessContents processContents EString lexicalNamespaceConstraint+ XSDAnnotation annotation XSDAnnotation annotations+
 ;
syntax XSDXPathDefinition
        = 
        XSDXPathVariety variety EString value XSDAnnotation annotation
 ;
syntax XSDAttributeUseCategory
        = prohibited: ()
        | optional: ()
        | required: ()
 ;
syntax XSDCardinality
        = countablyInfinite: ()
        | finite: ()
 ;
syntax XSDComplexFinal
        = all: ()
        | restriction: ()
        | extension: ()
 ;
syntax XSDCompositor
        = all: ()
        | choice: ()
        | sequence: ()
 ;
syntax XSDConstraint
        = fixed: ()
        | default: ()
 ;
syntax XSDContentTypeCategory
        = elementOnly: ()
        | mixed: ()
        | simple: ()
        | empty: ()
 ;
syntax XSDDerivationMethod
        = extension: ()
        | restriction: ()
 ;
syntax XSDDiagnosticSeverity
        = fatal: ()
        | warning: ()
        | error: ()
        | information: ()
 ;
syntax XSDDisallowedSubstitutions
        = extension: ()
        | substitution: ()
        | all: ()
        | restriction: ()
 ;
syntax XSDForm
        = unqualified: ()
        | qualified: ()
 ;
syntax XSDIdentityConstraintCategory
        = keyref: ()
        | unique: ()
        | key: ()
 ;
syntax XSDNamespaceConstraintCategory
        = set: ()
        | not: ()
        | any: ()
 ;
syntax XSDOrdered
        = total: ()
        | partial: ()
 ;
syntax XSDProcessContents
        = skip: ()
        | lax: ()
        | strict: ()
 ;
syntax XSDProhibitedSubstitutions
        = extension: ()
        | restriction: ()
        | all: ()
 ;
syntax XSDSimpleFinal
        = list: ()
        | restriction: ()
        | all: ()
        | union: ()
 ;
syntax XSDSubstitutionGroupExclusions
        = restriction: ()
        | extension: ()
 ;
syntax XSDVariety
        = union: ()
        | list: ()
        | atomic: ()
 ;
syntax XSDWhiteSpace
        = replace: ()
        | collapse: ()
        | preserve: ()
 ;
syntax XSDXPathVariety
        = field: ()
        | selector: ()
 ;
syntax Property
        = 
        QName qName EString name EJavaObject type EString ID
 ;
syntax PropertyAlias
        = 
        EJavaObject messageType EString part EJavaObject propertyName EString ID Part wsdlPart MessagepropertiesQuery query EJavaObject type EJavaObject XSDElement
 ;
syntax MessagepropertiesQuery
        = 
        EString queryLanguage EString value
 ;
syntax EObject
        = 
        ()
 ;
syntax PartnerLinkType
        = 
        EString name EString ID Role role+
 ;
syntax Role
        = 
        EString ID EString name EJavaObject portType
 ;
syntax Process
        = 
        EString name EString targetNamespace EString queryLanguage EString expressionLanguage EBooleanObject suppressJoinFailure EBooleanObject variableAccessSerializable PartnerLinks partnerLinks Variables variables Activity activity FaultHandler faultHandlers EventHandler eventHandlers CorrelationSets correlationSets BPELImport imports+ Extensions extensions EBooleanObject exitOnStandardFault
 ;
syntax PartnerLink
        = 
        EString name Role myRole Role partnerRole PartnerLinkType PartnerLinkType EBooleanObject initializePartnerRole
 ;
syntax FaultHandler
        = 
        Catch catch+ CatchAll catchAll
 ;
syntax Activity
        = PartnerActivity
        | Exit
        | Throw
        | Wait
        | Empty
        | Sequence
        | Switch
        | While
        | Pick
        | Flow
        | Assign
        | Scope
        | Compensate
        | Rethrow
        | ExtensionActivity
        | OpaqueActivity
        | ForEach
        | RepeatUntil
        | Validate
        | If
        | Reply
        | EString name EBooleanObject suppressJoinFailure Targets targets Sources sources
 ;
syntax CorrelationSet
        = 
        EString name Property properties+
 ;
syntax Invoke
        = 
        Variable outputVariable Variable inputVariable CompensationHandler compensationHandler FaultHandler faultHandler ToPart toPart+ FromPart fromPart+
 ;
syntax Link
        = 
        EString name Source sources+ Target targets+
 ;
syntax Catch
        = 
        QName faultName Variable faultVariable Activity activity Message faultMessageType XSDElementDeclaration faultElement
 ;
syntax Reply
        = 
        QName faultName Variable variable ToPart toPart+
 ;
syntax PartnerActivity
        = Invoke
        | Receive
        | Reply
        | PartnerLink partnerLink Correlations correlations PortType portType Operation operation
 ;
syntax Receive
        = 
        EBooleanObject createInstance Variable variable FromPart fromPart+
 ;
syntax Exit
        = 
        EString name EBooleanObject suppressJoinFailure Targets targets Sources sources
 ;
syntax Throw
        = 
        QName faultName Variable faultVariable
 ;
syntax Wait
        = 
        Expression for Expression until
 ;
syntax Empty
        = 
        EString name EBooleanObject suppressJoinFailure Targets targets Sources sources
 ;
syntax Sequence
        = 
        Activity activities+
 ;
syntax Switch
        = 
        Case cases+ Otherwise otherwise
 ;
syntax Case
        = 
        Activity activity Condition condition
 ;
syntax While
        = 
        Activity activity Condition condition
 ;
syntax Pick
        = 
        EBooleanObject createInstance OnMessage messages+ OnAlarm alarm+
 ;
syntax Flow
        = 
        Activity activities+ Links links CompletionCondition completionCondition
 ;
syntax OnAlarm
        = 
        Activity activity Expression for Expression until Expression repeatEvery
 ;
syntax Assign
        = 
        Copy copy+ EBooleanObject validate
 ;
syntax Copy
        = 
        To to From from EBooleanObject keepSrcElementName
 ;
syntax Extension
        = 
        EString namespace EBooleanObject mustUnderstand
 ;
syntax Scope
        = 
        EBooleanObject isolated FaultHandler faultHandlers CompensationHandler compensationHandler Activity activity Variables variables CorrelationSets correlationSets EventHandler eventHandlers PartnerLinks partnerLinks TerminationHandler terminationHandler
 ;
syntax Compensate
        = 
        scope: EObject
 ;
syntax CompensationHandler
        = 
        activity: Activity
 ;
syntax To
        = From
        | Variable variable Part part PartnerLink partnerLink Property property BPELQuery query
 ;
syntax From
        = 
        EBooleanObject opaque EndpointReferenceRole endpointReference EString literal EBooleanObject unsafeLiteral Expression expression ServiceRef serviceRef XSDTypeDefinition type
 ;
syntax OnMessage
        = 
        Variable variable Activity activity PortType portType PartnerLink partnerLink Correlations correlations Operation operation FromPart fromPart+
 ;
syntax Expression
        = BooleanExpression
        | Condition
        | Branches
        | EJavaObject body EString expressionLanguage EBooleanObject opaque
 ;
syntax BooleanExpression
        = 
        EJavaObject body EString expressionLanguage EBooleanObject opaque
 ;
syntax Correlation
        = 
        EString initiate CorrelationPattern pattern CorrelationSet set
 ;
syntax CorrelationPattern
        = outin: ()
        | in: ()
        | out: ()
 ;
syntax EndpointReferenceRole
        = partnerRole: ()
        | myRole: ()
 ;
syntax EventHandler
        = 
        OnAlarm alarm+ OnEvent events+
 ;
syntax Source
        = 
        Link Link Activity activity Condition transitionCondition
 ;
syntax Target
        = 
        Link Link Activity activity
 ;
syntax PartnerLinks
        = 
        PartnerLink children+
 ;
syntax Variables
        = 
        Variable children+
 ;
syntax CorrelationSets
        = 
        CorrelationSet children+
 ;
syntax Links
        = 
        Link children+
 ;
syntax CatchAll
        = 
        activity: Activity
 ;
syntax Correlations
        = 
        Correlation children+
 ;
syntax Variable
        = 
        EString name Message messageType XSDElementDeclaration XSDElement XSDTypeDefinition type From from
 ;
syntax Otherwise
        = 
        activity: Activity
 ;
syntax UnknownExtensibilityAttribute
        = 
        UnknownExtensibilityElement children+
 ;
syntax OnEvent
        = 
        Activity activity Variable variable PartnerLink partnerLink Correlations correlations Operation operation PortType portType Message messageType FromPart fromPart+ CorrelationSets correlationSets
 ;
syntax BPELImport
        = 
        EString namespace EString location EString importType
 ;
syntax Rethrow
        = 
        EString name EBooleanObject suppressJoinFailure Targets targets Sources sources
 ;
syntax Condition
        = 
        EJavaObject body EString expressionLanguage EBooleanObject opaque
 ;
syntax Targets
        = 
        Target children+ Condition joinCondition
 ;
syntax Sources
        = 
        Source children+
 ;
syntax BPELQuery
        = 
        EString value EString queryLanguage
 ;
syntax ServiceRef
        = 
        EString referenceScheme EJavaObject value
 ;
syntax Extensions
        = 
        Extension children+
 ;
syntax ExtensionActivity
        = 
        EString name EBooleanObject suppressJoinFailure Targets targets Sources sources
 ;
syntax FromPart
        = 
        EString part To to
 ;
syntax ToPart
        = 
        EString part From from
 ;
syntax OpaqueActivity
        = 
        EString name EBooleanObject suppressJoinFailure Targets targets Sources sources
 ;
syntax ForEach
        = 
        EBooleanObject parallel Variable counterName CompletionCondition completionCondition Iterator iterator Activity activity
 ;
syntax RepeatUntil
        = 
        Activity activity Condition condition
 ;
syntax TerminationHandler
        = 
        activity: Activity
 ;
syntax Validate
        = 
        Variable variables+
 ;
syntax If
        = 
        Condition condition Then then ElseIf elseIf+ Else else
 ;
syntax Then
        = 
        activity: Activity
 ;
syntax ElseIf
        = 
        Condition condition Activity activity
 ;
syntax Else
        = 
        activity: Activity
 ;
syntax CompletionCondition
        = 
        branches: Branches
 ;
syntax Branches
        = 
        countCompletedBranchesOnly: EBooleanObject
 ;
syntax BPELExtensibleElement
        = Process
        | PartnerLink
        | FaultHandler
        | Activity
        | CorrelationSet
        | Link
        | Catch
        | Case
        | OnAlarm
        | Copy
        | Extension
        | CompensationHandler
        | To
        | OnMessage
        | Correlation
        | EventHandler
        | Source
        | Target
        | PartnerLinks
        | Variables
        | CorrelationSets
        | Links
        | CatchAll
        | Correlations
        | Variable
        | Otherwise
        | OnEvent
        | Targets
        | Sources
        | Extensions
        | TerminationHandler
        | Then
        | ElseIf
        | Else
        | From
        | documentation: Documentation
 ;
syntax Documentation
        = 
        EString lang EString source EString value
 ;
syntax Iterator
        = 
        Expression finalCounterValue Expression startCounterValue
 ;
syntax WSDLElement
        = WSDLExtensibleElement
        | MessageReference
        | PortType
        | Operation
        | Message
        | Part
        | ExtensibilityElement
        | WSDLImport
 ;
syntax PortType
        = 
        QName qName EBoolean undefined EBoolean proxy EString resourceURI Operation eOperations+
 ;
syntax Operation
        = 
        OperationType style EString name EBoolean undefined EBoolean proxy EString resourceURI Input eInput Output eOutput Fault eFaults+ Part eParameterOrdering+
 ;
syntax Message
        = 
        QName qName EBoolean undefined EBoolean proxy EString resourceURI Part eParts+
 ;
syntax Part
        = 
        EString name QName elementName QName typeName XSDTypeDefinition typeDefinition XSDElementDeclaration elementDeclaration Message eMessage
 ;
syntax Binding
        = 
        QName qName EBoolean undefined EBoolean proxy EString resourceURI PortType ePortType BindingOperation eBindingOperations+
 ;
syntax BindingOperation
        = 
        EString name Operation eOperation BindingInput eBindingInput BindingOutput eBindingOutput BindingFault eBindingFaults+
 ;
syntax Service
        = 
        QName qName EBoolean undefined EBoolean proxy EString resourceURI Port ePorts+
 ;
syntax Port
        = 
        EString name Binding eBinding
 ;
syntax ExtensibilityElement
        = Property
        | PropertyAlias
        | MessagepropertiesQuery
        | PartnerLinkType
        | Role
        | Expression
        | UnknownExtensibilityElement
        | XSDSchemaExtensibilityElement
        | EBoolean required QName elementType
 ;
syntax Definition
        = 
        EString targetNamespace EString location QName qName EString encoding WSDLImport eImports+ Types eTypes Message eMessages+ PortType ePortTypes+ Binding eBindings+ Service eServices+ Namespace eNamespaces+
 ;
syntax WSDLImport
        = 
        EString namespaceURI EString locationURI Definition eDefinition XSDSchema eSchema
 ;
syntax WSDLExtensibleElement
        = BPELExtensibleElement
        | Binding
        | BindingOperation
        | Service
        | Port
        | Definition
        | BindingInput
        | BindingOutput
        | BindingFault
        | Types
 ;
syntax Input
        = 
        EString name Message eMessage
 ;
syntax Output
        = 
        EString name Message eMessage
 ;
syntax Fault
        = 
        EString name Message eMessage
 ;
syntax BindingInput
        = 
        EString name Input eInput
 ;
syntax BindingOutput
        = 
        EString name Output eOutput
 ;
syntax BindingFault
        = 
        EString name Fault eFault
 ;
syntax Namespace
        = 
        EString URI EString prefix
 ;
syntax IPortType
        = 
        PortType
 ;
syntax IOperation
        = 
        Operation
 ;
syntax IMessage
        = 
        Message
 ;
syntax IPart
        = 
        Part
 ;
syntax IService
        = 
        Service
 ;
syntax IPort
        = 
        Port
 ;
syntax IBinding
        = 
        Binding
 ;
syntax IBindingOperation
        = 
        BindingOperation
 ;
syntax IBindingInput
        = 
        BindingInput
 ;
syntax IBindingOutput
        = 
        BindingOutput
 ;
syntax IBindingFault
        = 
        BindingFault
 ;
syntax IExtensibilityElement
        = 
        ExtensibilityElement
 ;
syntax IDefinition
        = 
        Definition
 ;
syntax IImport
        = 
        WSDLImport
 ;
syntax Types
        = 
        ExtensibilityElement eExtensibilityElements+
 ;
syntax ITypes
        = 
        Types
 ;
syntax UnknownExtensibilityElement
        = UnknownExtensibilityAttribute
        | UnknownExtensibilityElement children+
 ;
syntax XSDSchemaExtensibilityElement
        = 
        schema: XSDSchema
 ;
syntax MessageReference
        = Input
        | Output
        | Fault
 ;
