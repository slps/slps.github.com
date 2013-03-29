@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Abs

syntax SqlAttrDefList
        = a: SqlAttrDef
        | SqlAttrDefList l COMMA SqlAttrDef a
 ;
syntax ABSGoal
        = cu: 
        CompilationUnit
 ;
syntax Guard
        = e: DataExp
        | VarOrFieldRef r QMARK
        | BAR Exp e BAR
        | DURATION LPAREN DataExp min COMMA DataExp max RPAREN
        | Guard g1 GUARDAND Guard g2
 ;
syntax ModuleNameDecl
        = 
        MODULE ModuleName n SEMICOLON
 ;
syntax DataConstructorList
        = i: DataConstructor
        | DataConstructorList l BAR DataConstructor i
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
syntax FeatureList
        = f: Feature
        | FeatureList l COMMA Feature f
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
syntax DatatypeparamListDecl
        = 
        LT DatatypeparamList l GT
 ;
syntax ParamDecls
        = 
        LPAREN RPAREN
 ;
syntax SqlOrderingAttributes
        = ()
        | ORDER BY SqlOrderingAttributeList l
 ;
syntax StmtList
        = StmtList l Stmt i
        | i: Stmt
 ;
syntax FieldDecl
        = PORT TypeExp t IDENTIFIER i
        | TypeExp t IDENTIFIER i
        | PORT TypeExp t IDENTIFIER i ASSIGN DataExp e
        | TypeExp t IDENTIFIER i ASSIGN DataExp e
 ;
syntax EqualityExp
        = EqualityExp e1 EQEQ RelationalExp e2
        | RelationalExp
        | EqualityExp e1 NOTEQ RelationalExp e2
 ;
syntax VarOrFieldRef
        = THIS callee BANG b
        | n: IDENTIFIER
        | THIS callee DOT d
        | THIS DOT IDENTIFIER id
 ;
syntax Appcond
        = 
        OrAppcond
 ;
syntax FeatureDecl
        = f: TYPE_IDENTIFIER
        | TYPE_IDENTIFIER f LBRACE AttributeConstraintList acl RBRACE
 ;
syntax MfactorExp
        = MINUS MfactorExp e
        | MlitExp
        | NEGATION MfactorExp e
        | LPAREN Mexp e RPAREN
 ;
syntax ImplementInterfacesRemove
        = 
        REMOVES IfnameList i
 ;
syntax CaseExp
        = 
        CASE DataExp caseterm LBRACE RBRACE
 ;
syntax MultExp
        = MultExp e1 MULT Factor e2
        | MultExp e1 MOD Factor e2
        | f: Factor
        | MultExp e1 DIV Factor e2
 ;
syntax Name
        = SimpleName
        | QualifiedName
 ;
syntax SqlAggregateFunction
        = COUNT LPAREN MULT RPAREN
        | f: SqlTupleScalarFunction
        | IDENTIFIER i LPAREN SqlTupleScalarFunction f RPAREN
 ;
syntax IDENTIFIER
        = 
        ()
 ;
syntax ParamDecl
        = 
        TypeExp t IDENTIFIER i
 ;
syntax Mexp
        = Mexp e1 OROR MandExp e2
        | MandExp
 ;
syntax AfterCondition
        = 
        AFTER DeltaList l
 ;
syntax Fextension
        = 
        TYPE_IDENTIFIER f LBRACE AttributeConstraintList acl RBRACE
 ;
syntax SqlAttrDef
        = SqlAggregateFunction fun AS DataExp e
        | f: Factor
 ;
syntax FunctionDecl
        = DEF Datatypeuse t IDENTIFIER fn DatatypeparamListDecl p LPAREN RPAREN ASSIGN ExpFunctionDef ef SEMICOLON
        | DEF Datatypeuse t IDENTIFIER fn LPAREN RPAREN ASSIGN ExpFunctionDef ef SEMICOLON
        | DEF Datatypeuse t IDENTIFIER fn LPAREN RPAREN ASSIGN BUILTIN SEMICOLON
        | DEF Datatypeuse t IDENTIFIER fn DatatypeparamListDecl p LPAREN RPAREN ASSIGN BUILTIN SEMICOLON
 ;
