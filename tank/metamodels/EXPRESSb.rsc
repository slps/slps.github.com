@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EXPRESSb

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax ONEOFConstraint
        = 
        ()
 ;
syntax SupertypeRule
        = 
        Core/EntityType namedSupertype Rules/SubtypeConstraint constraints+ Mof/Boolean assertsAbstract
 ;
syntax SubtypeConstraint
        = 
        Rules/Extent constrainedSubtypes+ Core/Expression equivalentRule Rules/SupertypeRule collection
 ;
syntax Extent
        = 
        Rules/SubtypeConstraint constraints+ Instances/EntityInstance content+ Instances/Population withinPopulation Rules/GlobalRule constraintRules+ Core/EntityType forType Core/ScopedId id
 ;
syntax TOTAL_OVERConstraint
        = 
        ()
 ;
syntax ANDConstraint
        = 
        ()
 ;
syntax GlobalRule
        = 
        Algorithms/Statement supportingBody Rules/Extent constrainedExtents+ Rules/NamedRule containsRules+
 ;
syntax NamedRule
        = 
        Core/Expression assertsExpression Mof/Integer position
 ;
syntax ProcedureCall
        = 
        Algorithms/Procedure invokes Expressions/ActualParameter actualParameters+
 ;
syntax SkipStatement
        = 
        ()
 ;
syntax AliasStatement
        = 
        Statements/VARExpression bindsToReference Algorithms/Statement body Statements/AliasVariable aliasVariable
 ;
syntax ControlVariable
        = 
        Core/Expression boundValue Core/Expression initialValue Core/Expression increment
 ;
syntax AliasVariable
        = 
        referent: Statements/VARExpression
 ;
syntax VARCell
        = 
        Algorithms/VARVariable refersTo Core/Identifier id
 ;
syntax NullStatement
        = 
        ()
 ;
syntax AttributeCell
        = 
        Core/ExplicitAttribute refersTo Statements/VARExpression baseEntity Core/Identifier id
 ;
syntax StatementBlock
        = 
        Algorithms/Statement bodyStatements_Statement+ Mof/Boolean delimited
 ;
syntax CaseAction
        = 
        Core/Expression labelValue+ Algorithms/Statement action Mof/Boolean isDefault
 ;
syntax MemberCell
        = 
        Core/Expression indexValue Statements/VARExpression baseAggregate
 ;
syntax RepeatStatement
        = 
        Core/Expression whileExpression Algorithms/Statement body Statements/ControlVariable controlVariable Core/Expression untilExpression
 ;
syntax GroupCell
        = 
        Statements/VARExpression baseEntity Core/SingleEntityType refersTo Core/Identifier id
 ;
syntax VariableCell
        = 
        Algorithms/Variable refersTo Core/Identifier id
 ;
syntax CaseStatement
        = 
        Statements/CaseAction cases+ Core/Expression selectionExpression
 ;
syntax IfStatement
        = 
        Core/Expression ifCondition Algorithms/Statement elseActions Algorithms/Statement thenActions
 ;
syntax EscapeStatement
        = 
        ()
 ;
syntax ReturnStatement
        = 
        returnValue: Core/Expression
 ;
syntax Assignment
        = 
        Core/Expression assignedValue Statements/VARExpression variable
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax RepeatCount
        = 
        derivation: Core/Expression
 ;
syntax EnumItemRef
        = 
        Instances/EnumerationItem refersTo Core/Identifier id
 ;
syntax Literal
        = 
        refersTo: Instances/SimpleValue
 ;
syntax BinaryIndex
        = 
        Core/Expression firstBit Core/Expression lastBit
 ;
syntax IndeterminateRef
        = 
        refersTo: Instances/Indeterminate
 ;
syntax SELFRef
        = 
        ()
 ;
syntax BinaryOperation
        = 
        Core/Expression leftOperand Core/Expression rightOperand Expressions/BinaryOperator operator
 ;
syntax AggregateInitializer
        = 
        Instances/GenericAggregate resultValue Expressions/MemberBinding bindings+
 ;
