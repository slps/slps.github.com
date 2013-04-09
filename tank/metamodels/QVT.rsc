@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QVT

syntax TemplateExp
        = 
        ()
 ;
syntax ObjectTemplateExp
        = 
        ANY part+ ANY referredClass
 ;
syntax CollectionTemplateExp
        = 
        ANY part+ ANY kind ANY referredCollectionType ANY match
 ;
syntax PropertyTemplateItem
        = 
        ANY objContainer ANY value ANY referredProperty
 ;
syntax ImperativeIterateExp
        = 
        target: ANY
 ;
syntax AssignExp
        = 
        ANY value+ ANY left ANY defaultValue ANY isReset
 ;
syntax BlockExp
        = 
        ANY body+
 ;
syntax SwitchExp
        = 
        ANY alternativePart+ ANY elsePart
 ;
syntax VariableInitExp
        = 
        ANY referredVariable ANY withResult
 ;
syntax WhileExp
        = 
        ANY condition ANY body
 ;
syntax ComputeExp
        = 
        ANY returnedElement ANY body
 ;
syntax AltExp
        = 
        ANY condition ANY body
 ;
syntax UnlinkExp
        = 
        ANY target ANY item
 ;
syntax ReturnExp
        = 
        value: ANY
 ;
syntax BreakExp
        = 
        
 ;
syntax TryExp
        = 
        ANY tryBody ANY exception+ ANY exceptBody
 ;
syntax RaiseExp
        = 
        exception: ANY
 ;
syntax ContinueExp
        = 
        
 ;
syntax ForExp
        = 
        ANY condition
 ;
syntax TupleExp
        = 
        ANY element+
 ;
syntax Typedef
        = 
        ANY base ANY condition
 ;
syntax InstantiationExp
        = 
        ANY instantiatedClass ANY extent ANY argument+
 ;
syntax DictionaryType
        = 
        keyType: ANY
 ;
syntax DictLiteralExp
        = 
        ANY part+
 ;
syntax DictLiteralPart
        = 
        ANY key ANY value
 ;
syntax TemplateParameterType
        = 
        specification: ANY
 ;
syntax LogExp
        = 
        ANY text ANY level ANY condition ANY element
 ;
syntax AssertExp
        = 
        ANY severity ANY log ANY assertion
 ;
syntax SeverityKind
        = error: ()
        | fatal: ()
        | warning: ()
 ;
syntax ImperativeLoopExp
        = 
        ()
 ;
syntax CollectorExp
        = 
        target: ANY
 ;
syntax ImperativeExpression
        = 
        ()
 ;
syntax UnpackExp
        = 
        ANY variable+
 ;
syntax AnonymousTupleType
        = 
        ANY elementType+
 ;
syntax AnonymousTupleLiteralExp
        = 
        ANY part+
 ;
syntax AnonymousTupleLiteralPart
        = 
        ANY value+
 ;
syntax ListType
        = 
        ANY elementType
 ;
syntax Class
        = 
        ANY ownedAttribute+ ANY ownedOperation+ ANY superClass+ ANY isAbstract
 ;
syntax DataType
        = 
        ()
 ;
syntax Element
        = 
        ()
 ;
syntax Tag
        = 
        ANY element+ ANY transformation ANY owner ANY value ANY name
 ;
syntax Enumeration
        = 
        ANY ownedLiteral+
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Extent
        = 
        ()
 ;
syntax Object
        = 
        ()
 ;
syntax Operation
        = 
        ANY class ANY ownedParameter+ ANY raisedException+
 ;
syntax MultiplicityElement
        = 
        ()
 ;
syntax Package
        = 
        ANY ownedType+ ANY nestedPackage+ ANY uri
 ;
syntax Type
        = 
        ()
 ;
syntax Parameter
        = 
        operation: ANY
 ;
syntax EnumerationLiteral
        = 
        enumeration: ANY
 ;