syntax ModuleModifierList
        = ModuleModifierList l ModuleModifier m
        | m: ModuleModifier
 ;
syntax DatatypeDecl
        = DATA TYPE_IDENTIFIER id SEMICOLON
        | DATA TYPE_IDENTIFIER id ASSIGN DataConstructorList l SEMICOLON
 ;
syntax TYPE_IDENTIFIER
        = 
        TYPE_IDENTIFIER_OLD
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
syntax Feature
        = TYPE_IDENTIFIER id PRIME
        | id: TYPE_IDENTIFIER
 ;
syntax SimpleTypeName
        = id: 
        TYPE_IDENTIFIER
 ;
syntax PureExpPrefix
        = LPAREN IfExp e RPAREN
        | PureExpNoIf
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
        = PureExpPrefix callee BANG IDENTIFIER method LPAREN RPAREN
        | THIS callee BANG IDENTIFIER method LPAREN RPAREN
 ;
syntax ConstructorArgList
        = ConstructorArgList l COMMA ConstructorArg a
        | a: ConstructorArg
 ;
syntax SqlOrderingAttributeList
        = SqlOrderingAttributeList l COMMA SqlOrderingAttribute a
        | a: SqlOrderingAttribute
 ;
syntax InfModifierFragmentList
        = InfModifierFragmentList l InfModifierFragment f
        | f: InfModifierFragment
 ;
syntax AndExp
        = AndExp e1 ANDAND EqualityExp e2
        | EqualityExp
 ;
syntax WhenCondition
        = TO Appcond ac
        | WHEN Appcond ac
 ;
syntax MethodsigList
        = Methodsig m SEMICOLON
        | MethodsigList l Methodsig m SEMICOLON
 ;
syntax SqlAttrAssignment
        = 
        DataExp e EQ SqlTupleScalarFunction f
 ;
syntax OoModifier
        = REMOVES CLASS TypeName id SEMICOLON
        | MODIFIES INTERFACE TypeName id LBRACE RBRACE
        | ADDS QualifiedInterfaceDecl ifacedecl
        | MODIFIES CLASS TypeName id LBRACE RBRACE
        | ADDS QualifiedClassDecl classdecl
 ;
syntax MimplExp
        = MeqExp
        | MimplExp e1 IMPLIES MeqExp e2
        | MimplExp e1 EQUIV MeqExp e2
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
        = ()
        | FnodeList l COMMA Fnode f
        | f: Fnode
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
syntax SqlAttrRefList
        = SqlAttrRefList l COMMA SqlAttrRef a
        | a: SqlAttrRef
 ;
syntax DeltaParamDecl
        = p: ParamDecl
        | TYPE_IDENTIFIER id HasCondition c
 ;
syntax ConstructorArg
        = u: Datatypeuse
        | Datatypeuse u IDENTIFIER id
 ;
syntax FunctionalModifier
        = ADDS TypesynDecl typesyndecl
        | MODIFIES TypesynDecl typesyndecl
        | ADDS DatatypeDecl datatypedecl
        | ADDS FunctionDecl functiondecl
        | MODIFIES DatatypeDecl datatypedecl
 ;
syntax EffExp
        = AsyncCall
        | NewlocExp "/"
        | NewExp
        | IncompleteExp
        | SyncCall
        | SQL LPAREN SqlExp e RPAREN
        | OriginalCall
        | PureExpPrefix p DOT GET
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
        = PatternList l COMMA Pattern i
        | i: Pattern
 ;
syntax SqlTupleScalarFunctionSum
        = SqlTupleScalarFunctionSum f1 MINUS SqlTupleScalarFunctionProduct f2
        | SqlTupleScalarFunctionSum f1 PLUS SqlTupleScalarFunctionProduct f2
        | SqlTupleScalarFunctionSum f1 MINUS LPAREN SqlTupleScalarFunctionSum f2 RPAREN
        | SqlTupleScalarFunctionProduct
 ;
