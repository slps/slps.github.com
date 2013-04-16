@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Waite_cordy

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Ident
        = 
        Id
 ;
syntax EOS
        = 
        CommentOrNewline CommentOrNewline*
 ;
syntax CommentOrNewline
        = Comment
        | Newline
 ;
syntax Program
        = 
        IN_6 CommentOrNewline* ExecutableProgram CommentOrNewline* EX_6
 ;
syntax ExecutableProgram
        = 
        ProgramUnit+
 ;
syntax ProgramUnit
        = MainProgram
        | FunctionSubprogram
        | SubroutineSubprogram
        | BlockDataSubprogram
        | Module
 ;
syntax MainProgram
        = 
        ProgramStmt? MainRange
 ;
syntax MainRange
        = Body? EndProgramStmt
        | BodyPlusInternals EndProgramStmt
 ;
syntax EndProgramStmt
        = LblDef "end" EOS
        | LblDef "endprogram" EndName? EOS
        | LblDef "end" "program" EndName? EOS
 ;
syntax Body
        = 
        BodyConstruct+
 ;
syntax BodyConstruct
        = SpecificationPartConstruct
        | ExecutableConstruct
 ;
syntax SpecificationPartConstruct
        = ImplicitStmt
        | ParameterStmt
        | FormatStmt
        | EntryStmt
        | DeclarationConstruct
        | IncludeStmt
        | UseStmt
 ;
syntax IncludeStmt
        = 
        "include" Scon EOS
 ;
syntax DeclarationConstruct
        = TypeDeclarationStmt
        | SpecificationStmt
        | DerivedTypeDef
        | InterfaceBlock
 ;
syntax FunctionSubprogram
        = 
        LblDef FunctionPrefix FunctionName FunctionRange
 ;
syntax FunctionRange
        = FunctionParList EOS Body? EndFunctionStmt
        | FunctionParList "result" "(" Name ")" EOS BodyPlusInternals EndFunctionStmt
        | FunctionParList "result" "(" Name ")" EOS Body EndFunctionStmt
        | FunctionParList "result" "(" Name ")" EOS EndFunctionStmt
        | FunctionParList EOS BodyPlusInternals EndFunctionStmt
 ;
syntax EndFunctionStmt
        = LblDef "end" EOS
        | LblDef "endfunction" EndName? EOS
        | LblDef "end" "function" EndName? EOS
 ;
syntax SubroutineSubprogram
        = LblDef "subroutine" SubroutineName SubroutineRange
        | LblDef "recursive" "subroutine" SubroutineName SubroutineRange
 ;
syntax SubroutineRange
        = SubroutineParList EOS Body? EndSubroutineStmt
        | SubroutineParList EOS BodyPlusInternals EndSubroutineStmt
 ;
syntax EndSubroutineStmt
        = LblDef "end" EOS
        | LblDef "endsubroutine" EndName? EOS
        | LblDef "end" "subroutine" EndName? EOS
 ;
syntax BlockDataSubprogram
        = BlockDataStmt BlockDataBody EndBlockDataStmt
        | BlockDataStmt EndBlockDataStmt
 ;
syntax EndBlockDataStmt
        = LblDef "end" EOS
        | LblDef "endblockdata" EndName? EOS
        | LblDef "end" "blockdata" EndName? EOS
        | LblDef "endblock" "data" EndName? EOS
        | LblDef "end" "block" "data" EndName? EOS
 ;
syntax BlockDataBody
        = BlockDataBodyConstruct
        | BlockDataBody BlockDataBodyConstruct
 ;
syntax BlockDataBodyConstruct
        = 
        SpecificationPartConstruct
 ;
syntax SpecificationStmt
        = CommonStmt
        | DataStmt
        | DimensionStmt
        | EquivalenceStmt
        | ExternalStmt
        | IntrinsicStmt
        | SaveStmt
        | AccessStmt
        | AllocatableStmt
        | IntentStmt
        | NamelistStmt
        | OptionalStmt
        | PointerStmt
        | TargetStmt
 ;
syntax ExecutionPartConstruct
        = ExecutableConstruct
        | FormatStmt
        | DataStmt
        | EntryStmt
        | LblDef DoubleDoStmt
 ;
syntax ExecutableConstruct
        = ActionStmt
        | DoConstruct
        | IfConstruct
        | CaseConstruct
        | WhereConstruct
 ;
syntax ActionStmt
        = ArithmeticIfStmt
        | AssignmentStmt
        | AssignStmt
        | BackspaceStmt
        | CallStmt
        | CloseStmt
        | ContinueStmt
        | EndfileStmt
        | GotoStmt
        | ComputedGotoStmt
        | AssignedGotoStmt
        | IfStmt
        | InquireStmt
        | OpenStmt
        | PauseStmt
        | PrintStmt
        | ReadStmt
        | ReturnStmt
        | RewindStmt
        | StmtFunctionStmt
        | StopStmt
        | WriteStmt
        | AllocateStmt
        | CycleStmt
        | DeallocateStmt
        | ExitStmt
        | NullifyStmt
        | PointerAssignmentStmt
        | WhereStmt
 ;
syntax ProgramStmt
        = 
        LblDef "program" ProgramName EOS
 ;
syntax FunctionPrefix
        = "function"
        | TypeSpec "function"
        | "recursive" "function"
        | "recursive" TypeSpec "function"
        | TypeSpec "recursive" "function"
 ;
syntax FunctionParList
        = "(" FunctionPars ")"
        | ()
 ;
syntax FunctionPars
        = 
        
	FunctionPar
	","
      
 ;
syntax FunctionPar
        = 
        DummyArgName
 ;
syntax SubroutineParList
        = "(" SubroutinePars ")"
        | ()
 ;
syntax SubroutinePars
        = 
        
	SubroutinePar
	","
      
 ;
