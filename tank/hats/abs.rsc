@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Abs

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax SqlAttrDefList
        = SqlAttrDefList l COMMA SqlAttrDef a
        | a: SqlAttrDef
 ;
syntax ABSGoal
        = cu: 
        CompilationUnit
 ;
syntax Guard
        = VarOrFieldRef r QMARK
        | e: DataExp
        | Guard g1 GUARDAND Guard g2
        | BAR Exp e BAR
        | DURATION LPAREN DataExp min COMMA DataExp max RPAREN
 ;
syntax PORT
        = 
        "port"
 ;
syntax ModuleNameDecl
        = 
        MODULE ModuleName n SEMICOLON
 ;
syntax DataConstructorList
        = DataConstructorList l BAR DataConstructor i
        | i: DataConstructor
 ;
syntax Literal
        = i: IntLiteral
        | s: StringLiteral
 ;
syntax AnnotationList
        = AnnotationList l Annotation a
        | a: Annotation
 ;
syntax DeclList
        = DeclList l Decl t
        | t: Decl
 ;
syntax BlockWithoutAnnotations
        = 
        LBRACE RBRACE
 ;
syntax IMPLIES
        = 
        "-\>"
 ;
syntax FeatureList
        = FeatureList l COMMA Feature f
        | f: Feature
 ;
syntax Featvar
        = f: 
        TYPE_IDENTIFIER
 ;
syntax ExportList
        = t: Export
        | ExportList l Export t
 ;
syntax MlitExp
        = i: INTLITERAL
        | id: IDENTIFIER
        | TYPE_IDENTIFIER f DOT IDENTIFIER a
        | id: TYPE_IDENTIFIER
 ;
syntax OPT
        = 
        "opt"
 ;
syntax DatatypeparamListDecl
        = 
        LT DatatypeparamList l GT
 ;
syntax DESC
        = 
        "desc"
 ;
syntax SEMICOLON
        = 
        ";"
 ;
syntax QMARK
        = 
        "?"
 ;
syntax THIS
        = 
        "this"
 ;
syntax NOTEQ
        = "!="
        | "\<\>"
 ;
syntax ParamDecls
        = 
        LPAREN RPAREN
 ;
syntax ONEOF
        = 
        "oneof"
 ;
syntax SqlOrderingAttributes
        = ORDER BY SqlOrderingAttributeList l
        | ()
 ;
syntax StmtList
        = StmtList l Stmt i
        | i: Stmt
 ;
syntax FieldDecl
        = PORT TypeExp t IDENTIFIER i
        | PORT TypeExp t IDENTIFIER i ASSIGN DataExp e
        | TypeExp t IDENTIFIER i ASSIGN DataExp e
        | TypeExp t IDENTIFIER i
 ;
syntax EqualityExp
        = EqualityExp e1 NOTEQ RelationalExp e2
        | RelationalExp
        | EqualityExp e1 EQEQ RelationalExp e2
 ;
syntax VarOrFieldRef
        = THIS callee DOT d
        | THIS callee BANG b
        | THIS DOT IDENTIFIER id
        | n: IDENTIFIER
 ;
syntax Appcond
        = 
        OrAppcond
 ;
syntax HASFIELD
        = 
        "hasField"
 ;
syntax ANDAND
        = 
        "&&"
 ;
syntax FeatureDecl
        = f: TYPE_IDENTIFIER
        | TYPE_IDENTIFIER f LBRACE AttributeConstraintList acl RBRACE
 ;
syntax ImplementInterfacesRemove
        = 
        REMOVES IfnameList i
 ;
syntax MfactorExp
        = NEGATION MfactorExp e
        | MINUS MfactorExp e
        | MlitExp
        | LPAREN Mexp e RPAREN
 ;
syntax EQ
        = 
        "="
 ;
syntax CaseExp
        = 
        CASE DataExp caseterm LBRACE RBRACE
 ;
syntax MultExp
        = MultExp e1 MOD Factor e2
        | MultExp e1 DIV Factor e2
        | f: Factor
        | MultExp e1 MULT Factor e2
 ;
syntax Name
        = SimpleName
        | QualifiedName
 ;
syntax SqlAggregateFunction
        = IDENTIFIER i LPAREN SqlTupleScalarFunction f RPAREN
        | f: SqlTupleScalarFunction
        | COUNT LPAREN MULT RPAREN
 ;
syntax IDENTIFIER
        = 
        ()
 ;
syntax ParamDecl
        = 
        TypeExp t IDENTIFIER i
 ;
syntax COMMA
        = 
        ","
 ;
syntax NOT
        = 
        "not"
 ;
syntax Mexp
        = MandExp
        | Mexp e1 OROR MandExp e2
 ;
syntax AfterCondition
        = 
        AFTER DeltaList l
 ;
syntax LBRACKET
        = 
        "["
 ;
