@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Dagenais_cordy

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = Interface
        | Module
        | GInterface
        | GModule
        | IInterface
        | IModule
 ;
syntax Interface
        = 
        "UNSAFE"? "INTERFACE" Id ";" (NL NL) Import* Decl* NL "END" Id "." NL
 ;
syntax IInterface
        = 
        "UNSAFE"? "INTERFACE" Id "=" Id GenActls "END" Id "." NL
 ;
syntax Module
        = 
        "UNSAFE"? "MODULE" Id Exports? ";" (NL NL) Import* Block Id "." NL
 ;
syntax IModule
        = 
        "UNSAFE"? "MODULE" Id Exports? "=" Id GenActls "END" Id "." NL
 ;
syntax GInterface
        = 
        "GENERIC" "INTERFACE" Id GenFmls ";" Import* Decl* NL "END" Id "." NL
 ;
syntax GModule
        = 
        "GENERIC" "MODULE" Id GenFmls ";" (NL NL) Import* Block Id "." NL
 ;
syntax Exports
        = 
        "EXPORTS" IdList
 ;
syntax Import
        = AsImport
        | FromImport (NL NL)
 ;
syntax AsImport
        = 
        "IMPORT" ImportItem ComaImportItem* ";" (NL NL)
 ;
syntax ComaImportItem
        = 
        "," ImportItem
 ;
syntax FromImport
        = 
        "FROM" Id "IMPORT" IdList ";" (NL NL)
 ;
syntax Block
        = 
        Decl* "BEGIN" Stmts "END"
 ;
syntax Decl
        = ProcedureHead EqualBlock? ";" (NL NL)
        | "VAR" (IN NL) VariableDecl* EX
        | "TYPE" (IN NL) TypeDecl* (EX NL)
        | "CONST" (IN NL) ConstDecl* (EX NL)
        | "EXCEPTION" (IN NL) ExceptionDecl* (EX NL)
        | "REVEAL" (IN NL) RevealDecl* (EX NL)
 ;
syntax EqualBlock
        = 
        "=" (IN NL) Block Id EX
 ;
syntax GenFmls
        = 
        "(" IdList? ")"
 ;
syntax GenActls
        = 
        "(" IdList? ")"
 ;
syntax ImportItem
        = 
        Id AsId?
 ;
syntax AsId
        = 
        "AS" Id
 ;
syntax ConstDecl
        = 
        Id ColonType? "=" ConstExpr ";" NL
 ;
syntax ColonType
        = 
        ":" Type
 ;
syntax TypeDecl
        = Id "=" Type ";" NL
        | Id "\<:" Type ";" NL
 ;
syntax RevealDecl
        = QualId "=" Type ";" NL
        | QualId "\<:" Type ";" NL
 ;
syntax ExceptionDecl
        = 
        Id ParenthesizedType? ";" NL
 ;
syntax ParenthesizedType
        = 
        "(" Type ")"
 ;
syntax VariableDecl
        = 
        IdList ColonType? EqualExpr? ";" NL
 ;
syntax EqualExpr
        = 
        ":=" Expr
 ;
syntax ProcedureHead
        = 
        "PROCEDURE" Id Signature
 ;
syntax Signature
        = 
        "(" Formals? ")" ColonType? Raises?
 ;
syntax Raises
        = 
        "RAISES" RaisesList
 ;
syntax Formals
        = 
        Formal SemicolonFormal* ";"?
 ;
syntax SemicolonFormal
        = 
        ";" Formal
 ;
syntax Formal
        = 
        Mode? IdList ColonType? EqualConstExpr?
 ;
syntax EqualConstExpr
        = 
        ":=" ConstExpr
 ;
syntax Mode
        = "VALUE"
        | "VAR"
        | "READONLY"
 ;
syntax RaisesList
        = "{" 
		QualId
		","
	       "}"
        | "ANY"
 ;
syntax Stmts
        = 
        (IN NL) OptStmts? EX
 ;
syntax OptStmts
        = 
        Stmt SemiColonStmt* ";"? NL
 ;
syntax SemiColonStmt
        = 
        ";" NL Stmt
 ;