syntax SubroutinePar
        = DummyArgName
        | "*"
 ;
syntax EntryStmt
        = 
        LblDef "entry" EntryName SubroutineParList "result" "(" Name ")" EOS
 ;
syntax BlockDataStmt
        = LblDef "blockdata" BlockDataName? EOS
        | LblDef "block" "data" BlockDataName? EOS
 ;
syntax DimensionStmt
        = LblDef "dimension" ArrayDeclaratorList EOS
        | LblDef "dimension" "::" ArrayDeclaratorList EOS
 ;
syntax ArrayDeclaratorList
        = 
        ArrayDeclarator+
 ;
syntax ArrayDeclarator
        = 
        VariableName "(" ArraySpec ")"
 ;
syntax ArraySpec
        = ExplicitShapeSpecList
        | AssumedSizeSpec
        | AssumedShapeSpecList
        | DeferredShapeSpecList
 ;
syntax ExplicitShapeSpecList
        = 
        ExplicitShapeSpec+
 ;
syntax ExplicitShapeSpec
        = LowerBound ":" UpperBound
        | UpperBound
 ;
syntax LowerBound
        = 
        Expr
 ;
syntax UpperBound
        = 
        Expr
 ;
syntax AssumedSizeSpec
        = "*"
        | LowerBound ":" "*"
        | ExplicitShapeSpecList "," "*"
        | ExplicitShapeSpecList "," LowerBound ":" "*"
 ;
syntax EquivalenceStmt
        = 
        LblDef "equivalence" EquivalenceSetList EOS
 ;
syntax EquivalenceSetList
        = 
        EquivalenceSet+
 ;
syntax EquivalenceSet
        = 
        "(" EquivalenceObject "," EquivalenceObjectList ")"
 ;
syntax EquivalenceObjectList
        = 
        EquivalenceObject+
 ;
syntax EquivalenceObject
        = 
        Variable
 ;
syntax CommonStmt
        = 
        LblDef "common" Comlist EOS
 ;
syntax Comlist
        = Comblock? CommonBlockObject
        | Comlist "," Comblock? CommonBlockObject
        | Comlist Comblock CommonBlockObject
 ;
syntax Comblock
        = "/" SPOFF "/" SPON
        | "/" CommonBlockName "/"
 ;
syntax CommonBlockObject
        = VariableName
        | ArrayDeclarator
 ;
syntax TypeDeclarationStmt
        = LblDef TypeSpec EntityDeclList EOS
        | LblDef TypeSpec AttrSpecSeq? "::" EntityDeclList EOS
 ;
syntax TypeSpec
        = "integer"
        | "real"
        | "doubleprecision"
        | "complex"
        | "logical"
        | "character"
        | "character" LengthSelector
        | "integer" KindSelector
        | "real" KindSelector
        | "double" "precision"
        | "complex" KindSelector
        | "character" CharSelector
        | "logical" KindSelector
        | "type" "(" TypeName ")"
 ;
syntax EntityDeclList
        = 
        EntityDecl+
 ;
syntax EntityDecl
        = ObjectName
        | ObjectName "(" ArraySpec ")"
        | ObjectName "*" CharLength
        | ObjectName "(" ArraySpec ")" "*" CharLength
        | ObjectName "=" Expr
        | ObjectName "(" ArraySpec ")" "=" Expr
        | ObjectName "*" CharLength "=" Expr
        | ObjectName "*" CharLength "(" ArraySpec ")" "=" Expr
 ;
syntax LengthSelector
        = "*" CharLength
        | "(" TypeParamValue ")"
 ;
syntax ImplicitStmt
        = LblDef "implicit" ImplicitSpecList EOS
        | LblDef "implicit" "none" EOS
 ;
syntax ImplicitSpecList
        = 
        ImplicitSpec+
 ;
syntax ImplicitSpec
        = TypeSpec ImplicitRanges
        | TypeSpec "(" ImplicitRanges ")"
 ;
syntax ImplicitRanges
        = 
        
	ImplicitRange
	","
      
 ;
syntax ImplicitRange
        = 
        Ident "-" Ident
 ;
syntax CharLength
        = "(" TypeParamValue ")"
        | Constant
 ;
syntax TypeParamValue
        = Expr
        | "*"
 ;
syntax ParameterStmt
        = 
        LblDef "parameter" "(" NamedConstantDefList ")" EOS
 ;
syntax NamedConstantDefList
        = 
        NamedConstantDef+
 ;
syntax NamedConstantDef
        = 
        NamedConstant "=" Expr
 ;
syntax NamedConstant
        = 
        Ident
 ;
syntax NamedConstantUse
        = 
        Ident
 ;
syntax ExternalStmt
        = 
        LblDef "external" ExternalNameList EOS
 ;
syntax ExternalNameList
        = 
        ExternalName+
 ;
syntax IntrinsicStmt
        = 
        LblDef "intrinsic" IntrinsicList EOS
 ;
syntax IntrinsicList
        = 
        IntrinsicProcedureName+
 ;
syntax SaveStmt
        = LblDef "save" EOS
        | LblDef "save" SavedEntityList EOS
        | LblDef "save" "::" SavedEntityList EOS
 ;
syntax SavedEntityList
        = 
        SavedEntity+
 ;
syntax SavedEntity
        = VariableName
        | SavedCommonBlock
 ;
syntax SavedCommonBlock
        = 
        "/" CommonBlockName "/"
 ;
syntax DataStmt
        = 
        LblDef "data" Datalist EOS
 ;
syntax Datalist
        = DataStmtSet
        | Datalist? ","? DataStmtSet
 ;
syntax DataStmtSet
        = 
        DataStmtObjectList "/" DataStmtValueList "/"
 ;
syntax DataStmtObjectList
        = 
        DataStmtObject+
 ;
syntax DataStmtObject
        = Variable
        | DataImpliedDo
 ;