syntax END
        = 
        "end"
 ;
syntax Fextension
        = 
        TYPE_IDENTIFIER f LBRACE AttributeConstraintList acl RBRACE
 ;
syntax INSERT
        = 
        "insert"
 ;
syntax SqlAttrDef
        = f: Factor
        | SqlAggregateFunction fun AS DataExp e
 ;
syntax WHERE
        = 
        "where"
 ;
syntax FunctionDecl
        = DEF Datatypeuse t IDENTIFIER fn DatatypeparamListDecl p LPAREN RPAREN ASSIGN ExpFunctionDef ef SEMICOLON
        | DEF Datatypeuse t IDENTIFIER fn LPAREN RPAREN ASSIGN ExpFunctionDef ef SEMICOLON
        | DEF Datatypeuse t IDENTIFIER fn DatatypeparamListDecl p LPAREN RPAREN ASSIGN BUILTIN SEMICOLON
        | DEF Datatypeuse t IDENTIFIER fn LPAREN RPAREN ASSIGN BUILTIN SEMICOLON
 ;
syntax ModuleModifierList
        = ModuleModifierList l ModuleModifier m
        | m: ModuleModifier
 ;
syntax DatatypeDecl
        = DATA TYPE_IDENTIFIER id ASSIGN DataConstructorList l SEMICOLON
        | DATA TYPE_IDENTIFIER id SEMICOLON
 ;
syntax TYPE_IDENTIFIER
        = 
        TYPE_IDENTIFIER_OLD
 ;
syntax PRODUCT
        = 
        "product"
 ;
syntax Product
        = PRODUCT TYPE_IDENTIFIER id LPAREN RPAREN SEMICOLON
        | PRODUCT TYPE_IDENTIFIER id LPAREN RPAREN LBRACE AdaptationList al RBRACE
 ;
syntax Decl
        = DatatypeDecl
        | FunctionDecl
        | TypesynDecl
        | ClassDecl
        | InterfaceDecl
 ;
syntax UPDATE
        = 
        "update"
 ;
syntax Feature
        = id: TYPE_IDENTIFIER
        | TYPE_IDENTIFIER id PRIME
 ;
syntax RARROW
        = 
        "=\>"
 ;
syntax PureExpPrefix
        = LPAREN IfExp e RPAREN
        | PureExpNoIf
 ;
syntax SimpleTypeName
        = id: 
        TYPE_IDENTIFIER
 ;
syntax DeltaId
        = delta: 
        TYPE_IDENTIFIER
 ;
syntax CaseBranchList
        = CaseBranchList l CaseBranch b
        | b: CaseBranch
 ;
syntax ExpFunctionDef
        = ef: 
        DataExp
 ;
syntax AsyncCall
        = THIS callee BANG IDENTIFIER method LPAREN RPAREN
        | PureExpPrefix callee BANG IDENTIFIER method LPAREN RPAREN
 ;
syntax ConstructorArgList
        = a: ConstructorArg
        | ConstructorArgList l COMMA ConstructorArg a
 ;
syntax SqlOrderingAttributeList
        = a: SqlOrderingAttribute
        | SqlOrderingAttributeList l COMMA SqlOrderingAttribute a
 ;
syntax MODIFIES
        = 
        "modifies"
 ;
syntax InfModifierFragmentList
        = InfModifierFragmentList l InfModifierFragment f
        | f: InfModifierFragment
 ;
syntax AndExp
        = AndExp e1 ANDAND EqualityExp e2
        | EqualityExp
 ;
syntax MOD
        = 
        "%"
 ;
syntax ROOT
        = 
        "root"
 ;
syntax WhenCondition
        = WHEN Appcond ac
        | TO Appcond ac
 ;
syntax MethodsigList
        = Methodsig m SEMICOLON
        | MethodsigList l Methodsig m SEMICOLON
 ;
syntax COUNT
        = 
        "count"
 ;
syntax ASSIGN
        = 
        "="
 ;
syntax SqlAttrAssignment
        = 
        DataExp e EQ SqlTupleScalarFunction f
 ;
syntax GT
        = 
        "\>"
 ;
syntax OoModifier
        = ADDS QualifiedClassDecl classdecl
        | REMOVES CLASS TypeName id SEMICOLON
        | MODIFIES INTERFACE TypeName id LBRACE RBRACE
        | ADDS QualifiedInterfaceDecl ifacedecl
        | MODIFIES CLASS TypeName id LBRACE RBRACE
 ;
syntax MimplExp
        = MeqExp
        | MimplExp e1 EQUIV MeqExp e2
        | MimplExp e1 IMPLIES MeqExp e2
 ;
syntax REBIND
        = 
        "rebind"
 ;
syntax IFOUT
        = 
        "ifout"
 ;
syntax SELECT
        = 
        "select"
 ;