syntax StringIndex
        = 
        Core/Expression firstCode Core/Expression lastCode
 ;
syntax PartialEntityConstructor
        = 
        Instances/PartialEntityValue resultValue Core/SingleEntityType attributeGroup Expressions/AttributeBinding bindings+ Core/Identifier id
 ;
syntax Coercion
        = 
        Core/Expression operand Core/VariableType targetType
 ;
syntax ActualParameter
        = 
        Statements/ProcedureCall inProcedureCall Expressions/FunctionCall inFunctionCall Algorithms/Parameter formalParameter Statements/VARExpression actualReferent Core/Expression actualValue Mof/Integer position
 ;
syntax ParameterRef
        = 
        Algorithms/Parameter refersTo Core/Identifier id
 ;
syntax AttributeRef
        = 
        Core/Attribute refersTo Core/Identifier id
 ;
syntax AggregateIndex
        = 
        indexValue: Core/Expression
 ;
syntax GroupRef
        = 
        Core/SingleEntityType refersTo Core/Identifier id
 ;
syntax UnaryOperation
        = 
        Core/Expression unaryOperand Expressions/UnaryOperator operator
 ;
syntax UsedInRef
        = 
        inverseOf: Core/Attribute
 ;
syntax ConstantRef
        = 
        Instances/Constant refersTo Core/Identifier id
 ;
syntax QueryExpression
        = 
        Core/Expression selectCondition Expressions/QueryVariable queryVariable Core/Expression aggregateOperand
 ;
syntax QueryVariable
        = 
        ()
 ;
syntax AttributeBinding
        = 
        Core/Expression attributeValue Instances/AttributeValue toValue Core/ExplicitAttribute attribute Mof/Integer position
 ;
syntax FunctionCall
        = 
        Expressions/ActualParameter actualParameters+ Algorithms/Function invokesFunction Algorithms/FunctionResult returnsResult
 ;
syntax MemberBinding
        = 
        Expressions/RepeatCount repetition Instances/ListMember toSlot+ Core/Expression memberValue Mof/Integer position
 ;
syntax ExtentRef
        = 
        Core/NamedType refersTo Core/Identifier id
 ;
syntax VariableRef
        = 
        Algorithms/NamedVariable refersTo Core/Identifier id
 ;
syntax SingleEntityType
        = 
        Core/ExplicitAttribute declaresExplicitAttribute+ Core/Attribute declaresAttribute+ Core/EntityType declaredIn Core/PartialEntityType equivalent Core/ScopedId id
 ;
syntax AGGREGATEType
        = 
        Core/SizeConstraint upperBound Core/ParameterType memberType Algorithms/ActualStructureConstraint constraint Core/SizeConstraint lowerBound
 ;
syntax GeneralBAGType
        = 
        ()
 ;
syntax DomainRule
        = 
        position: Mof/Integer
 ;
syntax Expression
        = 
        Core/Instance evaluation Core/Scope interpretationContext Core/DataType dataType Core/ExpressText text
 ;
syntax InverseAttribute
        = 
        Core/DomainRole modelsRole Core/InvertibleAttribute explicit Mof/Boolean isUnique
 ;
syntax EnumerationType
        = 
        Instances/EnumerationItem values+ Instances/EnumerationItem declaredItems+ Core/EnumerationType extension+ Core/EnumerationType base Mof/Boolean isExtensible
 ;
syntax ArrayBound
        = 
        Core/Expression boundExpression Mof/Integer bound
 ;
syntax GeneralSETType
        = 
        ()
 ;
syntax LISTType
        = 
        ()
 ;
syntax Redeclaration
        = 
        Core/Expression derivation Core/AttributeType restrictedType Core/Redeclaration refines Core/SizeConstraint upperBound Core/SizeConstraint lowerBound Core/EntityType scope Core/Attribute originalAttribute Core/Role refinedRole Mof/Integer position Mof/Boolean isMandatory Core/ScopedId alias
 ;