syntax DataStmtValueList
        = 
        DataStmtValue+
 ;
syntax DataStmtValue
        = Constant
        | Constant "*" Constant
        | NamedConstantUse "*" Constant
 ;
syntax DataImpliedDo
        = "(" DataIDoObjectList "," ImpliedDoVariable "=" Expr "," Expr ")"
        | "(" DataIDoObjectList "," ImpliedDoVariable "=" Expr "," Expr "," Expr ")"
 ;
syntax DataIDoObjectList
        = 
        DataIDoObject+
 ;
syntax DataIDoObject
        = ArrayElement
        | DataImpliedDo
        | StructureComponent
 ;
syntax AssignmentStmt
        = LblDef Name SFExprListRef? SubstringRange? "=" Expr EOS
        | LblDef Name SFExprListRef? "%" NameDataRef "=" Expr EOS
        | LblDef Name "(" SFDummyArgNameList ")" "%" NameDataRef "=" Expr EOS
 ;
syntax SFExprListRef
        = 
        "(" SFExprList CommaSectionSubscript* ")"
 ;
syntax SFExprList
        = Expr ":"? Expr?
        | ":" Expr?
        | Expr? ":" Expr ":" Expr
        | Expr? "::" Expr
 ;
syntax CommaSectionSubscript
        = 
        "," SectionSubscript
 ;
syntax AssignStmt
        = 
        LblDef "assign" LblRef "to" VariableName EOS
 ;
syntax GotoStmt
        = 
        LblDef GoToKw LblRef EOS
 ;
syntax GoToKw
        = "goto"
        | "go" "to"
 ;
syntax ComputedGotoStmt
        = 
        LblDef GoToKw "(" LblRefList ")" ","? Expr EOS
 ;
syntax LblRefList
        = 
        LblRef+
 ;
syntax LblRef
        = 
        Label
 ;
syntax AssignedGotoStmt
        = LblDef GoToKw VariableName EOS
        | LblDef GoToKw VariableName "(" LblRefList ")" EOS
        | LblDef GoToKw VariableComma "(" LblRefList ")" EOS
 ;
syntax VariableComma
        = 
        VariableName ","
 ;
syntax ArithmeticIfStmt
        = 
        LblDef "if" "(" Expr ")" LblRef "," LblRef "," LblRef EOS
 ;
syntax IfStmt
        = 
        LblDef "if" "(" Expr ")" ActionStmt
 ;
syntax IfConstruct
        = 
        IfThenStmt ConditionalBody ElseIfConstruct* ElseConstruct? EndIfStmt
 ;
syntax ElseIfConstruct
        = 
        ElseIfStmt ConditionalBody
 ;
syntax ElseConstruct
        = 
        ElseStmt ConditionalBody
 ;
syntax ConditionalBody
        = 
        ExecutionPartConstruct*
 ;
syntax IfThenStmt
        = 
        LblDef "if" "(" Expr ")" "then" EOS IN_2
 ;
syntax ElseIfStmt
        = LblDef EX_2 "elseif" "(" Expr ")" "then" EOS IN_2
        | LblDef EX_2 "else" "if" "(" Expr ")" "then" EOS IN_2
 ;
syntax ElseStmt
        = 
        LblDef EX_2 "else" EOS IN_2
 ;
syntax EndIfStmt
        = LblDef EX_2 "endif" EOS
        | LblDef EX_2 "end" "if" EOS
 ;
syntax DoConstruct
        = LabelDoStmt
        | BlockDoConstruct
 ;
syntax LabelDoStmt
        = 
        LblDef "do" DoLblRef CommaLoopControl EOS IN_2 ExecutionPartConstruct* EX_2 DoLblDef DoLabelStmt
 ;
syntax CommaLoopControl
        = 
        ","? LoopControl
 ;
syntax DoLblRef
        = 
        Icon
 ;
syntax DoLblDef
        = 
        TAB_2 Icon TAB_9
 ;
syntax DoubleDoStmt
        = 
        "do" LblRef CommaLoopControl EOS
 ;
syntax DoLabelStmt
        = 
        ActionStmt
 ;
syntax LoopControl
        = VariableName "=" Expr "," Expr CommaExpr?
        | "while" "(" Expr ")"
 ;
syntax ContinueStmt
        = 
        LblDef "continue" EOS
 ;
syntax StopStmt
        = 
        LblDef "stop" IconOrScon? EOS
 ;
syntax IconOrScon
        = Icon
        | Scon
 ;
syntax PauseStmt
        = 
        LblDef "pause" IconOrScon? EOS
 ;
syntax WriteStmt
        = 
        LblDef "write" "(" IoControlSpecList ")" OutputItemList? EOS
 ;
syntax ReadStmt
        = LblDef "read" RdCtlSpec InputItemList? EOS
        | LblDef "read" RdFmtId CommaInputItemList? EOS
 ;
syntax CommaInputItemList
        = 
        "," InputItemList
 ;
syntax RdCtlSpec
        = RdUnitId
        | "(" RdIoCtlSpecList ")"
 ;
syntax RdUnitId
        = "(" UFExpr ")"
        | "(" "*" ")"
 ;
syntax RdIoCtlSpecList
        = UnitIdentifier "," IoControlSpec
        | UnitIdentifier "," FormatIdentifier
        | IoControlSpec
        | RdIoCtlSpecList "," IoControlSpec
 ;
syntax RdFmtId
        = LblRef
        | "*"
        | COperand
        | COperand ConcatOp CPrimary
        | RdFmtIdExpr ConcatOp CPrimary
 ;
syntax RdFmtIdExpr
        = 
        "(" UFExpr ")"
 ;
syntax PrintStmt
        = LblDef "print" FormatIdentifier "," OutputItemList EOS
        | LblDef "print" FormatIdentifier EOS
 ;