syntax DISTINCT
        = 
        "distinct"
 ;
syntax SqlTupleCaseBranches
        = SqlTupleCaseBranches l SqlTupleCaseBranch b
        | b: SqlTupleCaseBranch
 ;
syntax TypesynDecl
        = 
        TYPE TYPE_IDENTIFIER lhs ASSIGN Datatypeuse rhs SEMICOLON
 ;
syntax IfnameList
        = IfnameList l COMMA Ifname i
        | i: Ifname
 ;
syntax FnodeList
        = FnodeList l COMMA Fnode f
        | ()
        | f: Fnode
 ;
syntax LEFT
        = 
        "left"
 ;
syntax YYINITIAL
        = "after"
        | "exclude"
        | "sql"
        | "null"
        | "duration"
        | "father"
        | "skip"
        | "productline"
        | "if"
        | "interface"
        | "return"
        | "else"
        | "in"
        | "product"
        | "extends"
        | "by"
        | "def"
        | "hasMethod"
        | "movecogto"
        | "features"
        | "builtin"
        | "extension"
        | "core"
        | "critical"
        | "hasInterface"
        | "implements"
        | "data"
        | "from"
        | "location"
        | "get"
        | "ifin"
        | "type"
        | "hasField"
        | "this"
        | "opt"
        | "module"
        | "group"
        | "then"
        | "original"
        | "new"
        | "await"
        | "class"
        | "cog"
        | "require"
        | "ifout"
        | "root"
        | "rebind"
        | "port"
        | "removes"
        | "suspend"
        | "uses"
        | "move"
        | "adds"
        | ".original"
        | "import"
        | "export"
        | "delta"
        | "assert"
        | "when"
        | "while"
        | "case"
        | "allof"
        | "modifies"
        | "oneof"
        | "let"
 ;
syntax BUILTIN
        = 
        "builtin"
 ;
syntax ImportList
        = t: Import
        | ImportList l Import t
 ;
syntax ProductList
        = p: Product
        | ProductList l Product p
 ;
syntax LocationExp
        = 
        LOC LPAREN PureExp param RPAREN
 ;
syntax EQUIV
        = 
        "\<-\>"
 ;
syntax SqlAttrRefList
        = SqlAttrRefList l COMMA SqlAttrRef a
        | a: SqlAttrRef
 ;
syntax LPAREN
        = 
        "("
 ;
syntax EXTENSION
        = 
        "extension"
 ;
syntax DeltaParamDecl
        = p: ParamDecl
        | TYPE_IDENTIFIER id HasCondition c
 ;
syntax ConstructorArg
        = u: Datatypeuse
        | Datatypeuse u IDENTIFIER id
 ;
syntax SUSPEND
        = 
        "suspend"
 ;
syntax THEN
        = 
        "then"
 ;
syntax FunctionalModifier
        = MODIFIES DatatypeDecl datatypedecl
        | ADDS FunctionDecl functiondecl
        | ADDS DatatypeDecl datatypedecl
        | MODIFIES TypesynDecl typesyndecl
        | ADDS TypesynDecl typesyndecl
 ;
syntax EffExp
        = AsyncCall
        | NewlocExp "/"
        | PureExpPrefix p DOT GET
        | NewExp
        | SyncCall
        | IncompleteExp
        | SQL LPAREN SqlExp e RPAREN
        | OriginalCall
 ;
syntax FnappListExp
        = 
        Name f ListLiteralExp l
 ;
syntax LetExp
        = 
        LET LPAREN ParamDecl var RPAREN ASSIGN DataExp val IN DataExp exp
 ;
syntax ClassDecl
        = 
        CLASS TYPE_IDENTIFIER id LBRACE RBRACE
 ;
syntax DeltaDeclList
        = t: DeltaDecl
        | DeltaDeclList l DeltaDecl t
 ;
syntax PatternList
        = i: Pattern
        | PatternList l COMMA Pattern i
 ;
syntax SqlTupleScalarFunctionSum
        = SqlTupleScalarFunctionSum f1 PLUS SqlTupleScalarFunctionProduct f2
        | SqlTupleScalarFunctionSum f1 MINUS SqlTupleScalarFunctionProduct f2
        | SqlTupleScalarFunctionProduct
        | SqlTupleScalarFunctionSum f1 MINUS LPAREN SqlTupleScalarFunctionSum f2 RPAREN
 ;
syntax InfModifierFragment
        = REMOVES Methodsig ms SEMICOLON
        | ADDS Methodsig ms SEMICOLON
 ;
syntax DeltaParamDecls
        = 
        LPAREN RPAREN
 ;
syntax LTEQ
        = 
        "\<="
 ;
syntax MainBlock
        = 
        LBRACE RBRACE
 ;
syntax AS
        = 
        "as"
 ;
