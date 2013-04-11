@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Java_5_giquel

syntax AbstractTypeDeclaration
        = AnnotationTypeDeclaration
        | EnumDeclaration
        | TypeDeclaration
 ;
syntax Annotation
        = 
        NamedElementRef type AnnotationMemberValuePair values+
 ;
syntax AnnotationMemberValuePair
        = 
        NamedElementRef member Expression value
 ;
syntax AnnotationTypeDeclaration
        = 
        String originalFileContent PackageDeclaration package BodyDeclaration bodyDeclarations+ NamedElementRef superInterfaces+ Comment commentsAfterBody+ ImportDeclaration imports+ Comment commentsBeforeBody+
 ;
syntax AnnotationTypeMemberDeclaration
        = 
        NamedElementRef type Expression default
 ;
syntax AnonymousClassDeclaration
        = 
        BodyDeclaration bodyDeclarations+
 ;
syntax ArrayAccess
        = 
        Expression index Expression array
 ;
syntax ArrayCreation
        = 
        Expression dimensions+ ArrayInitializer initializer NamedElementRef type
 ;
syntax ArrayInitializer
        = 
        Expression expressions+
 ;
syntax ArrayLengthAccess
        = 
        array: Expression
 ;
syntax AssertStatement
        = 
        Expression message Expression expression
 ;
syntax Assignment
        = 
        String operator Expression rightHandSide Expression leftHandSide
 ;
syntax ASTNode
        = AnnotationMemberValuePair
        | AnonymousClassDeclaration
        | BodyDeclaration
        | CatchClause
        | Comment
        | Expression
        | ImportDeclaration
        | MemberRef
        | MethodRef
        | MethodRefParameter
        | Statement
        | TagElement
        | TextElement
        | PackageDeclaration
        | ParameterizedType
        | PrimitiveType
        | SingleVariableDeclaration
        | TypeParameter
        | UnresolvedItem
        | WildCardType
 ;
syntax BodyDeclaration
        = Initializer
        | EnumConstantDeclaration
        | FieldDeclaration
        | AbstractTypeDeclaration
        | AnnotationTypeMemberDeclaration
        | MethodDeclaration
 ;
syntax Block
        = 
        Statement statements+
 ;
syntax BlockComment
        = 
        String content Boolean isEnclosedByParent Boolean isPrefixOfParent
 ;
syntax BreakStatement
        = 
        label: NamedElementRef
 ;
syntax CastExpression
        = 
        NamedElementRef type Expression expression
 ;
syntax CatchClause
        = 
        SingleVariableDeclaration exception Block body
 ;
syntax ClassInstanceCreation
        = 
        Expression arguments+ NamedElementRef type Expression expression AnonymousClassDeclaration anonymousClassDeclaration
 ;
syntax Comment
        = BlockComment
        | Javadoc
        | LineComment
 ;
syntax ConditionalExpression
        = 
        Expression elseExpression Expression thenExpression Expression expression
 ;
syntax ContinueStatement
        = 
        label: NamedElementRef
 ;
syntax ConstructorInvocation
        = 
        Expression arguments+
 ;
syntax DoStatement
        = 
        Expression expression Statement body
 ;
syntax EmptyStatement
        = 
        ()
 ;
syntax EnhancedForStatement
        = 
        SingleVariableDeclaration parameter Expression expression Statement body
 ;
syntax EnumConstantDeclaration
        = 
        Expression arguments+ AnonymousClassDeclaration anonymousClassDeclaration
 ;
syntax EnumDeclaration
        = 
        EnumConstantDeclaration enumConstants+
 ;
syntax Expression
        = Annotation
        | ArrayAccess
        | ArrayCreation
        | ArrayInitializer
        | ArrayLengthAccess
        | Assignment
        | CastExpression
        | ClassInstanceCreation
        | ConditionalExpression
        | FieldAccess
        | InfixExpression
        | InstanceofExpression
        | MethodInvocation
        | NamedElementRef
        | ParenthesizedExpression
        | PostfixExpression
        | PrefixExpression
        | SuperFieldAccess
        | SuperMethodInvocation
        | ThisExpression
        | TypeLiteral
        | VariableDeclarationExpression
 ;
syntax ExpressionStatement
        = 
        expression: Expression
 ;
syntax FieldAccess
        = 
        NamedElementRef field Expression expression
 ;
syntax FieldDeclaration
        = 
        type: NamedElementRef
 ;
syntax ForStatement
        = 
        Statement body Expression expression Expression initializers+ Expression updaters+
 ;
syntax InfixExpression
        = 
        String operator Expression extendedOperands+ Expression rightOperand Expression leftOperand
 ;
syntax IfStatement
        = 
        Expression expression Statement elseStatement Statement thenStatement
 ;
syntax ImportDeclaration
        = 
        Boolean static NamedElementRef importedElement
 ;
syntax Initializer
        = 
        body: Block
 ;
syntax InstanceofExpression
        = 
        Expression leftOperand NamedElementRef rightOperand
 ;