syntax IoControlSpecList
        = UnitIdentifier "$" ","
        | UnitIdentifier "," FormatIdentifier
        | UnitIdentifier "," IoControlSpec
        | IoControlSpec
        | IoControlSpecList "," IoControlSpec
 ;
syntax IoControlSpec
        = "fmt=" FormatIdentifier
        | "unit=" UnitIdentifier
        | "rec=" Expr
        | "end=" LblRef
        | "err=" LblRef
        | "iostat=" ScalarVariable
        | "nml=" NamelistGroupName
        | "advance=" CExpr
        | "size=" Variable
        | "eor=" LblRef
 ;
syntax InputItemList
        = 
        InputItem+
 ;
syntax InputItem
        = NameDataRef
        | InputImpliedDo
 ;
syntax OutputItemList
        = Expr
        | OutputItemList1
 ;
syntax OutputItemList1
        = Expr "," Expr
        | Expr "," OutputImpliedDo
        | OutputImpliedDo
        | OutputItemList1 "," Expr
        | OutputItemList1 "," OutputImpliedDo
 ;
syntax InputImpliedDo
        = 
        "(" InputItemList "," ImpliedDoVariable "=" Expr "," Expr CommaExpr? ")"
 ;
syntax CommaExpr
        = 
        "," Expr
 ;
syntax OutputImpliedDo
        = "(" Expr "," ImpliedDoVariable "=" Expr "," Expr CommaExpr? ")"
        | "(" OutputItemList1 "," ImpliedDoVariable "=" Expr "," Expr CommaExpr? ")"
 ;
syntax OpenStmt
        = 
        LblDef "open" "(" ConnectSpecList ")" EOS
 ;
syntax ConnectSpecList
        = 
        UnitIdentifierComma? 
	    ConnectSpec
	    ","
	  
 ;
syntax UnitIdentifierComma
        = 
        UnitIdentifier ","
 ;
syntax ConnectSpec
        = "unit=" UnitIdentifier
        | "err=" LblRef
        | "file=" CExpr
        | "status=" CExpr
        | "access=" CExpr
        | "form=" CExpr
        | "recl=" Expr
        | "blank=" CExpr
        | "iostat=" ScalarVariable
        | "position=" CExpr
        | "action=" CExpr
        | "delim=" CExpr
        | "pad=" CExpr
 ;
syntax CloseStmt
        = 
        LblDef "close" "(" CloseSpecList ")" EOS
 ;
syntax CloseSpecList
        = 
        UnitIdentifierComma? 
	    CloseSpec
	    ","
	  
 ;
syntax CloseSpec
        = "unit=" UnitIdentifier
        | "err=" LblRef
        | "status=" CExpr
        | "iostat=" ScalarVariable
 ;
syntax InquireStmt
        = LblDef "inquire" "(" InquireSpecList ")" EOS
        | LblDef "inquire" "(" "iolength=" ScalarVariable ")" OutputItemList EOS
 ;
syntax InquireSpecList
        = 
        UnitIdentifier? 
	    InquireSpec
	    ","
	  
 ;
syntax InquireSpec
        = "unit=" UnitIdentifier
        | "file=" CExpr
        | "err=" LblRef
        | "iostat=" ScalarVariable
        | "exist=" ScalarVariable
        | "opened=" ScalarVariable
        | "number=" ScalarVariable
        | "named=" ScalarVariable
        | "name=" ScalarVariable
        | "access=" ScalarVariable
        | "sequential=" ScalarVariable
        | "direct=" ScalarVariable
        | "form=" ScalarVariable
        | "formatted=" ScalarVariable
        | "unformatted=" ScalarVariable
        | "recl=" Expr
        | "nextrec=" ScalarVariable
        | "blank=" ScalarVariable
        | "position=" ScalarVariable
        | "action=" ScalarVariable
        | "read=" ScalarVariable
        | "write=" ScalarVariable
        | "readwrite=" ScalarVariable
        | "delim=" ScalarVariable
        | "pad=" ScalarVariable
 ;
syntax BackspaceStmt
        = LblDef "backspace" UnitIdentifier EOS
        | LblDef "backspace" "(" PositionSpecList ")" EOS
 ;
syntax EndfileStmt
        = LblDef "endfile" UnitIdentifier EOS
        | LblDef "endfile" "(" PositionSpecList ")" EOS
        | LblDef "end" "file" UnitIdentifier EOS
        | LblDef "end" "file" "(" PositionSpecList ")" EOS
 ;
syntax RewindStmt
        = LblDef "rewind" UnitIdentifier EOS
        | LblDef "rewind" "(" PositionSpecList ")" EOS
 ;
syntax PositionSpecList
        = 
        UnitIdentifierComma? PositionSpec+
 ;
syntax PositionSpec
        = "unit=" UnitIdentifier
        | "err=" LblRef
        | "iostat=" ScalarVariable
 ;
syntax UnitIdentifier
        = UFExpr
        | "*"
 ;
syntax FormatIdentifier
        = LblRef
        | CExpr
        | "*"
 ;
syntax FormatStmt
        = 
        LblDef "format" "(" FmtSpec? ")" EOS
 ;
syntax FmtSpec
        = Formatedit
        | Formatsep
        | Formatsep Formatedit
        | FmtSpec Formatsep
        | FmtSpec Formatsep Formatedit
        | FmtSpec "," Formatedit
        | FmtSpec "," Formatsep
        | FmtSpec "," Formatsep Formatedit
 ;
syntax Formatedit
        = EditElement
        | Icon EditElement
        | Xcon
        | Pcon
        | Pcon EditElement
        | Pcon Icon EditElement
 ;
syntax EditElement
        = Fcon
        | MislexedFcon
        | Scon
        | Hcon
        | Ident
        | "(" FmtSpec ")"
 ;
syntax MislexedFcon
        = RDcon SPOFF RDcon SPON
        | Ident SPOFF RDcon SPON
 ;