syntax CompoundStmt
        = IfThenElseStmt
        | BlockWithoutAnnotations
        | WhileStmt
 ;
syntax DeltaparamList
        = DeltaparamList l COMMA Deltaparam p
        | p: Deltaparam
 ;
syntax Methodsig
        = 
        TypeExp returntype IDENTIFIER id LPAREN RPAREN
 ;
syntax SqlTupleConstantList
        = SqlTupleConstantList l COMMA SqlTupleConstant c
        | c: SqlTupleConstant
 ;
syntax NewlocExp
        = 
        NEW LOC
 ;
syntax BANG
        = 
        "!"
 ;
syntax DeltaclauseList
        = DeltaclauseList l DeltaClause dc SEMICOLON
        | ()
 ;
syntax SET
        = 
        "set"
 ;
syntax PureExpNoIf
        = ConstructorExp
        | NULL
        | FnappExp
        | VarOrFieldRef
        | CaseExp
        | THIS
        | LetExp
        | FnappListExp
 ;
syntax OptfeatureList
        = OPTFEATURES FeatureList l SEMICOLON
        | ()
 ;
syntax DatatypeuseList
        = DatatypeuseList l COMMA Datatypeuse i
        | i: Datatypeuse
 ;
syntax REMOVES
        = 
        "removes"
 ;
syntax ListLiteralExp
        = 
        LBRACKET RBRACKET
 ;
syntax MaddExp
        = MaddExp e1 PLUS MmultExp e2
        | e: MmultExp
        | MaddExp e1 MINUS MmultExp e2
 ;
syntax DeltaList
        = id: Delta
        | DeltaList l COMMA Delta id
 ;
syntax ConstructorPattern
        = 
        co: TypeName
 ;
syntax BY
        = 
        "by"
 ;
syntax FactorAppcond
        = NEGATION FactorAppcond ac
        | LPAREN Appcond ac RPAREN
        | f: Feature
 ;
syntax SqlStringLiteral
        = s: 
        SQLSTRINGLITERAL
 ;
syntax MINUS
        = 
        "-"
 ;
syntax ASC
        = 
        "asc"
 ;
syntax VarDecl
        = TypeExp t IDENTIFIER i ASSIGN Exp e
        | TypeExp t IDENTIFIER i
 ;
syntax Group
        = 
        GROUP Cardinality c LBRACE FnodeList fs RBRACE
 ;
syntax GROUP
        = 
        "group"
 ;
syntax PRIME
        = 
        "'"
 ;
syntax EQEQ
        = 
        "=="
 ;
syntax GTEQ
        = 
        "\>="
 ;
syntax ModifierFragment
        = ADDS Method m
        | REMOVES FieldDecl f SEMICOLON
        | MODIFIES Method m
        | ADDS FieldDecl f SEMICOLON
        | REMOVES Methodsig ms SEMICOLON
 ;
syntax QualifiedInterfaceDecl
        = 
        INTERFACE TypeName id LBRACE RBRACE
 ;
syntax DeltaDecl
        = 
        DELTA TYPE_IDENTIFIER id SEMICOLON
 ;
syntax TypeExp
        = n: TypeName
        | TypeName n LT DatatypeuseList p GT
 ;
syntax INTO
        = 
        "into"
 ;
syntax MODULE
        = 
        "module"
 ;
syntax Block
        = 
        b: BlockWithoutAnnotations
 ;
syntax SqlRelationRef
        = SqlRelationRef r1 LEFT JOIN SqlAtomicRelationRef r2
        | SqlAtomicRelationRef
        | SqlRelationRef r1 RIGHT JOIN SqlAtomicRelationRef r2
        | SqlRelationRef r1 JOIN SqlAtomicRelationRef r2
 ;
syntax AnyName
        = TypeName
        | Name
 ;
syntax AttrAssignments
        = 
        LBRACE AttrAssignmentList l RBRACE
 ;
syntax DIV
        = 
        "/"
 ;
syntax FromCondition
        = 
        FROM Appcond ac
 ;
syntax AdaptationList
        = AdaptationList l Adaptation ad
        | ad: Adaptation
 ;
syntax SqlTupleConstant
        = MINUS IntLiteral i
        | i: IntLiteral
        | s: SqlStringLiteral
        | FALSE
        | TRUE
        | r: VarOrFieldRef
 ;
syntax NewExp
        = 
        NEW TypeName i LPAREN RPAREN
 ;
syntax EXTENDS
        = 
        "extends"
 ;
syntax WhileStmt
        = 
        WHILE LPAREN DataExp e1 RPAREN Stmt s1
 ;
syntax NULL
        = 
        "null"
 ;
syntax ModuleModifier
        = m: OoModifier
        | m: FunctionalModifier
 ;
syntax NEW
        = 
        "new"
 ;
syntax QualifiedTypeName
        = 
        TypeName qn DOT TYPE_IDENTIFIER n
 ;
