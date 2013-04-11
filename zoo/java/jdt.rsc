@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Jdt

syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax AST
        = 
        root: ANY
 ;
syntax ASTNode
        = AnonymousClassDeclaration
        | BodyDeclaration
        | CatchClause
        | Comment
        | CompilationUnit
        | Expression
        | ImportDeclaration
        | MemberRef
        | MemberValuePair
        | MethodRef
        | MethodRefParameter
        | PackageDeclaration
        | Statement
        | TagElement
        | TextElement
        | Type
        | TypeParameter
        | VariableDeclaration
        | Modifier
 ;
syntax AnonymousClassDeclaration
        = 
        ANY bodyDeclarations+
 ;
syntax BodyDeclaration
        = AbstractTypeDeclaration
        | AnnotationTypeMemberDeclaration
        | EnumConstantDeclaration
        | FieldDeclaration
        | Initializer
        | MethodDeclaration
 ;
syntax CatchClause
        = 
        ANY body ANY exception
 ;
syntax Comment
        = BlockComment
        | Javadoc
        | LineComment
 ;
syntax CompilationUnit
        = 
        ANY comments+ ANY package ANY imports+ ANY types+
 ;
syntax Expression
        = ArrayAccess
        | ArrayCreation
        | ArrayInitializer
        | Assignment
        | BooleanLiteral
        | CastExpression
        | CharacterLiteral
        | ClassInstanceCreation
        | ConditionalExpression
        | FieldAccess
        | InfixExpression
        | InstanceofExpression
        | MethodInvocation
        | Name
        | NullLiteral
        | NumberLiteral
        | ParenthesizedExpression
        | PostfixExpression
        | PrefixExpression
        | StringLiteral
        | SuperFieldAccess
        | SuperMethodInvocation
        | ThisExpression
        | TypeLiteral
        | VariableDeclarationExpression
        | Annotation
 ;
syntax ImportDeclaration
        = 
        ANY onDemand ANY static ANY name
 ;
syntax MemberRef
        = 
        ANY name ANY qualifier
 ;
syntax MemberValuePair
        = 
        ANY name ANY value
 ;
syntax MethodRef
        = 
        ANY name ANY qualifier ANY parameters+
 ;
syntax MethodRefParameter
        = 
        ANY name ANY type ANY varargs
 ;
syntax ExtendedModifier
        = Modifier
        | Annotation
 ;
syntax Modifier
        = 
        ANY abstract ANY final ANY native ANY none ANY private ANY protected ANY public ANY static ANY strictfp ANY synchronized ANY transient ANY volatile
 ;
syntax PackageDeclaration
        = 
        ANY annotations+ ANY javadoc ANY name
 ;
syntax Statement
        = AssertStatement
        | Block
        | BreakStatement
        | ConstructorInvocation
        | ContinueStatement
        | DoStatement
        | EmptyStatement
        | EnhancedForStatement
        | ExpressionStatement
        | ForStatement
        | IfStatement
        | LabeledStatement
        | ReturnStatement
        | SuperConstructorInvocation
        | SwitchCase
        | SwitchStatement
        | SynchronizedStatement
        | ThrowStatement
        | TryStatement
        | TypeDeclarationStatement
        | VariableDeclarationStatement
        | WhileStatement
 ;
syntax TagElement
        = 
        ANY fragments+ ANY tagName ANY nested
 ;
syntax TextElement
        = 
        text: ANY
 ;
syntax Type
        = ArrayType
        | ParameterizedType
        | PrimitiveType
        | QualifiedType
        | SimpleType
        | WildcardType
 ;
syntax TypeParameter
        = 
        ANY name ANY typeBounds+
 ;
syntax VariableDeclaration
        = SingleVariableDeclaration
        | VariableDeclarationFragment
 ;
syntax AbstractTypeDeclaration
        = AnnotationTypeDeclaration
        | EnumDeclaration
        | TypeDeclaration
 ;
syntax AnnotationTypeMemberDeclaration
        = 
        ANY default ANY name ANY type
 ;
