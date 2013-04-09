@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ATL

syntax LocatedElement
        = 
        ()
 ;
syntax Unit
        = 
        ANY libraries+ ANY name
 ;
syntax Library
        = 
        ANY helpers+
 ;
syntax Query
        = 
        ANY body ANY helpers+
 ;
syntax Module
        = 
        ANY isRefining ANY inModels+ ANY outModels+ ANY elements+
 ;
syntax ModuleElement
        = 
        ()
 ;
syntax Helper
        = 
        ANY query ANY library ANY definition
 ;
syntax Rule
        = 
        ()
 ;
syntax MatchedRule
        = 
        ANY inPattern ANY children+ ANY superRule ANY isAbstract ANY isRefining ANY isNoDefault
 ;
syntax LazyMatchedRule
        = 
        isUnique: ANY
 ;
syntax CalledRule
        = 
        ANY parameters+ ANY isEntrypoint ANY isEndpoint
 ;
syntax InPattern
        = 
        ANY elements+ ANY rule ANY filter
 ;
syntax OutPattern
        = 
        ANY rule ANY elements+
 ;
syntax PatternElement
        = 
        ()
 ;
syntax InPatternElement
        = 
        ()
 ;
syntax SimpleInPatternElement
        = 
        ANY mapsTo ANY inPattern ANY models+
 ;
syntax OutPatternElement
        = 
        ()
 ;
syntax SimpleOutPatternElement
        = 
        ANY reverseBindings+
 ;
syntax ForEachOutPatternElement
        = 
        ANY collection ANY iterator
 ;
syntax Binding
        = 
        ANY value ANY outPatternElement ANY propertyName ANY isAssignment
 ;
syntax RuleVariableDeclaration
        = 
        rule: ANY
 ;
syntax LibraryRef
        = 
        ANY unit ANY name
 ;
syntax ActionBlock
        = 
        ANY rule ANY statements+
 ;
syntax Statement
        = 
        ()
 ;
syntax ExpressionStat
        = 
        expression: ANY
 ;
syntax BindingStat
        = 
        ANY source ANY propertyName ANY isAssignment ANY value
 ;
syntax IfStat
        = 
        ANY condition ANY thenStatements+ ANY elseStatements+
 ;
syntax ForStat
        = 
        ANY iterator ANY collection ANY statements+
 ;
syntax OclExpression
        = 
        ()
 ;
syntax VariableExp
        = 
        referredVariable: ANY
 ;
syntax SuperExp
        = 
        ANY type ANY ifExp3 ANY appliedProperty ANY collection ANY letExp ANY loopExp ANY parentOperation ANY initializedVariable ANY ifExp2 ANY owningOperation ANY ifExp1 ANY owningAttribute
 ;
syntax PrimitiveExp
        = 
        ()
 ;
syntax StringExp
        = 
        stringSymbol: ANY
 ;
syntax BooleanExp
        = 
        booleanSymbol: ANY
 ;
syntax NumericExp
        = 
        ()
 ;
syntax RealExp
        = 
        realSymbol: ANY
 ;
syntax IntegerExp
        = 
        integerSymbol: ANY
 ;
syntax CollectionExp
        = 
        ()
 ;
syntax BagExp
        = 
        ANY elements+
 ;
syntax OrderedSetExp
        = 
        ANY elements+
 ;
syntax SequenceExp
        = 
        ANY elements+
 ;
syntax SetExp
        = 
        ANY elements+
 ;
syntax TupleExp
        = 
        ANY tuplePart+
 ;
syntax TuplePart
        = 
        tuple: ANY
 ;
syntax MapExp
        = 
        ANY elements+
 ;
syntax MapElement
        = 
        ANY map ANY key ANY value
 ;
syntax EnumLiteralExp
        = 
        name: ANY
 ;
syntax OclUndefinedExp
        = 
        ANY type ANY ifExp3 ANY appliedProperty ANY collection ANY letExp ANY loopExp ANY parentOperation ANY initializedVariable ANY ifExp2 ANY owningOperation ANY ifExp1 ANY owningAttribute
 ;
syntax PropertyCallExp
        = 
        ()
 ;
syntax NavigationOrAttributeCallExp
        = 
        name: ANY
 ;
syntax OperationCallExp
        = 
        ANY arguments+ ANY operationName
 ;
syntax OperatorCallExp
        = 
        ()
 ;
syntax CollectionOperationCallExp
        = 
        ()
 ;
syntax LoopExp
        = 
        ()
 ;
syntax IterateExp
        = 
        result: ANY
 ;
syntax IteratorExp
        = 
        name: ANY
 ;
syntax LetExp
        = 
        ANY variable ANY in_
 ;
syntax IfExp
        = 
        ANY thenExpression ANY condition ANY elseExpression
 ;
syntax VariableDeclaration
        = 
        ANY id ANY varName ANY type ANY initExpression ANY letExp ANY baseExp ANY variableExp+
 ;
syntax Iterator
        = 
        loopExpr: ANY
 ;
syntax Parameter
        = 
        operation: ANY
 ;
syntax CollectionType
        = 
        elementType: ANY
 ;
syntax OclType
        = 
        ANY name ANY definitions ANY oclExpression ANY operation ANY mapType2 ANY attribute ANY mapType ANY collectionTypes ANY tupleTypeAttribute ANY variableDeclaration
 ;
syntax Primitive
        = 
        ()
 ;
syntax StringType
        = 
        
 ;
syntax BooleanType
        = 
        
 ;
syntax NumericType
        = 
        ()
 ;
syntax IntegerType
        = 
        
 ;
syntax RealType
        = 
        
 ;
syntax BagType
        = 
        ()
 ;
syntax OrderedSetType
        = 
        ()
 ;
syntax SequenceType
        = 
        ()
 ;
syntax SetType
        = 
        ()
 ;
syntax OclAnyType
        = 
        ()
 ;
syntax TupleType
        = 
        ANY attributes+
 ;
syntax TupleTypeAttribute
        = 
        ANY type ANY tupleType ANY name
 ;
syntax OclModelElement
        = 
        model: ANY
 ;
syntax MapType
        = 
        ANY valueType ANY keyType
 ;
syntax OclFeatureDefinition
        = 
        ANY feature ANY context_
 ;
syntax OclContextDefinition
        = 
        ANY definition ANY context_
 ;
syntax OclFeature
        = 
        ()
 ;
syntax Attribute
        = 
        ANY name ANY initExpression ANY type
 ;
syntax Operation
        = 
        ANY name ANY parameters+ ANY returnType ANY body
 ;
syntax OclModel
        = 
        ANY name ANY metamodel ANY elements+ ANY model+
 ;