syntax Javadoc
        = 
        TagElement tags+
 ;
syntax LabeledStatement
        = 
        body: Statement
 ;
syntax LineComment
        = 
        String content Boolean isEnclosedByParent Boolean isPrefixOfParent
 ;
syntax MemberRef
        = 
        NamedElementRef qualifier NamedElementRef member
 ;
syntax MethodDeclaration
        = 
        Integer extraArrayDimensions Boolean constructor Boolean varargs Block body SingleVariableDeclaration parameters+ TypeParameter typeParameters+ NamedElementRef thrownExceptions+ NamedElementRef returnType
 ;
syntax MethodInvocation
        = 
        NamedElementRef method Expression arguments+ Expression expression
 ;
syntax MethodRef
        = 
        NamedElementRef qualifier MethodRefParameter parameters+ NamedElementRef method
 ;
syntax MethodRefParameter
        = 
        String name Boolean isVarargs NamedElementRef type
 ;
syntax Model
        = 
        String name PackageDeclaration ownedElements+ OrphanType orphanTypes+
 ;
syntax MultipleValuedNamedElement
        = 
        FieldDeclaration
 ;
syntax NamedElement
        = OrphanType
        | ValuedNamedElement
        | AbstractTypeDeclaration
        | AnnotationTypeMemberDeclaration
        | MethodDeclaration
        | UnresolvedItem
        | EnumConstantDeclaration
        | LabeledStatement
        | PackageDeclaration
        | TypeParameter
 ;
syntax NamedElementRef
        = 
        Integer extraArrayDimensions NamedElement element NamedElementRef qualifier
 ;
syntax OrphanType
        = WildCardType
        | ParameterizedType
        | PrimitiveType
        | String name Boolean proxy
 ;
syntax PackageDeclaration
        = 
        Model model AbstractTypeDeclaration ownedElements+
 ;
syntax ParameterizedType
        = 
        NamedElementRef typeArguments+ NamedElementRef type
 ;
syntax ParenthesizedExpression
        = 
        expression: Expression
 ;
syntax PostfixExpression
        = 
        String operator Expression operand
 ;
syntax PrefixExpression
        = 
        String operator Expression operand
 ;
syntax PrimitiveType
        = 
        Comment comments+
 ;
syntax ReturnStatement
        = 
        expression: Expression
 ;
syntax ThrowStatement
        = 
        expression: Expression
 ;
syntax SingleVariableDeclaration
        = 
        String modifiers Boolean isVarargs NamedElementRef type
 ;
syntax Statement
        = AssertStatement
        | Block
        | BreakStatement
        | ContinueStatement
        | ConstructorInvocation
        | DoStatement
        | EmptyStatement
        | EnhancedForStatement
        | ExpressionStatement
        | ForStatement
        | IfStatement
        | ReturnStatement
        | ThrowStatement
        | SuperConstructorInvocation
        | SwitchCase
        | SwitchStatement
        | SynchronizedStatement
        | TryStatement
        | TypeDeclarationStatement
        | WhileStatement
        | LabeledStatement
        | VariableDeclarationStatement
 ;
syntax SuperConstructorInvocation
        = 
        Expression arguments+ Expression expression
 ;
syntax SuperFieldAccess
        = 
        NamedElementRef qualifier NamedElementRef field
 ;
syntax SuperMethodInvocation
        = 
        Expression arguments+ NamedElementRef qualifier NamedElementRef method
 ;
syntax SwitchCase
        = 
        Boolean expressionInitialized Expression expression
 ;
syntax SwitchStatement
        = 
        Statement statements+ Expression expression
 ;
syntax SynchronizedStatement
        = 
        Block body Expression expression
 ;
syntax TagElement
        = 
        String tagName ASTNode fragments+
 ;
syntax TextElement
        = 
        text: String
 ;
syntax ThisExpression
        = 
        qualifier: NamedElementRef
 ;
syntax TryStatement
        = 
        Block finally Block body CatchClause catchClauses+
 ;
syntax TypeDeclaration
        = 
        Boolean isInterface TypeParameter typeParameters+ NamedElementRef superclass
 ;
syntax TypeDeclarationStatement
        = 
        declaration: AbstractTypeDeclaration
 ;
syntax TypeLiteral
        = 
        type: NamedElementRef
 ;
syntax TypeParameter
        = 
        NamedElementRef bounds+
 ;
syntax UnresolvedItem
        = 
        String name Boolean proxy Comment comments+
 ;
syntax ValuedNamedElement
        = MultipleValuedNamedElement
        | SingleVariableDeclaration
 ;
syntax VariableDeclarationExpression
        = 
        String modifiers NamedElementRef type
 ;
syntax VariableDeclarationStatement
        = 
        String modifiers NamedElementRef type
 ;
syntax WildCardType
        = 
        Boolean isUpperBound NamedElementRef bound
 ;
syntax WhileStatement
        = 
        Expression expression Statement body
 ;
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