syntax EnumConstantDeclaration
        = 
        ANY arguments+ ANY anonymousClassDeclaration ANY name
 ;
syntax FieldDeclaration
        = 
        ANY fragments+ ANY type
 ;
syntax Initializer
        = 
        body: ANY
 ;
syntax MethodDeclaration
        = 
        ANY body ANY extraDimensions ANY name ANY returnType ANY constructor ANY varargs ANY parameters+ ANY thrownExceptions+ ANY typeParameters+
 ;
syntax AnnotationTypeDeclaration
        = 
        ANY bodyDeclarations+ ANY name ANY localTypeDeclaration ANY memberTypeDeclaration ANY packageMemberTypeDeclaration
 ;
syntax EnumDeclaration
        = 
        ANY superInterfaceTypes+ ANY enumConstants+
 ;
syntax TypeDeclaration
        = 
        ANY superclassType ANY interface ANY superInterfaceTypes+ ANY typeParameters+
 ;
syntax BlockComment
        = 
        alternateRoot: ANY
 ;
syntax Javadoc
        = 
        ANY tags+
 ;
syntax LineComment
        = 
        alternateRoot: ANY
 ;
syntax Annotation
        = MarkerAnnotation
        | NormalAnnotation
        | SingleMemberAnnotation
 ;
syntax ArrayAccess
        = 
        ANY array ANY index
 ;
syntax ArrayCreation
        = 
        ANY dimensions+ ANY initializer ANY type
 ;
syntax ArrayInitializer
        = 
        ANY expressions+
 ;
syntax Assignment
        = 
        ANY leftHandSide ANY operator ANY rightHandSide
 ;
syntax AssignementOperatorKind
        = RIGHT_SHIFT_SIGNED_ASSIGN: ()
        | BIT_XOR_ASSIGN: ()
        | TIMES_ASSIGN: ()
        | LEFT_SHIFT_ASSIGN: ()
        | MINUS_ASSIGN: ()
        | BIT_OR_ASSIGN: ()
        | PLUS_ASSIGN: ()
        | ASSIGN: ()
        | RIGHT_SHIFT_UNSIGNED_ASSIGN: ()
        | REMAINDER_ASSIGN: ()
        | DIVIDE_ASSIGN: ()
        | BIT_AND_ASSIGN: ()
 ;
syntax BooleanLiteral
        = 
        booleanValue: ANY
 ;
syntax CastExpression
        = 
        ANY expression ANY type
 ;
syntax CharacterLiteral
        = 
        ANY charValue ANY escapedValue
 ;
syntax ClassInstanceCreation
        = 
        ANY arguments+ ANY anonymousClassDeclaration ANY expression ANY type ANY typeArguments+
 ;
syntax ConditionalExpression
        = 
        ANY elseExpression ANY expression ANY thenExpression
 ;
syntax FieldAccess
        = 
        ANY expression ANY name
 ;
syntax InfixExpression
        = 
        ANY extendedOperands+ ANY leftOperand ANY operator ANY rightOperand
 ;
syntax InfixExpressionOperatorKind
        = GREATER_EQUALS: ()
        | OR: ()
        | RIGHT_SHIFT_SIGNED: ()
        | MINUS: ()
        | XOR: ()
        | LESS_EQUALS: ()
        | EQUALS: ()
        | NOT_EQUALS: ()
        | AND: ()
        | PLUS: ()
        | GREATER: ()
        | CONDITIONAL_OR: ()
        | REMAINDER: ()
        | LESS: ()
        | LEFT_SHIFT: ()
        | RIGHT_SHIFT_UNSIGNED: ()
        | CONDITIONAL_AND: ()
        | TIMES: ()
        | DIVIDE: ()
 ;
syntax InstanceofExpression
        = 
        ANY leftOperand ANY rightOperand
 ;
syntax MethodInvocation
        = 
        ANY arguments+ ANY expression ANY name ANY typeArguments+
 ;
syntax Name
        = QualifiedName
        | SimpleName
 ;
syntax NullLiteral
        = 
        ANY resolveBoxing ANY resolveUnboxing
 ;