syntax Formatsep
        = "/"
        | ":"
 ;
syntax StmtFunctionStmt
        = 
        LblDef Name StmtFunctionRange
 ;
syntax StmtFunctionRange
        = 
        "(" SFDummyArgNameList? ")" "=" Expr EOS
 ;
syntax SFDummyArgNameList
        = 
        SFDummyArgName+
 ;
syntax CallStmt
        = LblDef "call" SubroutineNameUse EOS
        | LblDef "call" SubroutineNameUse "(" SubroutineArgList ")" EOS
 ;
syntax SubroutineArgList
        = 
        
	SubroutineArg
	","
      
 ;
syntax SubroutineArg
        = Expr
        | Hcon
        | "*" LblRef
        | Name "=" Expr
        | Name "=" Hcon
        | Name "=" "*" LblRef
 ;
syntax ReturnStmt
        = 
        LblDef "return" Expr? EOS
 ;
syntax FunctionReference
        = Name "(" ")"
        | Name "(" FunctionArgList ")"
 ;
syntax NameDataRef
        = 
        Name ComplexDataRefTail*
 ;
syntax ComplexDataRefTail
        = SectionSubscriptRef
        | "%" Name
 ;
syntax SectionSubscriptRef
        = 
        "(" SectionSubscriptList ")"
 ;
syntax SectionSubscriptList
        = 
        SectionSubscript+
 ;
syntax SectionSubscript
        = Expr SubscriptTripletTail?
        | SubscriptTripletTail
 ;
syntax Expr
        = Level5Expr
        | Expr DefinedBinaryOp Level5Expr
 ;
syntax Primary
        = UnsignedArithmeticConstant
        | NameDataRef
        | FunctionReference
        | "(" Expr ")"
        | Scon
        | LogicalConstant
        | ArrayConstructor
 ;
syntax Level1Expr
        = Primary
        | DefinedUnaryOp Primary
 ;
syntax MultOperand
        = 
        Level1Expr PowerUpMultOperand?
 ;
syntax PowerUpMultOperand
        = 
        PowerOp MultOperand
 ;
syntax AddOperand
        = 
        MultOperand MultOpMultOperand*
 ;
syntax MultOpMultOperand
        = 
        MultOp MultOperand
 ;
syntax Level2Expr
        = 
        Sign? AddOperand AddOpAddOperand*
 ;
syntax AddOpAddOperand
        = 
        AddOp AddOperand
 ;
syntax PowerOp
        = 
        "**"
 ;
syntax MultOp
        = "*"
        | "/"
 ;
syntax AddOp
        = "+"
        | "-"
 ;
syntax Sign
        = "+"
        | "-"
 ;
syntax UFExpr
        = UFTerm
        | Sign UFTerm
        | UFExpr AddOp UFTerm
 ;
syntax UFTerm
        = UFFactor
        | UFTerm MultOp UFFactor
        | UFTerm ConcatOp UFPrimary
 ;
syntax UFFactor
        = UFPrimary
        | UFPrimary PowerOp UFFactor
 ;
syntax UFPrimary
        = Icon
        | Scon
        | NameDataRef
        | FunctionReference
        | "(" UFExpr ")"
 ;
syntax CExpr
        = 
        CPrimary CPrimaryConcatOp*
 ;
syntax CPrimaryConcatOp
        = 
        CPrimary ConcatOp
 ;
syntax CPrimary
        = COperand
        | "(" CExpr ")"
 ;
syntax COperand
        = Scon
        | NameDataRef
        | FunctionReference
 ;
syntax Level3Expr
        = 
        Level2Expr ConcatOpLevel2Expr*
 ;
syntax ConcatOpLevel2Expr
        = 
        ConcatOp Level2Expr
 ;
syntax ConcatOp
        = 
        "/" SPOFF "/" SPON
 ;
syntax AndOperand
        = 
        NotOp? Level4Expr
 ;
syntax OrOperand
        = 
        AndOperand AndOpAndOperand*
 ;
syntax AndOpAndOperand
        = 
        AndOp AndOperand
 ;
syntax EquivOperand
        = 
        OrOperand OrUpOrOperand*
 ;
syntax OrUpOrOperand
        = 
        OrOp OrOperand
 ;
syntax Level5Expr
        = 
        EquivOperand EquivOpEquivOperand*
 ;
syntax EquivOpEquivOperand
        = 
        EquivOp EquivOperand
 ;
syntax NotOp
        = 
        SP ".not." SP
 ;
syntax AndOp
        = 
        SP ".and." SP
 ;
syntax OrOp
        = 
        SP ".or." SP
 ;
syntax EquivOp
        = SP ".eqv." SP
        | SP ".neqv." SP
 ;
syntax Level4Expr
        = 
        Level3Expr RelOpLevel3Expr*
 ;
syntax RelOpLevel3Expr
        = 
        RelOp Level3Expr
 ;
syntax RelOp
        = SP ".eq." SP
        | SP ".ne." SP
        | SP ".lt." SP
        | SP ".le." SP
        | SP ".gt." SP
        | SP ".ge." SP
        | "=="
        | "/="
        | "\<"
        | "\<="
        | "\>"
        | "\>="
 ;
syntax ArrayElement
        = VariableName "(" SectionSubscriptList ")"
        | StructureComponent "(" SectionSubscriptList ")"
 ;
syntax SubstringRange
        = 
        "(" Expr? SubscriptTripletTail ")"
 ;
syntax SubscriptTripletTail
        = ":" Expr?
        | ":" Expr ":" Expr
        | "::" Expr
 ;
syntax Name
        = 
        Ident
 ;
syntax Constant
        = NamedConstantUse
        | PlusMinus? UnsignedArithmeticConstant
        | Scon
        | Hcon
        | LogicalConstant
        | Icon "_" Scon
        | NamedConstantUse "_" Scon
        | StructureConstructor
        | BozLiteralConstant
 ;