syntax Stmt
        = IfStmt
        | ForStmt
        | ReturnStmt
        | WhileStmt
        | AssignStmt
        | CallStmt
        | Block
        | CaseStmt
        | ExitStmt
        | EvalStmt
        | LockStmt
        | LoopStmt
        | RaiseStmt
        | RepeatStmt
        | TypecaseStmt
        | TryStmt
        | WithStmt
 ;
syntax AssignStmt
        = 
        Expr ":=" Expr
 ;
syntax CallStmt
        = 
        Expr "(" 
	    Actual
	    ","
	   ")"
 ;
syntax CaseStmt
        = 
        "CASE" Expr "OF" NL Case? VerticalCase* ElseStmts? "END"
 ;
syntax VerticalCase
        = 
        "|" Case
 ;
syntax ElseStmts
        = 
        "ELSE" Stmts
 ;
syntax ExitStmt
        = 
        "EXIT"
 ;
syntax EvalStmt
        = 
        "EVAL" Expr
 ;
syntax ForStmt
        = 
        "FOR" Id ":=" Expr "TO" Expr ByExpr? "DO" Stmts "END"
 ;
syntax ByExpr
        = 
        "BY" Expr
 ;
syntax IfStmt
        = 
        "IF" Expr "THEN" Stmts Elsif* ElseStmts? "END"
 ;
syntax Elsif
        = 
        "ELSIF" Expr "THEN" Stmts
 ;
syntax LockStmt
        = 
        "LOCK" Expr "DO" Stmts "END"
 ;
syntax LoopStmt
        = 
        "LOOP" Stmts "END"
 ;
syntax RaiseStmt
        = 
        "RAISE" QualId ParenthesizedExpr?
 ;
syntax ParenthesizedExpr
        = 
        "(" Expr ")"
 ;
syntax RepeatStmt
        = 
        "REPEAT" Stmts "UNTIL" Expr
 ;
syntax ReturnStmt
        = 
        "RETURN" Expr?
 ;
syntax TypecaseStmt
        = 
        "TYPECASE" Expr "OF" NL TCase? VerticalTCase* ElseStmts? "END"
 ;
syntax VerticalTCase
        = 
        "|" TCase
 ;
syntax TryStmt
        = 
        "TRY" Stmts ExceptOrFinally "END"
 ;
syntax ExceptOrFinally
        = "EXCEPT" NL Handler? VerticalHandler* ElseStmts?
        | "FINALLY" Stmts
 ;
syntax VerticalHandler
        = 
        "|" Handler
 ;
syntax WhileStmt
        = 
        "WHILE" Expr "DO" Stmts "END"
 ;
syntax WithStmt
        = 
        "WITH" Binding+ "DO" Stmts "END"
 ;
syntax Case
        = 
        
	    Labels
	    ","
	   "=\>" Stmts
 ;
syntax Labels
        = 
        ConstExpr DotDotConstExpr?
 ;
syntax DotDotConstExpr
        = 
        ".." ConstExpr
 ;
syntax Handler
        = 
        
	    QualId
	    ","
	   ParenthesizedId? "=\>" Stmts
 ;
syntax ParenthesizedId
        = 
        "(" Id ")"
 ;
syntax TCase
        = 
        
	    Type
	    ","
	   ParenthesizedId? "=\>" Stmts
 ;
syntax Binding
        = 
        Id "=" Expr
 ;
syntax Actual
        = Type
        | Expr
        | Id ":=" Expr
 ;
syntax Type
        = TypeName
        | ArrayType
        | EnumerationType
        | RecordType
        | ObjectType
        | ProcedureType
        | RefType
        | SetType
        | SubrangeType
        | PackedType
        | "(" Type ")"
 ;
syntax ArrayType
        = 
        "ARRAY" 
	    Type
	    ","
	   "OF" Type
 ;
syntax PackedType
        = 
        "BITS" ConstExpr "FOR" Type
 ;
syntax EnumerationType
        = 
        "{" IdList? "}"
 ;
syntax ObjectType
        = 
        ObjectOrTypeName? Brand? "OBJECT" (IN NL) Fields TheMethods? TheOverrides? "END" EX
 ;
syntax ObjectOrTypeName
        = TypeName
        | ObjectType
 ;
syntax TheMethods
        = 
        "METHODS" NL Methods
 ;
syntax TheOverrides
        = 
        "OVERRIDES" NL Overrides
 ;