syntax NumberLiteral
        = 
        token: ANY
 ;
syntax ParenthesizedExpression
        = 
        expression: ANY
 ;
syntax PostfixExpression
        = 
        ANY operand ANY operator
 ;
syntax PostfixExpresssionOperatorKind
        = INCREMENT: ()
        | DECREMENT: ()
 ;
syntax PrefixExpression
        = 
        ANY operand ANY operator
 ;
syntax PrefixExpresssionOperatorKind
        = MINUS: ()
        | NOT: ()
        | DECREMENT: ()
        | COMPLEMENT: ()
        | INCREMENT: ()
        | PLUS: ()
 ;
syntax StringLiteral
        = 
        ANY escapedValue ANY literalValue
 ;
syntax SuperFieldAccess
        = 
        ANY name ANY qualifier
 ;
syntax SuperMethodInvocation
        = 
        ANY arguments+ ANY name ANY qualifier ANY typeArguments+
 ;
syntax ThisExpression
        = 
        qualifier: ANY
 ;
syntax TypeLiteral
        = 
        type: ANY
 ;
syntax VariableDeclarationExpression
        = 
        ANY fragments+ ANY modifiers+ ANY type
 ;
syntax AssertStatement
        = 
        ANY expression ANY message
 ;
syntax Block
        = 
        ANY statements+
 ;
syntax BreakStatement
        = 
        label: ANY
 ;
syntax ConstructorInvocation
        = 
        ANY arguments+ ANY typeArguments+
 ;
syntax ContinueStatement
        = 
        label: ANY
 ;
syntax DoStatement
        = 
        ANY body ANY expression
 ;
syntax EmptyStatement
        = 
        ()
 ;
syntax EnhancedForStatement
        = 
        ANY body ANY expression ANY parameter
 ;
syntax ExpressionStatement
        = 
        expression: ANY
 ;
syntax ForStatement
        = 
        ANY body ANY expression ANY initializers+ ANY updaters+
 ;
syntax IfStatement
        = 
        ANY elseStatement ANY expression ANY thenStatement
 ;
syntax LabeledStatement
        = 
        ANY body ANY label
 ;
syntax ReturnStatement
        = 
        expression: ANY
 ;
syntax SuperConstructorInvocation
        = 
        ANY arguments+ ANY expression ANY typeArguments+
 ;
syntax SwitchCase
        = 
        ANY expression ANY default
 ;
syntax SwitchStatement
        = 
        ANY expression ANY statements+
 ;
syntax SynchronizedStatement
        = 
        ANY body ANY expression
 ;
syntax ThrowStatement
        = 
        expression: ANY
 ;
syntax TryStatement
        = 
        ANY catchClauses+ ANY body ANY finally
 ;
syntax TypeDeclarationStatement
        = 
        declaration: ANY
 ;
syntax VariableDeclarationStatement
        = 
        ANY fragments+ ANY modifiers+ ANY type
 ;
syntax WhileStatement
        = 
        ANY body ANY expression
 ;
syntax ArrayType
        = 
        ANY componentType ANY dimensions ANY elementType
 ;
syntax ParameterizedType
        = 
        ANY type ANY typeArguments+
 ;
syntax PrimitiveType
        = 
        code: ANY
 ;
syntax QualifiedType
        = 
        ANY name ANY qualifier
 ;
syntax SimpleType
        = 
        name: ANY
 ;
syntax WildcardType
        = 
        ANY bound ANY upperBound
 ;
syntax SingleVariableDeclaration
        = 
        ANY type ANY varargs ANY modifiers+
 ;
syntax VariableDeclarationFragment
        = 
        ANY extraDimensions ANY initializer ANY name
 ;
syntax QualifiedName
        = 
        ANY name ANY qualifier
 ;
syntax SimpleName
        = 
        ANY identifier ANY declaration
 ;
syntax MarkerAnnotation
        = 
        typeName: ANY
 ;
syntax NormalAnnotation
        = 
        ANY values+
 ;
syntax SingleMemberAnnotation
        = 
        value: ANY
 ;