syntax InfModifierFragment
        = REMOVES Methodsig ms SEMICOLON
        | ADDS Methodsig ms SEMICOLON
 ;
syntax DeltaParamDecls
        = 
        LPAREN RPAREN
 ;
syntax MainBlock
        = 
        LBRACE RBRACE
 ;
syntax DeltaparamList
        = DeltaparamList l COMMA Deltaparam p
        | p: Deltaparam
 ;
syntax CompoundStmt
        = IfThenElseStmt
        | BlockWithoutAnnotations
        | WhileStmt
 ;
syntax Methodsig
        = 
        TypeExp returntype IDENTIFIER id LPAREN RPAREN
 ;
syntax SqlTupleConstantList
        = c: SqlTupleConstant
        | SqlTupleConstantList l COMMA SqlTupleConstant c
 ;
syntax NewlocExp
        = 
        NEW LOC
 ;
syntax DeltaclauseList
        = ()
        | DeltaclauseList l DeltaClause dc SEMICOLON
 ;
syntax PureExpNoIf
        = ConstructorExp
        | NULL
        | FnappExp
        | CaseExp
        | VarOrFieldRef
        | THIS
        | FnappListExp
        | LetExp
 ;
syntax DatatypeuseList
        = i: Datatypeuse
        | DatatypeuseList l COMMA Datatypeuse i
 ;
syntax OptfeatureList
        = OPTFEATURES FeatureList l SEMICOLON
        | ()
 ;
syntax ListLiteralExp
        = 
        LBRACKET RBRACKET
 ;
syntax MaddExp
        = MaddExp e1 MINUS MmultExp e2
        | e: MmultExp
        | MaddExp e1 PLUS MmultExp e2
 ;
syntax DeltaList
        = DeltaList l COMMA Delta id
        | id: Delta
 ;
syntax ConstructorPattern
        = 
        co: TypeName
 ;
syntax FactorAppcond
        = LPAREN Appcond ac RPAREN
        | f: Feature
        | NEGATION FactorAppcond ac
 ;
syntax SqlStringLiteral
        = s: 
        SQLSTRINGLITERAL
 ;
syntax VarDecl
        = TypeExp t IDENTIFIER i ASSIGN Exp e
        | TypeExp t IDENTIFIER i
 ;
syntax Group
        = 
        GROUP Cardinality c LBRACE FnodeList fs RBRACE
 ;
syntax ModifierFragment
        = REMOVES FieldDecl f SEMICOLON
        | MODIFIES Method m
        | ADDS FieldDecl f SEMICOLON
        | REMOVES Methodsig ms SEMICOLON
        | ADDS Method m
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
syntax Block
        = 
        b: BlockWithoutAnnotations
 ;
syntax SqlRelationRef
        = SqlRelationRef r1 JOIN SqlAtomicRelationRef r2
        | SqlRelationRef r1 RIGHT JOIN SqlAtomicRelationRef r2
        | SqlAtomicRelationRef
        | SqlRelationRef r1 LEFT JOIN SqlAtomicRelationRef r2
 ;
syntax AnyName
        = TypeName
        | Name
 ;
syntax AttrAssignments
        = 
        LBRACE AttrAssignmentList l RBRACE
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
        = i: IntLiteral
        | s: SqlStringLiteral
        | TRUE
        | MINUS IntLiteral i
        | FALSE
        | r: VarOrFieldRef
 ;
syntax NewExp
        = 
        NEW TypeName i LPAREN RPAREN
 ;
syntax WhileStmt
        = 
        WHILE LPAREN DataExp e1 RPAREN Stmt s1
 ;
syntax ModuleModifier
        = m: OoModifier
        | m: FunctionalModifier
 ;
syntax QualifiedTypeName
        = 
        TypeName qn DOT TYPE_IDENTIFIER n
 ;
