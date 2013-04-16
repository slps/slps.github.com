@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QVT

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax TemplateExp
        = ObjectTemplateExp
        | CollectionTemplateExp
 ;
syntax ObjectTemplateExp
        = 
        PropertyTemplateItem part+ Class referredClass
 ;
syntax CollectionTemplateExp
        = 
        OclExpression part+ CollectionKind kind CollectionType referredCollectionType OclExpression match
 ;
syntax PropertyTemplateItem
        = 
        ObjectTemplateExp objContainer OclExpression value Property referredProperty
 ;
syntax ImperativeIterateExp
        = 
        target: Variable
 ;
syntax AssignExp
        = 
        OclExpression value+ OclExpression left OclExpression defaultValue Boolean isReset
 ;
syntax BlockExp
        = 
        OclExpression body+
 ;
syntax SwitchExp
        = 
        AltExp alternativePart+ OclExpression elsePart
 ;
syntax VariableInitExp
        = 
        Variable referredVariable Boolean withResult
 ;
syntax WhileExp
        = 
        OclExpression condition OclExpression body
 ;
syntax ComputeExp
        = 
        Variable returnedElement OclExpression body
 ;
syntax AltExp
        = 
        OclExpression condition OclExpression body
 ;
syntax UnlinkExp
        = 
        OclExpression target OclExpression item
 ;
syntax ReturnExp
        = 
        value: OclExpression
 ;
syntax BreakExp
        = 
        ()
 ;
syntax TryExp
        = 
        OclExpression tryBody Type exception+ OclExpression exceptBody
 ;
syntax RaiseExp
        = 
        exception: Type
 ;
syntax ContinueExp
        = 
        ()
 ;
syntax ForExp
        = 
        condition: OclExpression
 ;
syntax TupleExp
        = 
        OclExpression element+
 ;
syntax Typedef
        = 
        Type base OclExpression condition
 ;
syntax InstantiationExp
        = ObjectExp
        | Class instantiatedClass Variable extent OclExpression argument+
 ;
syntax DictionaryType
        = 
        keyType: Type
 ;
syntax DictLiteralExp
        = 
        DictLiteralPart part+
 ;
syntax DictLiteralPart
        = 
        OclExpression key OclExpression value
 ;
syntax TemplateParameterType
        = 
        specification: String
 ;
syntax LogExp
        = 
        String text Integer level OclExpression condition Element element
 ;
syntax AssertExp
        = 
        SeverityKind severity LogExp log OclExpression assertion
 ;
syntax SeverityKind
        = error: ()
        | fatal: ()
        | warning: ()
 ;
syntax ImperativeLoopExp
        = ImperativeIterateExp
        | ForExp
        | CollectorExp
 ;
syntax CollectorExp
        = 
        target: Variable
 ;
syntax ImperativeExpression
        = AssignExp
        | BlockExp
        | VariableInitExp
        | WhileExp
        | ComputeExp
        | AltExp
        | UnlinkExp
        | ReturnExp
        | BreakExp
        | TryExp
        | RaiseExp
        | ContinueExp
        | TupleExp
        | InstantiationExp
        | LogExp
        | AssertExp
        | UnpackExp
        | SwitchExp
        | ImperativeLoopExp
 ;
syntax UnpackExp
        = 
        Variable variable+
 ;
syntax AnonymousTupleType
        = 
        Type elementType+
 ;
syntax AnonymousTupleLiteralExp
        = 
        AnonymousTupleLiteralPart part+
 ;
syntax AnonymousTupleLiteralPart
        = 
        OclExpression value+
 ;
syntax ListType
        = 
        elementType: Type
 ;
syntax Class
        = Typedef
        | AnonymousTupleType
        | ModelType
        | Module
        | Transformation
        | TupleType
        | AnyType
        | Property ownedAttribute+ Operation ownedOperation+ Class superClass+ Boolean isAbstract
 ;
syntax DataType
        = Enumeration
        | PrimitiveType
        | CollectionType
        | TupleType
 ;