syntax ProcedureType
        = 
        "PROCEDURE" Signature
 ;
syntax RecordType
        = 
        "RECORD" (IN NL) Fields "END" EX
 ;
syntax RefType
        = 
        "UNTRACED"? Brand? "REF" Type
 ;
syntax SetType
        = 
        "SET" "OF" Type
 ;
syntax SubrangeType
        = 
        "[" ConstExpr ".." ConstExpr "]"
 ;
syntax Brand
        = 
        "BRANDED" ConstExpr?
 ;
syntax Fields
        = 
        FieldList?
 ;
syntax FieldList
        = 
        IN Field SemiColonField* ";"? (EX NL)
 ;
syntax SemiColonField
        = 
        ";" NL Field
 ;
syntax Field
        = 
        IdList ColonType? EqualConstExpr?
 ;
syntax Methods
        = 
        MethodList?
 ;
syntax MethodList
        = 
        IN Method SemiColonMethod* ";"? (EX NL)
 ;
syntax SemiColonMethod
        = 
        ";" NL Method
 ;
syntax Method
        = 
        Id Signature EqualConstExpr?
 ;
syntax Overrides
        = 
        OverrideList?
 ;
syntax OverrideList
        = 
        IN Override SemiColonOverride* ";"? (EX NL)
 ;
syntax SemiColonOverride
        = 
        ";" NL Override
 ;
syntax Override
        = 
        Id ":=" ConstExpr
 ;
syntax ConstExpr
        = 
        Expr
 ;
syntax Expr
        = 
        E1 OrE1*
 ;
syntax OrE1
        = 
        "OR" E1
 ;
syntax E1
        = 
        E2 AndE2*
 ;
syntax AndE2
        = 
        "AND" E2
 ;
syntax E2
        = 
        "NOT"* E3
 ;
syntax E3
        = 
        E4 RelOpE4*
 ;
syntax RelOpE4
        = 
        RelOp E4
 ;
syntax E4
        = 
        E5 AddOpE5*
 ;
syntax AddOpE5
        = 
        AddOp E5
 ;
syntax E5
        = 
        E6 MulOpE6*
 ;
syntax MulOpE6
        = 
        MulOp E6
 ;
syntax E6
        = 
        SignOp* E7
 ;
syntax E7
        = 
        E8 Selector*
 ;
syntax E8
        = Id
        | Number
        | Charlit
        | Stringlit
        | "(" Expr ")"
        | Constructor
 ;
syntax SignOp
        = "+"
        | "-"
 ;
syntax RelOp
        = "="
        | "#"
        | "\<"
        | "\<="
        | "\>"
        | "\>="
        | "IN"
 ;
syntax AddOp
        = "+"
        | "-"
        | "&"
 ;
syntax MulOp
        = "*"
        | "/"
        | "DIV"
        | "MOD"
 ;
syntax Selector
        = "." Id
        | "[" Expr ComaExpr* "]"
        | "(" 
		Actual
		","
	       ")"
        | "^"
 ;
syntax ComaExpr
        = 
        "," Expr
 ;
syntax Constructor
        = 
        Type "{" AnyCons "}"
 ;
syntax AnyCons
        = SetCons
        | RecordCons
        | ArrayCons
 ;
syntax SetCons
        = 
        
	SetElt
	","
      
 ;
syntax SetElt
        = 
        Expr DotDotExpr?
 ;
syntax DotDotExpr
        = 
        ".." Expr
 ;
syntax RecordCons
        = 
        
	RecordElt
	","
      
 ;
syntax RecordElt
        = 
        Expr EqualExpr?
 ;
syntax ArrayCons
        = 
        
	    Expr
	    ","
	   ComaDotDot?
 ;
syntax ComaDotDot
        = 
        "," ".."
 ;
syntax IdList
        = 
        
	Id
	","
      
 ;
syntax QualId
        = 
        Id DotId?
 ;
syntax DotId
        = 
        "." Id
 ;
syntax TypeName
        = QualId
        | "ROOT"
        | "UNTRACED" "ROOT"
 ;

public void main()
{
	registerLanguage("Dagenais_cordy", "ext", program(str input, loc org) {return parse(#program, input, org);});
	println("Language registered.");
}