syntax PlusMinus
        = "+"
        | "-"
 ;
syntax UnsignedArithmeticConstant
        = Icon
        | RDcon
        | ComplexConst
        | Icon "_" KindParam
        | RDcon "_" KindParam
 ;
syntax ComplexConst
        = 
        "(" ComplexComponent "," ComplexComponent ")"
 ;
syntax ComplexComponent
        = Sign? Icon
        | RDcon
        | Name
 ;
syntax LogicalConstant
        = SP ".true." SP
        | SP ".false." SP
        | SP ".true." SP "_" KindParam
        | SP ".false." SP "_" KindParam "."
 ;
syntax Label
        = 
        Icon
 ;
syntax BlockDataName
        = 
        Ident
 ;
syntax CommonBlockName
        = 
        Ident
 ;
syntax DummyArgName
        = 
        Ident
 ;
syntax EntryName
        = 
        Ident
 ;
syntax ExternalName
        = 
        Ident
 ;
syntax FunctionName
        = 
        Ident
 ;
syntax ImpliedDoVariable
        = 
        Ident
 ;
syntax IntrinsicProcedureName
        = 
        Ident
 ;
syntax ObjectName
        = 
        Ident
 ;
syntax ProgramName
        = 
        Ident
 ;
syntax SFDummyArgName
        = 
        Ident
 ;
syntax SFVarName
        = 
        Ident
 ;
syntax SubroutineName
        = 
        Ident
 ;
syntax SubroutineNameUse
        = 
        Ident
 ;
syntax VariableName
        = 
        Ident
 ;
syntax ScalarVariable
        = VariableName
        | ArrayElement
 ;
syntax Variable
        = 
        VariableName SubscriptListRef? SubstringRange?
 ;
syntax SubscriptListRef
        = 
        "(" SubscriptList ")"
 ;
syntax SubscriptList
        = 
        Subscript+
 ;
syntax Subscript
        = 
        Expr
 ;
syntax LblDef
        = ()
        | TAB_2 Label TAB_7
 ;
syntax BodyPlusInternals
        = Body ContainsStmt InternalSubprogram
        | ContainsStmt InternalSubprogram
        | BodyPlusInternals InternalSubprogram
 ;
syntax InternalSubprogram
        = FunctionSubprogram
        | SubroutineSubprogram
 ;
syntax ModuleSubprogramPartConstruct
        = ContainsStmt
        | ModuleSubprogram
 ;
syntax ModuleSubprogram
        = FunctionSubprogram
        | SubroutineSubprogram
 ;
syntax DefinedOperator
        = Dop
        | PowerOp
        | MultOp
        | AddOp
        | RelOp
        | ConcatOp
        | NotOp
        | AndOp
        | OrOp
        | EquivOp
 ;
syntax KindParam
        = Icon
        | NamedConstantUse
 ;
syntax BozLiteralConstant
        = Bcon
        | Ocon
        | Zcon
 ;
syntax DerivedTypeDef
        = 
        DerivedTypeStmt DerivedTypeBody EndTypeStmt
 ;
syntax DerivedTypeBody
        = DerivedTypeBodyConstruct
        | DerivedTypeBody DerivedTypeBodyConstruct
 ;
syntax DerivedTypeBodyConstruct
        = PrivateSequenceStmt
        | ComponentDefStmt
 ;
syntax PrivateSequenceStmt
        = LblDef "private" EOS
        | LblDef "sequence" EOS
 ;
syntax DerivedTypeStmt
        = LblDef "type" TypeName EOS
        | LblDef "type" "::" TypeName EOS
        | LblDef "type" "," AccessSpec "::" TypeName EOS
 ;
syntax EndTypeStmt
        = LblDef "endtype" TypeName EOS
        | LblDef "endtype" EOS
        | LblDef "end" "type" TypeName EOS
        | LblDef "end" "type" EOS
 ;
syntax ComponentDefStmt
        = LblDef TypeSpec "," ComponentAttrSpecList "::" ComponentDeclList EOS
        | LblDef TypeSpec "::" ComponentDeclList EOS
        | LblDef TypeSpec ComponentDeclList EOS
 ;
syntax ComponentAttrSpecList
        = 
        ComponentAttrSpec+
 ;
syntax ComponentAttrSpec
        = "pointer"
        | "dimension" "(" ComponentArraySpec ")"
 ;
syntax ComponentArraySpec
        = ExplicitShapeSpecList
        | DeferredShapeSpecList
 ;
syntax ComponentDeclList
        = 
        ComponentDecl+
 ;
syntax ComponentDecl
        = ComponentName "(" ComponentArraySpec ")" "*" CharLength
        | ComponentName "(" ComponentArraySpec ")"
        | ComponentName "*" CharLength
        | ComponentName
 ;
syntax StructureConstructor
        = 
        TypeName "(" ExprList ")"
 ;
syntax ExprList
        = 
        Expr+
 ;
syntax ArrayConstructor
        = 
        "(/" AcValueList "/)"
 ;
syntax AcValueList
        = Expr
        | AcValueList1
 ;
syntax AcValueList1
        = Expr "," Expr
        | Expr "," AcImpliedDo
        | AcImpliedDo
        | AcValueList1 "," Expr
        | AcValueList1 "," AcImpliedDo
 ;
syntax AcImpliedDo
        = "(" Expr "," ImpliedDoVariable "=" Expr "," Expr ")"
        | "(" Expr "," ImpliedDoVariable "=" Expr "," Expr "," Expr ")"
        | "(" AcImpliedDo "," ImpliedDoVariable "=" Expr "," Expr ")"
        | "(" AcImpliedDo "," ImpliedDoVariable "=" Expr "," Expr "," Expr ")"
 ;
