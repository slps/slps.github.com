@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module J2SE5

syntax AbstractTypeDeclaration
        = 
        ()
 ;
syntax Annotation
        = 
        ANY type ANY values+
 ;
syntax AnnotationMemberValuePair
        = 
        ANY member ANY value
 ;
syntax AnnotationTypeDeclaration
        = 
        ANY originalFileContent ANY package ANY bodyDeclarations+ ANY superInterfaces+ ANY commentsAfterBody+ ANY imports+ ANY commentsBeforeBody+
 ;
syntax AnnotationTypeMemberDeclaration
        = 
        ANY type ANY default
 ;
syntax AnonymousClassDeclaration
        = 
        ANY bodyDeclarations+
 ;
syntax ArrayAccess
        = 
        ANY index ANY array
 ;
syntax ArrayCreation
        = 
        ANY dimensions+ ANY initializer ANY type
 ;
syntax ArrayInitializer
        = 
        ANY expressions+
 ;
syntax ArrayLengthAccess
        = 
        array: ANY
 ;
syntax AssertStatement
        = 
        ANY message ANY expression
 ;
syntax Assignment
        = 
        ANY operator ANY rightHandSide ANY leftHandSide
 ;
syntax ASTNode
        = 
        ()
 ;
syntax BodyDeclaration
        = 
        ()
 ;
syntax Block
        = 
        ANY statements+
 ;
syntax BlockComment
        = 
        ANY content ANY isEnclosedByParent ANY isPrefixOfParent
 ;
syntax BreakStatement
        = 
        label: ANY
 ;
syntax CastExpression
        = 
        ANY type ANY expression
 ;
syntax CatchClause
        = 
        ANY exception ANY body
 ;
syntax ClassInstanceCreation
        = 
        ANY arguments+ ANY type ANY expression ANY anonymousClassDeclaration
 ;
syntax Comment
        = 
        ()
 ;
syntax ConditionalExpression
        = 
        ANY elseExpression ANY thenExpression ANY expression
 ;
syntax ContinueStatement
        = 
        label: ANY
 ;
syntax ConstructorInvocation
        = 
        ANY arguments+
 ;
syntax DoStatement
        = 
        ANY expression ANY body
 ;
syntax EmptyStatement
        = 
        
 ;
syntax EnhancedForStatement
        = 
        ANY parameter ANY expression ANY body
 ;
syntax EnumConstantDeclaration
        = 
        ANY arguments+ ANY anonymousClassDeclaration
 ;
syntax EnumDeclaration
        = 
        ANY enumConstants+
 ;
syntax Expression
        = 
        ()
 ;
syntax ExpressionStatement
        = 
        expression: ANY
 ;
syntax FieldAccess
        = 
        ANY field ANY expression
 ;
syntax FieldDeclaration
        = 
        type: ANY
 ;
syntax ForStatement
        = 
        ANY body ANY expression ANY initializers+ ANY updaters+
 ;
syntax InfixExpression
        = 
        ANY operator ANY extendedOperands+ ANY rightOperand ANY leftOperand
 ;
syntax IfStatement
        = 
        ANY expression ANY elseStatement ANY thenStatement
 ;
syntax ImportDeclaration
        = 
        ANY static ANY importedElement
 ;
syntax Initializer
        = 
        body: ANY
 ;
syntax InstanceofExpression
        = 
        ANY leftOperand ANY rightOperand
 ;
syntax Javadoc
        = 
        ANY tags+
 ;
syntax LabeledStatement
        = 
        body: ANY
 ;
syntax LineComment
        = 
        ANY content ANY isEnclosedByParent ANY isPrefixOfParent
 ;
syntax MemberRef
        = 
        ANY qualifier ANY member
 ;
syntax MethodDeclaration
        = 
        ANY extraArrayDimensions ANY constructor ANY varargs ANY body ANY parameters+ ANY typeParameters+ ANY thrownExceptions+ ANY returnType
 ;
syntax MethodInvocation
        = 
        ANY method ANY arguments+ ANY expression
 ;
syntax MethodRef
        = 
        ANY qualifier ANY parameters+ ANY method
 ;
syntax MethodRefParameter
        = 
        ANY name ANY isVarargs ANY type
 ;
syntax Model
        = 
        ANY name ANY ownedElements+ ANY orphanTypes+
 ;
syntax MultipleValuedNamedElement
        = 
        ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax NamedElementRef
        = 
        ANY extraArrayDimensions ANY element ANY qualifier
 ;
syntax OrphanType
        = 
        ANY name ANY proxy
 ;
syntax PackageDeclaration
        = 
        ANY model ANY ownedElements+
 ;
syntax ParameterizedType
        = 
        ANY typeArguments+ ANY type
 ;
syntax ParenthesizedExpression
        = 
        expression: ANY
 ;
syntax PostfixExpression
        = 
        ANY operator ANY operand
 ;
syntax PrefixExpression
        = 
        ANY operator ANY operand
 ;
syntax PrimitiveType
        = 
        ()
 ;
syntax ReturnStatement
        = 
        expression: ANY
 ;
syntax ThrowStatement
        = 
        expression: ANY
 ;
syntax SingleVariableDeclaration
        = 
        ANY modifiers ANY isVarargs ANY type
 ;
syntax Statement
        = 
        ()
 ;
syntax SuperConstructorInvocation
        = 
        ANY arguments+ ANY expression
 ;
syntax SuperFieldAccess
        = 
        ANY qualifier ANY field
 ;
syntax SuperMethodInvocation
        = 
        ANY arguments+ ANY qualifier ANY method
 ;
syntax SwitchCase
        = 
        ANY expressionInitialized ANY expression
 ;
syntax SwitchStatement
        = 
        ANY statements+ ANY expression
 ;
syntax SynchronizedStatement
        = 
        ANY body ANY expression
 ;
syntax TagElement
        = 
        ANY tagName ANY fragments+
 ;
syntax TextElement
        = 
        text: ANY
 ;
syntax ThisExpression
        = 
        qualifier: ANY
 ;
syntax TryStatement
        = 
        ANY finally ANY body ANY catchClauses+
 ;
syntax TypeDeclaration
        = 
        ANY isInterface ANY typeParameters+ ANY superclass
 ;
syntax TypeDeclarationStatement
        = 
        declaration: ANY
 ;
syntax TypeLiteral
        = 
        type: ANY
 ;
syntax TypeParameter
        = 
        ANY bounds+
 ;
syntax UnresolvedItem
        = 
        ()
 ;
syntax ValuedNamedElement
        = 
        ()
 ;
syntax VariableDeclarationExpression
        = 
        ANY modifiers ANY type
 ;
syntax VariableDeclarationStatement
        = 
        ANY modifiers ANY type
 ;
syntax WildCardType
        = 
        ANY isUpperBound ANY bound
 ;
syntax WhileStatement
        = 
        ANY expression ANY body
 ;