syntax TRUE
        = 
        "true"
 ;
syntax SqlExp
        = INSERT INTO SqlRelationRef r LPAREN SqlAttrRefList a RPAREN VALUES LPAREN SqlTupleConstantList v RPAREN
        | UPDATE SqlRelationRef r SET SqlAttrAssignmentList a OptSqlCondition c
        | SELECT DISTINCT SqlAttrsDef a FROM SqlRelationRef r OptSqlCondition c SqlGroupingAttributes g SqlOrderingAttributes o
        | SELECT SqlAttrsDef a FROM SqlRelationRef r OptSqlCondition c SqlGroupingAttributes g SqlOrderingAttributes o
 ;
syntax LT
        = 
        "\<"
 ;
syntax DURATION
        = 
        "duration"
 ;
syntax CorefeatureList
        = ()
        | COREFEATURES FeatureList l SEMICOLON
 ;
syntax CORE
        = 
        "core"
 ;
syntax CRITICAL
        = 
        "critical"
 ;
syntax PLUS
        = 
        "+"
 ;
syntax Delta
        = id: 
        TYPE_IDENTIFIER
 ;
syntax DELTA
        = 
        "delta"
 ;
syntax ImplementInterfacesAdd
        = 
        ADDS IfnameList i
 ;
syntax MeqExp
        = MeqExp e1 EQEQ MrelExp e2
        | MrelExp
        | MeqExp e1 NOTEQ MrelExp e2
 ;
syntax IMPORT
        = 
        "import"
 ;
syntax ModifierFragmentList
        = f: ModifierFragment
        | ModifierFragmentList l ModifierFragment f
 ;
syntax IfExp
        = 
        IF DataExp e THEN DataExp c ELSE DataExp a
 ;
syntax SQL
        = "update"
        | "end"
        | "select"
        | "where"
        | "left"
        | "as"
        | "by"
        | "set"
        | "true"
        | "null"
        | "and"
        | "sql"
        | "or"
        | "count"
        | "join"
        | "values"
        | "false"
        | "is"
        | "else"
        | "desc"
        | "insert"
        | "not"
        | "distinct"
        | "right"
        | "then"
        | "group"
        | "asc"
        | "into"
        | "from"
        | "case"
        | "when"
        | "order"
 ;
syntax FROM
        = 
        "from"
 ;
syntax SqlAttrAssignmentList
        = a: SqlAttrAssignment
        | SqlAttrAssignmentList l COMMA SqlAttrAssignment a
 ;
syntax DATA
        = 
        "data"
 ;
syntax AttributeConstraintList
        = AttributeConstraintList acl TYPE_IDENTIFIER t IDENTIFIER id SEMICOLON "/"
        | AttributeConstraintList acl EXCLUDE COLON Featvar f SEMICOLON
        | AttributeConstraintList acl REQUIRE COLON Featvar f SEMICOLON
        | AttributeConstraintList acl TYPE_IDENTIFIER t IDENTIFIER id IN LBRACKET BoundaryInt b1 UNTIL BoundaryInt b2 RBRACKET SEMICOLON
        | AttributeConstraintList acl IFIN COLON Mexp e SEMICOLON
        | "/"
        | AttributeConstraintList acl TYPE_IDENTIFIER t LBRACKET BoundaryInt b1 UNTIL BoundaryInt b2 RBRACKET IDENTIFIER id SEMICOLON
        | AttributeConstraintList acl TYPE_IDENTIFIER t IDENTIFIER id IN LBRACE IntList il RBRACE SEMICOLON
        | AttributeConstraintList acl IFOUT COLON Mexp e SEMICOLON
        | AttributeConstraintList acl Mexp e SEMICOLON
 ;
syntax AND
        = 
        "and"
 ;
syntax EXPORT
        = 
        "export"
 ;
syntax AnyNameList
        = AnyNameList l COMMA AnyName n
        | n: AnyName
 ;
syntax ExtendsInterfaces
        = 
        EXTENDS IfnameList i
 ;
syntax IMPLEMENTS
        = 
        "implements"
 ;
syntax SqlAtomicRelationRef
        = r: StringLiteral
        | r: VarOrFieldRef
 ;
syntax AttrAssignment
        = IDENTIFIER n ASSIGN TYPE_IDENTIFIER c
        | IDENTIFIER n ASSIGN INTLITERAL i
 ;
syntax IncompleteExp
        = NEW
        | PureExpPrefix callee BANG b
        | PureExpPrefix callee DOT d
 ;
syntax AFTER
        = 
        "after"
 ;
syntax ImplementInterfaces
        = 
        IMPLEMENTS IfnameList i
 ;
syntax EXCLUDE
        = 
        "exclude"
 ;