syntax SqlExp
        = INSERT INTO SqlRelationRef r LPAREN SqlAttrRefList a RPAREN VALUES LPAREN SqlTupleConstantList v RPAREN
        | UPDATE SqlRelationRef r SET SqlAttrAssignmentList a OptSqlCondition c
        | SELECT SqlAttrsDef a FROM SqlRelationRef r OptSqlCondition c SqlGroupingAttributes g SqlOrderingAttributes o
        | SELECT DISTINCT SqlAttrsDef a FROM SqlRelationRef r OptSqlCondition c SqlGroupingAttributes g SqlOrderingAttributes o
 ;
syntax CorefeatureList
        = ()
        | COREFEATURES FeatureList l SEMICOLON
 ;
syntax Delta
        = id: 
        TYPE_IDENTIFIER
 ;
syntax ImplementInterfacesAdd
        = 
        ADDS IfnameList i
 ;
syntax MeqExp
        = MrelExp
        | MeqExp e1 NOTEQ MrelExp e2
        | MeqExp e1 EQEQ MrelExp e2
 ;
syntax ModifierFragmentList
        = f: ModifierFragment
        | ModifierFragmentList l ModifierFragment f
 ;
syntax IfExp
        = 
        IF DataExp e THEN DataExp c ELSE DataExp a
 ;
syntax SqlAttrAssignmentList
        = a: SqlAttrAssignment
        | SqlAttrAssignmentList l COMMA SqlAttrAssignment a
 ;
syntax AttributeConstraintList
        = AttributeConstraintList acl TYPE_IDENTIFIER t IDENTIFIER id IN LBRACKET BoundaryInt b1 UNTIL BoundaryInt b2 RBRACKET SEMICOLON
        | AttributeConstraintList acl TYPE_IDENTIFIER t IDENTIFIER id SEMICOLON "/"
        | AttributeConstraintList acl EXCLUDE COLON Featvar f SEMICOLON
        | AttributeConstraintList acl TYPE_IDENTIFIER t IDENTIFIER id IN LBRACE IntList il RBRACE SEMICOLON
        | AttributeConstraintList acl TYPE_IDENTIFIER t LBRACKET BoundaryInt b1 UNTIL BoundaryInt b2 RBRACKET IDENTIFIER id SEMICOLON
        | AttributeConstraintList acl Mexp e SEMICOLON
        | "/"
        | AttributeConstraintList acl REQUIRE COLON Featvar f SEMICOLON
        | AttributeConstraintList acl IFIN COLON Mexp e SEMICOLON
        | AttributeConstraintList acl IFOUT COLON Mexp e SEMICOLON
 ;
syntax AnyNameList
        = n: AnyName
        | AnyNameList l COMMA AnyName n
 ;
syntax ExtendsInterfaces
        = 
        EXTENDS IfnameList i
 ;
syntax SqlAtomicRelationRef
        = r: StringLiteral
        | r: VarOrFieldRef
 ;
syntax AttrAssignment
        = IDENTIFIER n ASSIGN INTLITERAL i
        | IDENTIFIER n ASSIGN TYPE_IDENTIFIER c
 ;
syntax IncompleteExp
        = PureExpPrefix callee BANG b
        | PureExpPrefix callee DOT d
        | NEW
 ;
syntax ImplementInterfaces
        = 
        IMPLEMENTS IfnameList i
 ;
syntax IfThenElseStmt
        = IF LPAREN DataExp e1 RPAREN Stmt s1 ELSE Stmt s2
        | IF LPAREN DataExp e1 RPAREN Stmt s1
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
        | IMPORT AnyNameList l SEMICOLON
        | IMPORT MULT FROM ModuleName m SEMICOLON
 ;
syntax HasCondition
        = HASFIELD FieldDecl f
        | HASMETHOD Methodsig ms
        | HASINTERFACE TypeName n
 ;