syntax Property
        = 
        ANY Class ANY opposite ANY module ANY isReadOnly ANY isDerived ANY isComposite ANY isId ANY default
 ;
syntax TypedElement
        = 
        ()
 ;
syntax PrimitiveType
        = 
        
 ;
syntax URIExtent
        = 
        ()
 ;
syntax Comment
        = 
        ANY annotatedElement+
 ;
syntax MappingBody
        = 
        ANY initSection+ ANY endSection+
 ;
syntax Helper
        = 
        isQuery: ANY
 ;
syntax ResolveExp
        = 
        ANY condition ANY one ANY isInverse ANY isDeferred
 ;
syntax ResolveInExp
        = 
        inMapping: ANY
 ;
syntax OperationalTransformation
        = 
        ANY intermediateClass+ ANY refined ANY intermediateProperty+ ANY modelParameter+ ANY entry ANY relation+
 ;
syntax MappingParameter
        = 
        ANY refinedDomain ANY extent
 ;
syntax MappingOperation
        = 
        ANY disjunct+ ANY refinedRelation ANY merged+ ANY inherited+ ANY when+
 ;
syntax MappingCallExp
        = 
        isStrict: ANY
 ;
syntax Constructor
        = 
        ()
 ;
syntax ContextualProperty
        = 
        ANY context ANY overridden
 ;
syntax EntryOperation
        = 
        ()
 ;
syntax ImperativeCallExp
        = 
        isVirtual: ANY
 ;
syntax ImperativeOperation
        = 
        ANY context ANY result+ ANY overridden ANY body ANY isBlackbox
 ;
syntax DirectionKind
        = in: ()
        | inout: ()
        | out: ()
 ;
syntax Library
        = 
        ()
 ;
syntax ModelParameter
        = 
        ()
 ;
syntax ModelType
        = 
        ANY metamodel+ ANY additionalCondition+ ANY conformanceKind
 ;
syntax Module
        = 
        ANY ownedTag+ ANY configProperty+ ANY moduleImport+ ANY usedModelType+ ANY isBlackbox
 ;
syntax ModuleImport
        = 
        ANY binding+ ANY module ANY importedModule ANY kind
 ;
syntax ImportKind
        = extension: ()
        | access: ()
 ;
syntax VarParameter
        = 
        ANY ctxOwner ANY resOwner ANY kind
 ;
syntax OperationBody
        = 
        ANY operation ANY content+
 ;
syntax ConstructorBody
        = 
        ()
 ;
syntax ObjectExp
        = 
        ANY referredObject ANY body
 ;
syntax Area
        = 
        ()
 ;
syntax Assignment
        = 
        ANY bottomPattern ANY slotExpression ANY value ANY targetProperty ANY isDefault
 ;
syntax BottomPattern
        = 
        ANY area ANY assignment+ ANY realizedVariable+ ANY enforcementOperation+
 ;
syntax GuardPattern
        = 
        area: ANY
 ;
syntax Mapping
        = 
        ANY specification+ ANY local+ ANY context
 ;
syntax RealizedVariable
        = 
        ()
 ;
syntax CoreDomain
        = 
        ()
 ;
syntax CorePattern
        = 
        ()
 ;
syntax EnforcementOperation
        = 
        ANY enforcementMode ANY bottomPattern ANY operationCallExp
 ;
syntax EnforcementMode
        = Deletion: ()
        | Creation: ()
 ;
syntax Domain
        = 
        ANY isCheckable ANY isEnforceable ANY rule ANY typedModel
 ;
syntax Transformation
        = 
        ANY ownedTag+ ANY modelParameter+ ANY rule+ ANY extends
 ;
syntax TypedModel
        = 
        ANY transformation ANY usedPackage+ ANY dependsOn+
 ;
syntax Rule
        = 
        ANY domain+ ANY transformation ANY overrides
 ;