syntax IfThenElseStmt
        = IF LPAREN DataExp e1 RPAREN Stmt s1
        | IF LPAREN DataExp e1 RPAREN Stmt s1 ELSE Stmt s2
 ;
syntax SyncCall
        = PureExpPrefix callee DOT IDENTIFIER method LPAREN RPAREN
        | THIS callee DOT IDENTIFIER method LPAREN RPAREN
 ;
syntax CompilationUnit
        = 
        fm: Featuremodeldecl
 ;
syntax Import
        = IMPORT AnyNameList l FROM ModuleName m SEMICOLON
        | IMPORT MULT FROM ModuleName m SEMICOLON
        | IMPORT AnyNameList l SEMICOLON
 ;
syntax HasCondition
        = HASINTERFACE TypeName n
        | HASMETHOD Methodsig ms
        | HASFIELD FieldDecl f
 ;
syntax USES
        = 
        "uses"
 ;
syntax SqlTupleScalarFunctionQuotient
        = SqlTupleScalarFunctionQuotient f1 DIV LPAREN SqlTupleScalarFunctionSum f2 RPAREN
        | SqlTupleScalarFunctionQuotient f1 DIV AtomicSqlTupleScalarFunction f2
        | AtomicSqlTupleScalarFunction
 ;
syntax Export
        = EXPORT MULT FROM ModuleName m SEMICOLON
        | EXPORT AnyNameList l SEMICOLON
        | EXPORT AnyNameList l FROM ModuleName m SEMICOLON
        | EXPORT MULT SEMICOLON
 ;
syntax SqlAndCondition
        = SqlCondition
        | SqlAndCondition c1 AND op SqlCondition c2
 ;
syntax OPTFEATURES
        = 
        "features"
 ;
syntax DataConstructor
        = 
        co: TYPE_IDENTIFIER
 ;
syntax ORIGINAL
        = 
        "original"
 ;
syntax SqlTupleScalarFunctionProduct
        = SqlTupleScalarFunctionQuotient
        | SqlTupleScalarFunctionProduct f1 MULT LPAREN SqlTupleScalarFunctionSum f2 RPAREN
        | SqlTupleScalarFunctionProduct f1 MULT SqlTupleScalarFunctionQuotient f2
 ;
syntax SqlAttrsDef
        = MULT
        | l: SqlAttrDefList
 ;
syntax HASINTERFACE
        = 
        "hasInterface"
 ;
syntax AddExp
        = e: MultExp
        | AddExp e1 MINUS MultExp e2
        | AddExp e1 PLUS MultExp e2
 ;
syntax DeltaAccessList
        = t: DeltaAccess
        | DeltaAccessList l DeltaAccess t
 ;
syntax HASMETHOD
        = 
        "hasMethod"
 ;
syntax RPAREN
        = 
        ")"
 ;
syntax MOVECOGTO
        = 
        "movecogto"
 ;
syntax PureExp
        = FatherExp "/"
        | LocationExp "/"
        | IfExp
        | PureExpNoIf
 ;
syntax DEF
        = 
        "def"
 ;
syntax OR
        = 
        "or"
 ;
syntax ConstructorExp
        = f: TypeName
        | TypeName f LPAREN RPAREN
 ;
syntax INTLITERAL
        = 
        ()
 ;
syntax IntLiteral
        = i: 
        INTLITERAL
 ;
syntax MmultExp
        = MmultExp e1 DIV MfactorExp e2
        | MmultExp e1 MOD MfactorExp e2
        | e: MfactorExp
        | MmultExp e1 MULT MfactorExp e2
 ;
syntax OriginalCall
        = ORIGINAL LPAREN RPAREN
        | DeltaId delta DOTORIGINAL LPAREN RPAREN
        | CORE DOTORIGINAL LPAREN RPAREN
 ;
syntax SqlOrCondition
        = SqlOrCondition c1 OR op SqlAndCondition c2
        | SqlAndCondition
 ;
syntax Stmt
        = s: CompoundStmt
        | StmtWithoutAnnotations s SEMICOLON
 ;
syntax RBRACKET
        = 
        "]"
 ;
syntax ParamDeclList
        = ParamDeclList l COMMA ParamDecl i
        | i: ParamDecl
 ;
syntax Deltaparam
        = TYPE_IDENTIFIER fid DOT IDENTIFIER aid
        | i: INTLITERAL
        | c: TYPE_IDENTIFIER
 ;
syntax ADDS
        = 
        "adds"
 ;
syntax SqlTupleScalarFunctionConcat
        = SqlTupleScalarFunctionConcat f1 CONCAT SqlTupleScalarFunctionSum f2
        | SqlTupleScalarFunctionSum
 ;
syntax BAR
        = 
        "|"
 ;
syntax DataExp
        = 
        OrExp
 ;
syntax RIGHT
        = 
        "right"
 ;
syntax Exp
        = e: DataExp
        | e: EffExp
 ;