syntax SqlTupleScalarFunctionQuotient
        = SqlTupleScalarFunctionQuotient f1 DIV LPAREN SqlTupleScalarFunctionSum f2 RPAREN
        | SqlTupleScalarFunctionQuotient f1 DIV AtomicSqlTupleScalarFunction f2
        | AtomicSqlTupleScalarFunction
 ;
syntax Export
        = EXPORT MULT SEMICOLON
        | EXPORT AnyNameList l SEMICOLON
        | EXPORT MULT FROM ModuleName m SEMICOLON
        | EXPORT AnyNameList l FROM ModuleName m SEMICOLON
 ;
syntax SqlAndCondition
        = SqlAndCondition c1 AND op SqlCondition c2
        | SqlCondition
 ;
syntax DataConstructor
        = 
        co: TYPE_IDENTIFIER
 ;
syntax SqlTupleScalarFunctionProduct
        = SqlTupleScalarFunctionProduct f1 MULT SqlTupleScalarFunctionQuotient f2
        | SqlTupleScalarFunctionQuotient
        | SqlTupleScalarFunctionProduct f1 MULT LPAREN SqlTupleScalarFunctionSum f2 RPAREN
 ;
syntax SqlAttrsDef
        = MULT
        | l: SqlAttrDefList
 ;
syntax AddExp
        = AddExp e1 PLUS MultExp e2
        | e: MultExp
        | AddExp e1 MINUS MultExp e2
 ;
syntax DeltaAccessList
        = t: DeltaAccess
        | DeltaAccessList l DeltaAccess t
 ;
syntax PureExp
        = FatherExp "/"
        | LocationExp "/"
        | IfExp
        | PureExpNoIf
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
        = MmultExp e1 MULT MfactorExp e2
        | e: MfactorExp
        | MmultExp e1 DIV MfactorExp e2
        | MmultExp e1 MOD MfactorExp e2
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
syntax Deltaparam
        = i: INTLITERAL
        | c: TYPE_IDENTIFIER
        | TYPE_IDENTIFIER fid DOT IDENTIFIER aid
 ;
syntax ParamDeclList
        = ParamDeclList l COMMA ParamDecl i
        | i: ParamDecl
 ;
syntax SqlTupleScalarFunctionConcat
        = SqlTupleScalarFunctionConcat f1 CONCAT SqlTupleScalarFunctionSum f2
        | SqlTupleScalarFunctionSum
 ;
syntax DataExp
        = 
        OrExp
 ;
syntax Exp
        = e: DataExp
        | e: EffExp
 ;
syntax TypeName
        = QualifiedTypeName
        | SimpleTypeName
 ;
syntax SqlTupleCaseFunction
        = 
        CASE SqlTupleCaseBranches b ELSE SqlTupleScalarFunction f END
 ;
syntax Datatypeuse
        = TypeName n LT DatatypeuseList p GT
        | n: TypeName
 ;
syntax FatherExp
        = 
        FATHER LPAREN PureExp param RPAREN
 ;
syntax Method
        = CRITICAL Methodsig ms Block b
        | Methodsig ms Block b
 ;
syntax AndAppcond
        = AndAppcond ac1 ANDAND FactorAppcond ac2
        | FactorAppcond
 ;
syntax IntList
        = MINUS INTLITERAL i
        | IntList il COMMA MINUS INTLITERAL i
        | IntList il COMMA INTLITERAL i
        | i: INTLITERAL
 ;
syntax SqlCondition
        = NOT SqlCondition c
        | SqlTupleScalarFunction f1 SqlComparisonRelation r SqlTupleScalarFunction f2
        | StringLiteral a IS NULL
        | LPAREN SqlOrCondition c RPAREN
 ;
syntax SqlGroupingAttributes
        = ()
        | GROUP BY SqlAttrRefList a
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
syntax CaseBranch
        = 
        Pattern lhs RARROW DataExp rhs SEMICOLON
 ;
syntax Deltaparams
        = 
        LPAREN DeltaparamList l RPAREN
 ;
syntax DeltaAccess
        = 
        USES ModuleName m SEMICOLON
 ;