syntax Element
        = PropertyTemplateItem
        | DictLiteralPart
        | AnonymousTupleLiteralPart
        | Tag
        | NamedElement
        | Comment
        | ModuleImport
        | OperationBody
        | Pattern
        | Predicate
        | RelationImplementation
        | Key
 ;
syntax Tag
        = 
        Element element+ Transformation transformation Module owner String value String name
 ;
syntax Enumeration
        = 
        EnumerationLiteral ownedLiteral+
 ;
syntax NamedElement
        = Package
        | Type
        | EnumerationLiteral
        | TypedElement
        | Domain
        | TypedModel
        | Rule
 ;
syntax Extent
        = 
        URIExtent
 ;
syntax Object
        = Element
        | Extent
 ;
syntax Operation
        = ImperativeOperation
        | Function
        | Class class Parameter ownedParameter+ Type raisedException+
 ;
syntax MultiplicityElement
        = Operation
        | Parameter
        | Property
 ;
syntax Package
        = Module
        | Transformation
        | Type ownedType+ Package nestedPackage+ String uri
 ;
syntax Type
        = TemplateParameterType
        | Class
        | DataType
        | InvalidType
        | VoidType
        | AnyType
 ;
syntax Parameter
        = VarParameter
        | FunctionParameter
        | operation: Operation
 ;
syntax EnumerationLiteral
        = 
        enumeration: Enumeration
 ;
syntax Property
        = ContextualProperty
        | Class Class Property opposite Module module Boolean isReadOnly Boolean isDerived Boolean isComposite Boolean isId String default
 ;
syntax TypedElement
        = OclExpression
        | Variable
        | CollectionLiteralPart
        | TupleLiteralPart
        | Operation
        | Parameter
        | Property
 ;
syntax PrimitiveType
        = 
        ()
 ;
syntax URIExtent
        = ModelType
        | ()
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Comment
        = 
        NamedElement annotatedElement+
 ;
syntax MappingBody
        = 
        OclExpression initSection+ OclExpression endSection+
 ;
syntax Helper
        = 
        isQuery: Boolean
 ;
syntax ResolveExp
        = ResolveInExp
        | OclExpression condition Boolean one Boolean isInverse Boolean isDeferred
 ;
syntax ResolveInExp
        = 
        inMapping: MappingOperation
 ;
syntax OperationalTransformation
        = 
        Class intermediateClass+ Transformation refined Property intermediateProperty+ ModelParameter modelParameter+ EntryOperation entry Relation relation+
 ;
syntax MappingParameter
        = 
        RelationDomain refinedDomain ModelParameter extent
 ;
syntax MappingOperation
        = 
        MappingOperation disjunct+ Relation refinedRelation MappingOperation merged+ MappingOperation inherited+ OclExpression when+
 ;
syntax MappingCallExp
        = 
        isStrict: Boolean
 ;
syntax Constructor
        = 
        VarParameter context VarParameter result+ ImperativeOperation overridden OperationBody body Boolean isBlackbox
 ;
syntax ContextualProperty
        = 
        Class context Property overridden
 ;
syntax EntryOperation
        = 
        VarParameter context VarParameter result+ ImperativeOperation overridden OperationBody body Boolean isBlackbox
 ;
syntax ImperativeCallExp
        = MappingCallExp
        | isVirtual: Boolean
 ;
syntax ImperativeOperation
        = Helper
        | Constructor
        | EntryOperation
        | MappingOperation
        | VarParameter context VarParameter result+ ImperativeOperation overridden OperationBody body Boolean isBlackbox
 ;
syntax DirectionKind
        = in: ()
        | inout: ()
        | out: ()
 ;
syntax Library
        = 
        Tag ownedTag+ Property configProperty+ ModuleImport moduleImport+ ModelType usedModelType+ Boolean isBlackbox
 ;
syntax ModelParameter
        = 
        ImperativeOperation ctxOwner ImperativeOperation resOwner DirectionKind kind
 ;
syntax ModelType
        = 
        Package metamodel+ OclExpression additionalCondition+ String conformanceKind
 ;