syntax EntityType
        = 
        Core/Role playsRole+ Core/Redeclaration redeclarations+ Core/Attribute attributes+ Core/RangeRole playsRangeRole+ Core/SingleEntityType declares Rules/Extent extension+ Core/InvertibleAttribute invertibleAttributes+ Core/DomainRole playsDomainRole+ Core/UniqueRule uniqueRules+ Core/InvertibleAttribute usedIn+ Core/EntityType subtypeOf+ Mof/Boolean isAbstract
 ;
syntax PartialEntityType
        = 
        Core/SingleEntityType components+
 ;
syntax Schema
        = 
        Core/Remark documentation+ Core/InterfacedElement interfaces+ Core/SchemaElement schemaElements+ Core/SchemaElement interfacedElements+ Core/Identifier name Core/Identifier version
 ;
syntax InvertibleAttribute
        = 
        Core/InverseAttribute inverse+ Core/EntityType rangeType+ Core/Relationship createsRelationship Core/EntityType referencingType+ Core/RangeRole modelsRole
 ;
syntax InterfacedElement
        = 
        Core/Schema interfacingSchema Core/SchemaElement refersTo Mof/Boolean isUSE Core/ScopedId interfacedId
 ;
syntax NumericType
        = 
        ()
 ;
syntax UniqueRule
        = 
        Core/EntityType domain Core/Attribute keyComponent+ Mof/Integer position
 ;
syntax DomainRole
        = 
        Core/InverseAttribute rangeView Core/EntityType domain Core/ScopedId id
 ;
syntax GeneralLISTType
        = 
        ()
 ;
syntax BAGType
        = 
        ()
 ;
syntax RealType
        = 
        precision: Mof/Integer
 ;
syntax LogicType
        = 
        ()
 ;
syntax GenericType
        = 
        Algorithms/ActualTypeConstraint constraint Mof/Boolean isEntity
 ;
syntax StringType
        = 
        stringLengthConstraint: Core/LengthConstraint
 ;
syntax DerivedAttribute
        = 
        derivation: Core/Expression
 ;
syntax RangeRole
        = 
        Core/InvertibleAttribute domainView Core/EntityType range Core/ScopedId id
 ;
syntax Remark
        = 
        Core/Schema describesSchema+ Core/Scope appearsIn Core/NamedElement describesElement+ Mof/Boolean isTagged Mof/Boolean isTail Core/ExpressText text
 ;
syntax SizeConstraint
        = 
        bound: Mof/Integer
 ;
syntax SETType
        = 
        ()
 ;
syntax SpecializedType
        = 
        underlyingType: Core/ConcreteType
 ;
syntax GeneralARRAYType
        = 
        Core/ArrayBound hiIndex Core/ArrayBound loIndex Mof/Boolean isOptional
 ;
syntax Relationship
        = 
        Core/DomainRole domain Core/Role roles Core/InvertibleAttribute basedOn Core/RangeRole range
 ;
syntax LengthConstraint
        = 
        Mof/Integer maxLength Mof/Boolean isFixed
 ;
syntax BinaryType
        = 
        binaryLengthConstraint: Core/LengthConstraint
 ;
syntax ScopedId
        = 
        Core/Identifier localName Core/Scope definingScope
 ;
syntax SelectType
        = 
        Core/NamedType allowedTypes+ Core/SelectType extension+ Core/SelectType base Core/NamedType selectList+ Mof/Boolean isExtensible Mof/Boolean isEntity
 ;
syntax ExplicitAttribute
        = 
        isOptional: Mof/Boolean
 ;
syntax ARRAYType
        = 
        Core/ArrayBound loIndex Core/ArrayBound hiIndex Mof/Boolean isOptional
 ;
syntax ActualTypeConstraint
        = 
        Core/GenericType matchingType Algorithms/ActualDataType requiredType Core/Identifier label
 ;
syntax FunctionResult
        = 
        ()
 ;
syntax Function
        = 
        result: Algorithms/FunctionResult
 ;
syntax InParameter
        = 
        variable: Algorithms/InVariable
 ;
syntax LocalVariable
        = 
        initialValue: Core/Expression
 ;
