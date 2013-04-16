@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ATL

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax LocatedElement
        = Unit
        | ModuleElement
        | InPattern
        | OutPattern
        | Binding
        | LibraryRef
        | ActionBlock
        | Statement
        | OclExpression
        | MapElement
        | VariableDeclaration
        | TupleTypeAttribute
        | OclFeatureDefinition
        | OclContextDefinition
        | OclFeature
        | OclModel
 ;
syntax Unit
        = Library
        | Query
        | Module
        | LibraryRef libraries+ String name
 ;
syntax Library
        = 
        Helper helpers+
 ;
syntax Query
        = 
        OclExpression body Helper helpers+
 ;
syntax Module
        = 
        Boolean isRefining OclModel inModels+ OclModel outModels+ ModuleElement elements+
 ;
syntax ModuleElement
        = Helper
        | Rule
 ;
syntax Helper
        = 
        Query query Library library OclFeatureDefinition definition
 ;
syntax Rule
        = MatchedRule
        | CalledRule
 ;
syntax MatchedRule
        = LazyMatchedRule
        | InPattern inPattern MatchedRule children+ MatchedRule superRule Boolean isAbstract Boolean isRefining Boolean isNoDefault
 ;
syntax LazyMatchedRule
        = 
        isUnique: Boolean
 ;
syntax CalledRule
        = 
        Parameter parameters+ Boolean isEntrypoint Boolean isEndpoint
 ;
syntax InPattern
        = 
        InPatternElement elements+ MatchedRule rule OclExpression filter
 ;
syntax OutPattern
        = 
        Rule rule OutPatternElement elements+
 ;
syntax PatternElement
        = InPatternElement
        | OutPatternElement
 ;
syntax InPatternElement
        = 
        SimpleInPatternElement
 ;
syntax SimpleInPatternElement
        = 
        OutPatternElement mapsTo InPattern inPattern OclModel models+
 ;
syntax OutPatternElement
        = SimpleOutPatternElement
        | ForEachOutPatternElement
 ;
syntax SimpleOutPatternElement
        = 
        OclExpression reverseBindings+
 ;
syntax ForEachOutPatternElement
        = 
        OclExpression collection Iterator iterator
 ;
syntax Binding
        = 
        OclExpression value OutPatternElement outPatternElement String propertyName Boolean isAssignment
 ;
syntax RuleVariableDeclaration
        = 
        rule: Rule
 ;
syntax LibraryRef
        = 
        Unit unit String name
 ;
syntax ActionBlock
        = 
        Rule rule Statement statements+
 ;
syntax Statement
        = ExpressionStat
        | BindingStat
        | IfStat
        | ForStat
 ;
syntax ExpressionStat
        = 
        expression: OclExpression
 ;
syntax BindingStat
        = 
        OclExpression source String propertyName Boolean isAssignment OclExpression value
 ;
syntax IfStat
        = 
        OclExpression condition Statement thenStatements+ Statement elseStatements+
 ;
syntax ForStat
        = 
        Iterator iterator OclExpression collection Statement statements+
 ;
syntax OclExpression
        = VariableExp
        | SuperExp
        | PrimitiveExp
        | CollectionExp
        | TupleExp
        | MapExp
        | EnumLiteralExp
        | OclUndefinedExp
        | PropertyCallExp
        | LetExp
        | IfExp
        | OclType
 ;
syntax VariableExp
        = 
        referredVariable: VariableDeclaration
 ;
syntax SuperExp
        = 
        OclType type IfExp ifExp3 PropertyCallExp appliedProperty CollectionExp collection LetExp letExp LoopExp loopExp OperationCallExp parentOperation VariableDeclaration initializedVariable IfExp ifExp2 Operation owningOperation IfExp ifExp1 Attribute owningAttribute
 ;
syntax PrimitiveExp
        = StringExp
        | BooleanExp
        | NumericExp
 ;
syntax StringExp
        = 
        stringSymbol: String
 ;
syntax BooleanExp
        = 
        booleanSymbol: Boolean
 ;
syntax NumericExp
        = RealExp
        | IntegerExp
 ;
syntax RealExp
        = 
        realSymbol: Double
 ;
syntax IntegerExp
        = 
        integerSymbol: Integer
 ;
syntax CollectionExp
        = BagExp
        | OrderedSetExp
        | SequenceExp
        | SetExp
 ;
syntax BagExp
        = 
        OclExpression elements+
 ;
syntax OrderedSetExp
        = 
        OclExpression elements+
 ;