syntax OrExp
        = AndExp
        | OrExp e1 OROR AndExp e2
 ;
syntax SqlOrderingAttribute
        = DataExp e DESC
        | e: DataExp
        | DataExp e ASC
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
syntax OptSqlCondition
        = WHERE SqlOrCondition c
        | ()
 ;
syntax LAYOUT
        = Comment
        | ()
 ;
syntax ModuleName
        = 
        TypeName
 ;
syntax Adaptation
        = 
        TYPE_IDENTIFIER product BY TYPE_IDENTIFIER update SEMICOLON
 ;
syntax DataExpList
        = DataExpList l COMMA DataExp i
        | i: DataExp
 ;
syntax StringLiteral
        = s: 
        STRINGLITERAL
 ;
syntax SqlTupleScalarFunction
        = 
        SqlTupleScalarFunctionConcat
 ;
syntax MethodList
        = MethodList l Method i
        | i: Method
 ;
syntax Featuremodeldecl
        = Featuremodeldecl l EXTENSION Fextension ext
        | Featuremodeldecl l ROOT FeatureDecl f
        | ()
 ;
syntax InitBlock
        = 
        Block
 ;
syntax DatatypeparamList
        = DatatypeparamList l COMMA Datatypeparam p
        | p: Datatypeparam
 ;
syntax StmtWithoutAnnotations
        = REBIND IDENTIFIER field ASSIGN Exp e
        | VarOrFieldRef r ASSIGN Exp e
        | SKIP
        | REBIND Exp obj COLON IDENTIFIER field ASSIGN Exp e
        | e: EffExp
        | vd: VarDecl
        | DURATION LPAREN DataExp min COMMA DataExp max RPAREN
        | SUBLOC PureExp sub IN PureExp father
        | ASSERT DataExp e
        | AWAIT Guard
        | SUSPEND
        | RETURN Exp e
        | MOVECOGTO DataExp
 ;
syntax BoundaryInt
        = i: INTLITERAL
        | MULT
        | MINUS INTLITERAL i
 ;
syntax OrAppcond
        = OrAppcond ac1 OROR AndAppcond ac2
        | AndAppcond
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
        = RelationalExp e1 LTEQ AddExp e2
        | AddExp
        | RelationalExp e1 LT AddExp e2
        | RelationalExp e1 GT AddExp e2
        | RelationalExp e1 GTEQ AddExp e2
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
        = MimplExp
        | MandExp e1 ANDAND MimplExp e2
 ;
syntax Deltaspec
        = 
        id: TYPE_IDENTIFIER
 ;
syntax MrelExp
        = MrelExp e1 GTEQ MaddExp e2
        | MrelExp e1 GT MaddExp e2
        | MrelExp e1 LT MaddExp e2
        | MaddExp
        | MrelExp e1 LTEQ MaddExp e2
 ;
syntax DeltaParamDeclList
        = i: DeltaParamDecl
        | DeltaParamDeclList l COMMA DeltaParamDecl i
 ;
syntax Cog
        = 
        COG
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
        = ONEOF
        | LBRACKET INTLITERAL i1 UNTIL INTLITERAL i2 RBRACKET
        | ALLOF
        | LBRACKET INTLITERAL i UNTIL MULT RBRACKET
 ;
syntax Factor
        = NEGATION Factor b
        | MINUS Factor e
        | Literal
        | PureExp
        | LPAREN OrExp e RPAREN
 ;
syntax DataConstructorParams
        = 
        LPAREN RPAREN
 ;
syntax SqlComparisonRelation
        = LT
        | LTEQ
        | GTEQ
        | NOTEQ
        | EQ
        | GT
 ;
syntax Pattern
        = USCORE
        | l: Literal
        | v: IDENTIFIER
        | ConstructorPattern
 ;
syntax AttrAssignmentList
        = a: AttrAssignment
        | AttrAssignmentList l COMMA AttrAssignment a
 ;
syntax SimpleName
        = id: 
        IDENTIFIER
 ;