syntax Module
        = OperationalTransformation
        | Library
        | Tag ownedTag+ Property configProperty+ ModuleImport moduleImport+ ModelType usedModelType+ Boolean isBlackbox
 ;
syntax ModuleImport
        = 
        ModelType binding+ Module module Module importedModule ImportKind kind
 ;
syntax ImportKind
        = extension: ()
        | access: ()
 ;
syntax VarParameter
        = MappingParameter
        | ModelParameter
        | ImperativeOperation ctxOwner ImperativeOperation resOwner DirectionKind kind
 ;
syntax OperationBody
        = MappingBody
        | ConstructorBody
        | ImperativeOperation operation OclExpression content+
 ;
syntax ConstructorBody
        = 
        ImperativeOperation operation OclExpression content+
 ;
syntax ObjectExp
        = 
        Variable referredObject ConstructorBody body
 ;
syntax Area
        = Mapping
        | CoreDomain
 ;
syntax Assignment
        = 
        BottomPattern bottomPattern OclExpression slotExpression OclExpression value Property targetProperty Boolean isDefault
 ;
syntax BottomPattern
        = 
        Area area Assignment assignment+ RealizedVariable realizedVariable+ EnforcementOperation enforcementOperation+
 ;
syntax GuardPattern
        = 
        area: Area
 ;
syntax Mapping
        = 
        Mapping specification+ Mapping local+ Mapping context
 ;
syntax RealizedVariable
        = 
        OclExpression initExpression LetExp LetExp ComputeExp computeOwner Parameter bindParameter
 ;
syntax CoreDomain
        = 
        Boolean isCheckable Boolean isEnforceable Rule rule TypedModel typedModel GuardPattern guardPattern BottomPattern bottomPattern
 ;
syntax CorePattern
        = BottomPattern
        | GuardPattern
 ;
syntax EnforcementOperation
        = 
        EnforcementMode enforcementMode BottomPattern bottomPattern OperationCallExp operationCallExp
 ;
syntax EnforcementMode
        = Deletion: ()
        | Creation: ()
 ;
syntax Domain
        = RelationDomain
        | CoreDomain
        | Boolean isCheckable Boolean isEnforceable Rule rule TypedModel typedModel
 ;
syntax Transformation
        = RelationalTransformation
        | Tag ownedTag+ TypedModel modelParameter+ Rule rule+ Transformation extends
 ;
syntax TypedModel
        = 
        Transformation transformation Package usedPackage+ TypedModel dependsOn+
 ;
syntax Rule
        = Relation
        | Mapping
        | Domain domain+ Transformation transformation Rule overrides
 ;
syntax Pattern
        = CorePattern
        | DomainPattern
        | Predicate predicate+ Variable bindsTo+ Relation whenOwner Relation whereOwner
 ;
syntax Predicate
        = 
        OclExpression conditionExpression Pattern pattern
 ;
syntax Function
        = 
        queryExpression: OclExpression
 ;
syntax FunctionParameter
        = 
        Operation operation OclExpression initExpression LetExp LetExp ComputeExp computeOwner Parameter bindParameter
 ;
syntax RelationalTransformation
        = 
        Key ownedKey+
 ;
syntax Relation
        = 
        Boolean isTopLevel Variable variable+ RelationImplementation operationalImpl+ Pattern where Pattern when
 ;
syntax RelationDomain
        = 
        DomainPattern pattern Variable rootVariable
 ;
syntax DomainPattern
        = 
        templateExpression: TemplateExp
 ;
syntax RelationImplementation
        = 
        Relation relation Operation impl TypedModel inDirectionOf
 ;
syntax Key
        = 
        Class identifies Property part+ RelationalTransformation transformation
 ;
syntax BooleanLiteralExp
        = 
        booleanSymbol: Boolean
 ;
syntax CallExp
        = ResolveExp
        | FeaturePropertyCall
        | SwitchExp
        | LoopExp
 ;
syntax CollectionKind
        = OrderedSet: ()
        | Set: ()
        | Bag: ()
        | Sequence: ()
 ;