syntax SequenceExp
        = 
        OclExpression elements+
 ;
syntax SetExp
        = 
        OclExpression elements+
 ;
syntax TupleExp
        = 
        TuplePart tuplePart+
 ;
syntax TuplePart
        = 
        tuple: TupleExp
 ;
syntax MapExp
        = 
        MapElement elements+
 ;
syntax MapElement
        = 
        MapExp map OclExpression key OclExpression value
 ;
syntax EnumLiteralExp
        = 
        name: String
 ;
syntax OclUndefinedExp
        = 
        OclType type IfExp ifExp3 PropertyCallExp appliedProperty CollectionExp collection LetExp letExp LoopExp loopExp OperationCallExp parentOperation VariableDeclaration initializedVariable IfExp ifExp2 Operation owningOperation IfExp ifExp1 Attribute owningAttribute
 ;
syntax PropertyCallExp
        = NavigationOrAttributeCallExp
        | OperationCallExp
        | LoopExp
 ;
syntax NavigationOrAttributeCallExp
        = 
        name: String
 ;
syntax OperationCallExp
        = OperatorCallExp
        | CollectionOperationCallExp
        | OclExpression arguments+ String operationName
 ;
syntax OperatorCallExp
        = 
        OclExpression arguments+ String operationName
 ;
syntax CollectionOperationCallExp
        = 
        OclExpression arguments+ String operationName
 ;
syntax LoopExp
        = IterateExp
        | IteratorExp
 ;
syntax IterateExp
        = 
        result: VariableDeclaration
 ;
syntax IteratorExp
        = 
        name: String
 ;
syntax LetExp
        = 
        VariableDeclaration variable OclExpression in_
 ;
syntax IfExp
        = 
        OclExpression thenExpression OclExpression condition OclExpression elseExpression
 ;
syntax VariableDeclaration
        = PatternElement
        | RuleVariableDeclaration
        | TuplePart
        | Iterator
        | Parameter
        | String id String varName OclType type OclExpression initExpression LetExp letExp IterateExp baseExp VariableExp variableExp+
 ;
syntax Iterator
        = 
        loopExpr: LoopExp
 ;
syntax Parameter
        = 
        operation: Operation
 ;
syntax CollectionType
        = BagType
        | OrderedSetType
        | SequenceType
        | SetType
        | elementType: OclType
 ;
syntax OclType
        = CollectionType
        | Primitive
        | OclAnyType
        | TupleType
        | OclModelElement
        | MapType
        | String name OclContextDefinition definitions OclExpression oclExpression Operation operation MapType mapType2 Attribute attribute MapType mapType CollectionType collectionTypes TupleTypeAttribute tupleTypeAttribute VariableDeclaration variableDeclaration
 ;
syntax Primitive
        = StringType
        | BooleanType
        | NumericType
 ;
syntax StringType
        = 
        ()
 ;
syntax BooleanType
        = 
        ()
 ;
syntax NumericType
        = IntegerType
        | RealType
 ;
syntax IntegerType
        = 
        ()
 ;
syntax RealType
        = 
        ()
 ;
syntax BagType
        = 
        elementType: OclType
 ;
syntax OrderedSetType
        = 
        elementType: OclType
 ;
syntax SequenceType
        = 
        elementType: OclType
 ;
syntax SetType
        = 
        elementType: OclType
 ;
syntax OclAnyType
        = 
        String name OclContextDefinition definitions OclExpression oclExpression Operation operation MapType mapType2 Attribute attribute MapType mapType CollectionType collectionTypes TupleTypeAttribute tupleTypeAttribute VariableDeclaration variableDeclaration
 ;
syntax TupleType
        = 
        TupleTypeAttribute attributes+
 ;
syntax TupleTypeAttribute
        = 
        OclType type TupleType tupleType String name
 ;
syntax OclModelElement
        = 
        model: OclModel
 ;
syntax MapType
        = 
        OclType valueType OclType keyType
 ;
syntax OclFeatureDefinition
        = 
        OclFeature feature OclContextDefinition context_
 ;
syntax OclContextDefinition
        = 
        OclFeatureDefinition definition OclType context_
 ;
syntax OclFeature
        = Attribute
        | Operation
 ;
syntax Attribute
        = 
        String name OclExpression initExpression OclType type
 ;
syntax Operation
        = 
        String name Parameter parameters+ OclType returnType OclExpression body
 ;
syntax OclModel
        = 
        String name OclModel metamodel OclModelElement elements+ OclModel model+
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