syntax AttrSpecSeq
        = "," AttrSpec
        | AttrSpecSeq "," AttrSpec
 ;
syntax AttrSpec
        = "parameter"
        | AccessSpec
        | "allocatable"
        | "dimension" "(" ArraySpec ")"
        | "external"
        | "intent" "(" IntentSpec ")"
        | "intrinsic"
        | "optional"
        | "pointer"
        | "save"
        | "target"
 ;
syntax KindSelector
        = "(" "kind=" Expr ")"
        | "(" Expr ")"
 ;
syntax CharSelector
        = "(" "len=" TypeParamValue "," "kind=" Expr ")"
        | "(" "len=" TypeParamValue "," Expr ")"
        | "(" "len=" TypeParamValue ")"
        | "(" "kind=" Expr ")"
        | "(" Expr ")"
 ;
syntax AccessSpec
        = "public"
        | "private"
 ;
syntax IntentSpec
        = "in"
        | "out"
        | "inout"
 ;
syntax AssumedShapeSpecList
        = LowerBound ":"
        | DeferredShapeSpecList "," LowerBound ":"
        | AssumedShapeSpecList "," AssumedShapeSpec
 ;
syntax AssumedShapeSpec
        = LowerBound ":"
        | ":"
 ;
syntax DeferredShapeSpecList
        = 
        DeferredShapeSpec+
 ;
syntax DeferredShapeSpec
        = 
        ":"
 ;
syntax IntentStmt
        = 
        LblDef "intent" "(" IntentSpec ")" ColonColon? IntentParList EOS
 ;
syntax ColonColon
        = 
        "::"
 ;
syntax IntentParList
        = 
        IntentPar+
 ;
syntax IntentPar
        = 
        DummyArgName
 ;
syntax OptionalStmt
        = 
        LblDef "optional" ColonColon? OptionalParList EOS
 ;
syntax OptionalParList
        = 
        OptionalPar+
 ;
syntax OptionalPar
        = 
        DummyArgName
 ;
syntax AccessStmt
        = LblDef AccessSpec ColonColon? AccessIdList EOS
        | LblDef AccessSpec EOS
 ;
syntax AccessIdList
        = 
        AccessId+
 ;
syntax AccessId
        = GenericName
        | GenericSpec
 ;
syntax AllocatableStmt
        = 
        LblDef "allocatable" ColonColon? ArrayAllocationList EOS
 ;
syntax ArrayAllocationList
        = 
        ArrayAllocation+
 ;
syntax ArrayAllocation
        = ArrayName
        | ArrayName "(" DeferredShapeSpecList ")"
 ;
syntax PointerStmt
        = 
        LblDef "pointer" ColonColon? PointerStmtObjectList EOS
 ;
syntax PointerStmtObjectList
        = 
        PointerStmtObject+
 ;
syntax PointerStmtObject
        = ObjectName
        | ObjectName "(" DeferredShapeSpecList ")"
 ;
syntax TargetStmt
        = 
        LblDef "target" ColonColon? TargetObjectList EOS
 ;
syntax TargetObjectList
        = 
        TargetObject+
 ;
syntax TargetObject
        = ObjectName
        | ObjectName "(" ArraySpec ")"
 ;
syntax NamelistStmt
        = 
        LblDef "namelist" NamelistGroups EOS
 ;
syntax NamelistGroups
        = "/" NamelistGroupName "/" NamelistGroupObject
        | NamelistGroups "/" NamelistGroupName "/" NamelistGroupObject
        | NamelistGroups "," "/" NamelistGroupName "/" NamelistGroupObject
        | NamelistGroups "," NamelistGroupObject
 ;
syntax NamelistGroupObject
        = 
        VariableName
 ;
syntax StructureComponent
        = VariableName FieldSelector
        | StructureComponent FieldSelector
 ;
syntax FieldSelector
        = "(" SectionSubscriptList ")" "%" Name
        | "%" Name
 ;
syntax AllocateStmt
        = LblDef "allocate" "(" AllocationList "," "stat=" Variable ")" EOS
        | LblDef "allocate" "(" AllocationList ")" EOS
 ;
syntax AllocationList
        = 
        Allocation+
 ;
syntax Allocation
        = AllocateObject
        | AllocateObject AllocatedShape
 ;
syntax AllocatedShape
        = 
        "(" SectionSubscriptList ")"
 ;
syntax AllocateObjectList
        = 
        AllocateObject+
 ;
syntax AllocateObject
        = VariableName
        | AllocateObject FieldSelector
 ;
syntax NullifyStmt
        = 
        LblDef "nullify" "(" PointerObjectList ")" EOS
 ;
syntax PointerObjectList
        = 
        PointerObject+
 ;
syntax PointerObject
        = Name
        | PointerField
 ;
syntax PointerField
        = Name SFExprListRef? "%" Name
        | PointerField FieldSelector
 ;
syntax DeallocateStmt
        = LblDef "deallocate" "(" AllocateObjectList "," "stat=" Variable ")" EOS
        | LblDef "deallocate" "(" AllocateObjectList ")" EOS
 ;
syntax DefinedUnaryOp
        = 
        Dop
 ;
syntax DefinedBinaryOp
        = 
        Dop
 ;
syntax PointerAssignmentStmt
        = LblDef Name "=\>" Target EOS
        | LblDef Name SFExprListRef? "%" NameDataRef "=\>" Target EOS
 ;
syntax Target
        = 
        Expr
 ;
syntax WhereStmt
        = 
        LblDef "where" "(" MaskExpr ")" AssignmentStmt
 ;
syntax WhereConstruct
        = Where EndWhereStmt
        | ElseWhere EndWhereStmt
 ;
syntax Where
        = WhereConstructStmt
        | Where AssignmentStmt
 ;
syntax ElseWhere
        = Where ElsewhereStmt
        | ElseWhere AssignmentStmt
 ;