syntax OclExpression
        = ImperativeExpression
        | CallExp
        | IfExp
        | LetExp
        | VariableExp
        | TypeExp
        | LiteralExp
        | LoopExp
 ;
syntax UnlimitedNaturalExp
        = 
        symbol: UnlimitedNatural
 ;
syntax IfExp
        = 
        OclExpression condition OclExpression thenExpression OclExpression elseExpression
 ;
syntax LetExp
        = 
        OclExpression in+ Variable variable
 ;
syntax Variable
        = RealizedVariable
        | VarParameter
        | FunctionParameter
        | OclExpression initExpression LetExp LetExp ComputeExp computeOwner Parameter bindParameter
 ;
syntax PropertyCallExp
        = 
        referredProperty: Property
 ;
syntax VariableExp
        = 
        referredVariable: Variable
 ;
syntax TypeExp
        = 
        referredType: Type
 ;
syntax LoopExp
        = IteratorExp
        | IterateExp
        | ImperativeLoopExp
 ;
syntax IteratorExp
        = 
        OclExpression body Variable iterator+
 ;
syntax StringLiteralExp
        = 
        stringSymbol: String
 ;
syntax IntegerLiteralExp
        = 
        integerSymbol: Integer
 ;
syntax OperationCallExp
        = ImperativeCallExp
        | OclExpression argument+ Operation referredOperation
 ;
syntax RealLiteralExp
        = 
        realSymbol: Real
 ;
syntax LiteralExp
        = TemplateExp
        | DictLiteralExp
        | AnonymousTupleLiteralExp
        | PrimitiveLiteralExp
        | CollectionLiteralExp
        | TupleLiteralExp
        | NullLiteralExp
        | InvalidLiteralExp
        | EnumLiteralExp
 ;
syntax IterateExp
        = 
        result: Variable
 ;
syntax PrimitiveLiteralExp
        = BooleanLiteralExp
        | StringLiteralExp
        | NumericLiteralExp
 ;
syntax NumericLiteralExp
        = UnlimitedNaturalExp
        | IntegerLiteralExp
        | RealLiteralExp
 ;
syntax CollectionLiteralExp
        = 
        CollectionKind kind CollectionLiteralPart part+
 ;
syntax CollectionLiteralPart
        = CollectionItem
        | CollectionRange
 ;
syntax CollectionItem
        = 
        item: OclExpression
 ;
syntax CollectionRange
        = 
        OclExpression first OclExpression last
 ;
syntax TupleLiteralExp
        = 
        TupleLiteralPart part+
 ;
syntax NullLiteralExp
        = 
        ()
 ;
syntax ExpressionInOcl
        = 
        OclExpression bodyExpression Variable context Variable resultVariable Variable parameterVariable
 ;
syntax OpaqueExpression
        = 
        ExpressionInOcl
 ;
syntax InvalidLiteralExp
        = 
        ()
 ;
syntax FeaturePropertyCall
        = PropertyCallExp
        | OperationCallExp
 ;
syntax TupleLiteralPart
        = 
        TupleLiteralExp TupleLiteralExp Property attribute
 ;
syntax BagType
        = 
        elementType: Type
 ;
syntax CollectionType
        = DictionaryType
        | ListType
        | BagType
        | OrderedSetType
        | SequenceType
        | SetType
 ;
syntax EnumLiteralExp
        = 
        referredEnumLiteral: EnumerationLiteral
 ;
syntax InvalidType
        = 
        package: Package
 ;
syntax OrderedSetType
        = 
        elementType: Type
 ;
syntax SequenceType
        = 
        elementType: Type
 ;
syntax SetType
        = 
        elementType: Type
 ;
syntax TupleType
        = 
        Property ownedAttribute+ Operation ownedOperation+ Class superClass+ Boolean isAbstract
 ;
syntax VoidType
        = 
        package: Package
 ;
syntax AnyType
        = 
        Property ownedAttribute+ Operation ownedOperation+ Class superClass+ Boolean isAbstract Package package
 ;