syntax DOTORIGINAL
        = 
        ".original"
 ;
syntax LET
        = 
        "let"
 ;
syntax OROR
        = 
        "||"
 ;
syntax TypeName
        = QualifiedTypeName
        | SimpleTypeName
 ;
syntax IFIN
        = 
        "ifin"
 ;
syntax SqlTupleCaseFunction
        = 
        CASE SqlTupleCaseBranches b ELSE SqlTupleScalarFunction f END
 ;
syntax FALSE
        = 
        "false"
 ;
syntax Datatypeuse
        = TypeName n LT DatatypeuseList p GT
        | n: TypeName
 ;
syntax SUBLOC
        = 
        "move"
 ;
syntax FatherExp
        = 
        FATHER LPAREN PureExp param RPAREN
 ;
syntax RBRACE
        = 
        "}"
 ;
syntax Method
        = CRITICAL Methodsig ms Block b
        | Methodsig ms Block b
 ;
syntax AndAppcond
        = FactorAppcond
        | AndAppcond ac1 ANDAND FactorAppcond ac2
 ;
syntax IntList
        = IntList il COMMA MINUS INTLITERAL i
        | IntList il COMMA INTLITERAL i
        | MINUS INTLITERAL i
        | i: INTLITERAL
 ;
syntax SqlCondition
        = SqlTupleScalarFunction f1 SqlComparisonRelation r SqlTupleScalarFunction f2
        | StringLiteral a IS NULL
        | NOT SqlCondition c
        | LPAREN SqlOrCondition c RPAREN
 ;
syntax SqlGroupingAttributes
        = GROUP BY SqlAttrRefList a
        | ()
 ;
syntax Datatypeparam
        = id: 
        TYPE_IDENTIFIER
 ;
syntax PatternParams
        = 
        LPAREN RPAREN
 ;
syntax ModuleDeclList
        = ModuleDeclList l ModuleDecl t
        | t: ModuleDecl
 ;
syntax CONCAT
        = 
        "||"
 ;
syntax CaseBranch
        = 
        Pattern lhs RARROW DataExp rhs SEMICOLON
 ;
syntax GUARDAND
        = 
        "&"
 ;
syntax WHILE
        = 
        "while"
 ;
syntax Deltaparams
        = 
        LPAREN DeltaparamList l RPAREN
 ;
syntax DeltaAccess
        = 
        USES ModuleName m SEMICOLON
 ;
syntax IF
        = 
        "if"
 ;
syntax OrExp
        = OrExp e1 OROR AndExp e2
        | AndExp
 ;
syntax SqlOrderingAttribute
        = DataExp e ASC
        | DataExp e DESC
        | e: DataExp
 ;
syntax ALLOF
        = 
        "allof"
 ;
syntax INTERFACE
        = 
        "interface"
 ;
syntax QualifiedClassDecl
        = 
        CLASS TypeName id LBRACE RBRACE
 ;
syntax DeltaClause
        = 
        DELTA Deltaspec d
 ;
syntax QualifiedName
        = 
        TypeName qn DOT IDENTIFIER n
 ;
syntax FnappExp
        = 
        Name f LPAREN RPAREN
 ;
syntax IN
        = 
        "in"
 ;
syntax VALUES
        = 
        "values"
 ;
syntax OptSqlCondition
        = ()
        | WHERE SqlOrCondition c
 ;
syntax LOC
        = 
        "location"
 ;
syntax ORDER
        = 
        "order"
 ;
syntax IS
        = 
        "is"
 ;
syntax JOIN
        = 
        "join"
 ;
syntax LAYOUT
        = Comment
        | ()
 ;
syntax DOT
        = 
        "."
 ;
syntax GET
        = 
        "get"
 ;
syntax AWAIT
        = 
        "await"
 ;
syntax ModuleName
        = 
        TypeName
 ;
syntax Adaptation
        = 
        TYPE_IDENTIFIER product BY TYPE_IDENTIFIER update SEMICOLON
 ;
syntax MULT
        = 
        "*"
 ;
syntax CASE
        = 
        "case"
 ;
syntax RETURN
        = 
        "return"
 ;
syntax DataExpList
        = i: DataExp
        | DataExpList l COMMA DataExp i
 ;
syntax UNTIL
        = 
        ".."
 ;
syntax StringLiteral
        = s: 
        STRINGLITERAL
 ;
syntax SqlTupleScalarFunction
        = 
        SqlTupleScalarFunctionConcat
 ;
syntax COLON
        = 
        ":"
 ;
syntax MethodList
        = MethodList l Method i
        | i: Method
 ;
syntax USCORE
        = 
        "_"
 ;
syntax Featuremodeldecl
        = Featuremodeldecl l ROOT FeatureDecl f
        | ()
        | Featuremodeldecl l EXTENSION Fextension ext
 ;