syntax WhereConstructStmt
        = 
        LblDef "where" "(" MaskExpr ")" EOS
 ;
syntax MaskExpr
        = 
        Expr
 ;
syntax ElsewhereStmt
        = 
        LblDef "elsewhere" EOS
 ;
syntax EndWhereStmt
        = LblDef "endwhere" EOS
        | LblDef "end" "where" EOS
 ;
syntax CaseConstruct
        = LblDef Name ":" "selectcase" "(" Expr ")" EOS SelectCaseRange
        | LblDef "selectcase" "(" Expr ")" EOS SelectCaseRange
        | LblDef Name ":" "select" "case" "(" Expr ")" EOS SelectCaseRange
        | LblDef "select" "case" "(" Expr ")" EOS SelectCaseRange
 ;
syntax SelectCaseRange
        = SelectCaseBody EndSelectStmt
        | EndSelectStmt
 ;
syntax SelectCaseBody
        = CaseStmt
        | SelectCaseBody CaseBodyConstruct
 ;
syntax CaseBodyConstruct
        = CaseStmt
        | ExecutionPartConstruct
 ;
syntax CaseStmt
        = LblDef "case" CaseSelector EOS
        | LblDef "case" CaseSelector Name EOS
 ;
syntax EndSelectStmt
        = LblDef "endselect" EndName? EOS
        | LblDef "end" "select" EndName? EOS
 ;
syntax CaseSelector
        = "(" CaseValueRangeList ")"
        | "default"
 ;
syntax CaseValueRangeList
        = 
        CaseValueRange+
 ;
syntax CaseValueRange
        = Expr
        | Expr ":"
        | ":" Expr
        | Expr ":" Expr
 ;
syntax BlockDoConstruct
        = 
        LblDef NameColon? "do" CommaLoopControl? EOS IN_2 ExecutionPartConstruct* EX_2 EndDoStmt
 ;
syntax NameColon
        = 
        Name ":"
 ;
syntax EndDoStmt
        = LblDef "enddo" EndName? EOS
        | LblDef "end" "do" EndName? EOS
 ;
syntax CycleStmt
        = 
        LblDef "cycle" EndName? EOS
 ;
syntax ExitStmt
        = 
        LblDef "exit" EndName? EOS
 ;
syntax Module
        = ModuleStmt ModuleBody EndModuleStmt
        | ModuleStmt EndModuleStmt
 ;
syntax ModuleBody
        = SpecificationPartConstruct
        | ModuleSubprogramPartConstruct
        | ModuleBody SpecificationPartConstruct
        | ModuleBody ModuleSubprogramPartConstruct
 ;
syntax ModuleStmt
        = 
        LblDef "module" ModuleName EOS
 ;
syntax EndModuleStmt
        = LblDef "endmodule" EndName? EOS
        | LblDef "end" "module" EndName? EOS
        | LblDef "end" EOS
 ;
syntax UseStmt
        = LblDef "use" Name EOS
        | LblDef "use" Name "," "only" ":" EOS
        | LblDef "use" Name "," RenameList EOS
        | LblDef "use" Name "," "only" ":" OnlyList EOS
 ;
syntax RenameList
        = 
        Rename+
 ;
syntax OnlyList
        = 
        Only+
 ;
syntax Rename
        = 
        Ident "=\>" UseName
 ;
syntax Only
        = GenericSpec
        | Ident "=\>" UseName
        | UseName
 ;
syntax InterfaceBlock
        = 
        InterfaceStmt InterfaceBlockBody EndInterfaceStmt
 ;
syntax InterfaceBlockBody
        = InterfaceBodyPartConstruct
        | InterfaceBlockBody InterfaceBodyPartConstruct
 ;
syntax InterfaceBodyPartConstruct
        = InterfaceBody
        | ModuleProcedureStmt
 ;
syntax InterfaceStmt
        = LblDef "interface" GenericName EOS
        | LblDef "interface" GenericSpec EOS
        | LblDef "interface" EOS
 ;
syntax EndInterfaceStmt
        = LblDef "endinterface" EOS
        | LblDef "end" "interface" EOS
 ;
syntax InterfaceBody
        = LblDef FunctionPrefix FunctionName FunctionInterfaceRange
        | LblDef "subroutine" SubroutineName SubroutineInterfaceRange
 ;
syntax FunctionInterfaceRange
        = 
        FunctionParList EOS SubprogramInterfaceBody? EndFunctionStmt
 ;
syntax SubroutineInterfaceRange
        = 
        SubroutineParList EOS SubprogramInterfaceBody? EndSubroutineStmt
 ;
syntax SubprogramInterfaceBody
        = SpecificationPartConstruct
        | SubprogramInterfaceBody SpecificationPartConstruct
 ;
syntax ModuleProcedureStmt
        = 
        LblDef "module" "procedure" ProcedureNameList EOS
 ;
syntax ProcedureNameList
        = 
        ProcedureName+
 ;
syntax ProcedureName
        = 
        Ident
 ;
syntax GenericSpec
        = "operator" "(" DefinedOperator ")"
        | "assignment" "(" "=" ")"
 ;
syntax FunctionArgList
        = FunctionArg
        | FunctionArgList "," FunctionArg
        | SectionSubscriptList "," FunctionArg
 ;
syntax FunctionArg
        = 
        Name "=" Expr
 ;
syntax ContainsStmt
        = 
        LblDef "contains" EOS
 ;
syntax ArrayName
        = 
        Ident
 ;
syntax ComponentName
        = 
        Ident
 ;
syntax GenericName
        = 
        Ident
 ;
syntax ModuleName
        = 
        Ident
 ;
syntax NamelistGroupName
        = 
        Ident
 ;
syntax UseName
        = 
        Ident
 ;
syntax TypeName
        = 
        Ident
 ;
syntax EndName
        = 
        Ident
 ;