syntax ActualStructure
        = 
        ()
 ;
syntax ActualGenericType
        = 
        Algorithms/ActualDataType refersTo Mof/Boolean isEntity Core/Identifier label
 ;
syntax Statement
        = 
        Statements/StatementBlock inBlock Statements/SkipStatement bodyStatementsSkipStatement+ Statements/EscapeStatement bodyStatementsEscapeStatement+ Statements/RepeatStatement controlledBy Algorithms/Algorithm implements Core/ExpressText text
 ;
syntax InVariable
        = 
        source: Algorithms/InParameter
 ;
syntax Procedure
        = 
        ()
 ;
syntax ActualARRAYType
        = 
        Core/ArrayBound hiIndex Core/ArrayBound loIndex Mof/Boolean isOptional
 ;
syntax ActualSETType
        = 
        ()
 ;
syntax ActualAGGREGATEType
        = 
        Core/SizeConstraint upperBound Algorithms/ActualStructure refersTo Core/VariableType memberType Core/SizeConstraint lowerBound Core/Identifier label
 ;
syntax ActualStructureConstraint
        = 
        Core/AGGREGATEType matchingStructure Algorithms/ActualStructure requiredStructure Core/Identifier label
 ;
syntax ActualLISTType
        = 
        ()
 ;
syntax VARParameter
        = 
        ()
 ;
syntax ActualDataType
        = 
        ()
 ;
syntax ActualBAGType
        = 
        ()
 ;
syntax AttributeValue
        = 
        Core/Instance actualValue Core/ExplicitAttribute attribute
 ;
syntax ARRAYValue
        = 
        Instances/ArrayMember memberSlot+
 ;
syntax RoleName
        = 
        Core/Attribute refersTo Core/ScopedId represents
 ;
syntax EntityInstance
        = 
        Instances/EntityValue state Core/EntityType instanceOf+ Instances/EntityName id
 ;
syntax IntegerValue
        = 
        ()
 ;
syntax Constant
        = 
        Core/Expression valueExpression Core/Instance actualValue Core/InstantiableType dataType
 ;
syntax LogicalValue
        = 
        ()
 ;
syntax ListMember
        = 
        Core/Instance memberValue Mof/Integer position
 ;
syntax BagMember
        = 
        Core/Instance memberValue Mof/Integer count
 ;
syntax SingleEntityValue
        = 
        Instances/PartialEntityValue equivalent Core/SingleEntityType ofType Instances/AttributeValue properties+
 ;
syntax Indeterminate
        = 
        ()
 ;
syntax SingleLeafInstance
        = 
        characterizingType: Core/EntityType
 ;
syntax GenericAggregate
        = 
        ()
 ;
syntax BinaryValue
        = 
        ()
 ;
syntax SpecializedValue
        = 
        fundamentalValue: Instances/ConcreteValue
 ;
syntax BAGValue
        = 
        Instances/BagMember memberSlot+
 ;
syntax EnumerationItem
        = 
        Core/EnumerationType declaredIn Mof/Integer position
 ;
syntax EntityValue
        = 
        Core/EntityType correspondsTo+ Instances/EntityInstance describes+
 ;
syntax SETValue
        = 
        Core/Instance memberValue+
 ;
syntax ArrayMember
        = 
        Core/Instance memberValue Mof/Integer index
 ;
syntax Population
        = 
        Instances/EntityInstance compositionEntityInstance+ Core/Instance compositionInstance+ Core/Schema governingSchema+
 ;
syntax RealValue
        = 
        ()
 ;
syntax BooleanValue
        = 
        ()
 ;
syntax LISTValue
        = 
        Instances/ListMember memberSlot+
 ;
syntax StringValue
        = 
        ()
 ;
syntax TypeName
        = 
        Core/NamedType refersTo Core/ScopedId represents
 ;
syntax PartialEntityValue
        = 
        Instances/SingleEntityValue components+
 ;
syntax NumberValue
        = 
        ()
 ;
syntax MultiLeafInstance
        = 
        ()
 ;