syntax Pattern
        = 
        ANY predicate+ ANY bindsTo+ ANY whenOwner ANY whereOwner
 ;
syntax Predicate
        = 
        ANY conditionExpression ANY pattern
 ;
syntax Function
        = 
        queryExpression: ANY
 ;
syntax FunctionParameter
        = 
        ()
 ;
syntax RelationalTransformation
        = 
        ANY ownedKey+
 ;
syntax Relation
        = 
        ANY isTopLevel ANY variable+ ANY operationalImpl+ ANY where ANY when
 ;
syntax RelationDomain
        = 
        ANY pattern ANY rootVariable
 ;
syntax DomainPattern
        = 
        templateExpression: ANY
 ;
syntax RelationImplementation
        = 
        ANY relation ANY impl ANY inDirectionOf
 ;
syntax Key
        = 
        ANY identifies ANY part+ ANY transformation
 ;
syntax BooleanLiteralExp
        = 
        booleanSymbol: ANY
 ;
syntax CallExp
        = 
        ()
 ;
syntax CollectionKind
        = OrderedSet: ()
        | Set: ()
        | Bag: ()
        | Sequence: ()
 ;
syntax OclExpression
        = 
        ()
 ;
syntax UnlimitedNaturalExp
        = 
        symbol: ANY
 ;
syntax IfExp
        = 
        ANY condition ANY thenExpression ANY elseExpression
 ;
syntax LetExp
        = 
        ANY in+ ANY variable
 ;
syntax Variable
        = 
        ANY initExpression ANY LetExp ANY computeOwner ANY bindParameter
 ;
syntax PropertyCallExp
        = 
        referredProperty: ANY
 ;
syntax VariableExp
        = 
        referredVariable: ANY
 ;
syntax TypeExp
        = 
        referredType: ANY
 ;
syntax LoopExp
        = 
        ()
 ;
syntax IteratorExp
        = 
        ANY body ANY iterator+
 ;
syntax StringLiteralExp
        = 
        stringSymbol: ANY
 ;
syntax IntegerLiteralExp
        = 
        integerSymbol: ANY
 ;
syntax OperationCallExp
        = 
        ANY argument+ ANY referredOperation
 ;
syntax RealLiteralExp
        = 
        realSymbol: ANY
 ;
syntax LiteralExp
        = 
        ()
 ;
syntax IterateExp
        = 
        result: ANY
 ;
syntax PrimitiveLiteralExp
        = 
        ()
 ;
syntax NumericLiteralExp
        = 
        ()
 ;
syntax CollectionLiteralExp
        = 
        ANY kind ANY part+
 ;
syntax CollectionLiteralPart
        = 
        ()
 ;
syntax CollectionItem
        = 
        item: ANY
 ;
syntax CollectionRange
        = 
        ANY first ANY last
 ;
syntax TupleLiteralExp
        = 
        ANY part+
 ;
syntax NullLiteralExp
        = 
        
 ;
syntax ExpressionInOcl
        = 
        ANY bodyExpression ANY context ANY resultVariable ANY parameterVariable
 ;
syntax OpaqueExpression
        = 
        ()
 ;
syntax InvalidLiteralExp
        = 
        
 ;
syntax FeaturePropertyCall
        = 
        ()
 ;
syntax TupleLiteralPart
        = 
        ANY TupleLiteralExp ANY attribute
 ;
syntax BagType
        = 
        ANY elementType
 ;
syntax CollectionType
        = 
        ()
 ;
syntax EnumLiteralExp
        = 
        referredEnumLiteral: ANY
 ;
syntax InvalidType
        = 
        ANY package
 ;
syntax OrderedSetType
        = 
        ANY elementType
 ;
syntax SequenceType
        = 
        ANY elementType
 ;
syntax SetType
        = 
        ANY elementType
 ;
syntax TupleType
        = 
        ()
 ;
syntax VoidType
        = 
        ANY package
 ;
syntax AnyType
        = 
        ()
 ;