syntax InitBlock
        = 
        Block
 ;
syntax TYPE
        = 
        "type"
 ;
syntax WHEN
        = 
        "when"
 ;
syntax ELSE
        = 
        "else"
 ;
syntax ASSERT
        = 
        "assert"
 ;
syntax LBRACE
        = 
        "{"
 ;
syntax DatatypeparamList
        = p: Datatypeparam
        | DatatypeparamList l COMMA Datatypeparam p
 ;
syntax StmtWithoutAnnotations
        = ASSERT DataExp e
        | MOVECOGTO DataExp
        | RETURN Exp e
        | AWAIT Guard
        | SKIP
        | e: EffExp
        | SUBLOC PureExp sub IN PureExp father
        | vd: VarDecl
        | SUSPEND
        | REBIND Exp obj COLON IDENTIFIER field ASSIGN Exp e
        | DURATION LPAREN DataExp min COMMA DataExp max RPAREN
        | VarOrFieldRef r ASSIGN Exp e
        | REBIND IDENTIFIER field ASSIGN Exp e
 ;
syntax REQUIRE
        = 
        "require"
 ;
syntax BoundaryInt
        = MULT
        | MINUS INTLITERAL i
        | i: INTLITERAL
 ;
syntax PRODUCTLINE
        = 
        "productline"
 ;
syntax OrAppcond
        = AndAppcond
        | OrAppcond ac1 OROR AndAppcond ac2
 ;
syntax Annotation
        = LBRACKET TypeExp type COLON DataExp exp RBRACKET
        | LBRACKET DataExp exp RBRACKET
 ;
syntax SqlTupleCaseBranch
        = 
        WHEN SqlOrCondition c THEN SqlTupleScalarFunction f
 ;
syntax Ifname
        = n: 
        TypeName
 ;
syntax Fnode
        = OPT FeatureDecl f
        | f: FeatureDecl
 ;
syntax AtomicSqlTupleScalarFunction
        = a: StringLiteral
        | SqlTupleConstant
        | SqlTupleCaseFunction
 ;
syntax RelationalExp
        = RelationalExp e1 GTEQ AddExp e2
        | AddExp
        | RelationalExp e1 GT AddExp e2
        | RelationalExp e1 LT AddExp e2
        | RelationalExp e1 LTEQ AddExp e2
 ;
syntax ModuleDecl
        = 
        n: ModuleNameDecl
 ;
syntax SqlAttrRef
        = 
        DataExp
 ;
syntax MandExp
        = MandExp e1 ANDAND MimplExp e2
        | MimplExp
 ;
syntax Deltaspec
        = 
        id: TYPE_IDENTIFIER
 ;
syntax MrelExp
        = MrelExp e1 LTEQ MaddExp e2
        | MrelExp e1 LT MaddExp e2
        | MrelExp e1 GT MaddExp e2
        | MaddExp
        | MrelExp e1 GTEQ MaddExp e2
 ;
syntax FATHER
        = 
        "father"
 ;
syntax DeltaParamDeclList
        = i: DeltaParamDecl
        | DeltaParamDeclList l COMMA DeltaParamDecl i
 ;
syntax COG
        = 
        "cog"
 ;
syntax Cog
        = 
        COG
 ;
syntax CLASS
        = 
        "class"
 ;
syntax NEGATION
        = 
        "~"
 ;
syntax FieldDeclList
        = FieldDecl i SEMICOLON
        | FieldDeclList l FieldDecl i SEMICOLON
 ;
syntax ProductLine
        = 
        PRODUCTLINE TYPE_IDENTIFIER id SEMICOLON OptfeatureList o CorefeatureList c DeltaclauseList d
 ;
syntax InterfaceDecl
        = 
        INTERFACE TYPE_IDENTIFIER id LBRACE RBRACE
 ;
syntax Cardinality
        = LBRACKET INTLITERAL i UNTIL MULT RBRACKET
        | ONEOF
        | LBRACKET INTLITERAL i1 UNTIL INTLITERAL i2 RBRACKET
        | ALLOF
 ;
syntax Factor
        = Literal
        | MINUS Factor e
        | PureExp
        | LPAREN OrExp e RPAREN
        | NEGATION Factor b
 ;
syntax DataConstructorParams
        = 
        LPAREN RPAREN
 ;
syntax SqlComparisonRelation
        = LT
        | GT
        | EQ
        | NOTEQ
        | GTEQ
        | LTEQ
 ;
syntax Pattern
        = l: Literal
        | USCORE
        | v: IDENTIFIER
        | ConstructorPattern
 ;
syntax SKIP
        = 
        "skip"
 ;
syntax AttrAssignmentList
        = a: AttrAssignment
        | AttrAssignmentList l COMMA AttrAssignment a
 ;
syntax SimpleName
        = id: 
        IDENTIFIER
 ;
