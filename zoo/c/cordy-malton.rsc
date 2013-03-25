@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cordy_malton

syntax C_compilation_unit
        = 
        Declaration_or_function_definition*
 ;
syntax Constant
        = Number
        | Float
        | Hex
        | Long
        | SP Dotfloat
        | Charlit
        | String
 ;
syntax String
        = 
        Stringlit+
 ;
syntax Expression
        = 
        Assignment_expression+
 ;
syntax Constant_expression
        = 
        Conditional_expression
 ;
syntax Assignment_expression
        = 
        Conditional_expression Assignment_operation?
 ;
syntax Assignment_operation
        = 
        Assignment_operator Assignment_expression
 ;
syntax Assignment_operator
        = "="
        | "*="
        | "/="
        | "%="
        | "+="
        | "-="
        | "\>\>="
        | "\<\<="
        | "&="
        | "^="
        | "|="
 ;
syntax Conditional_expression
        = 
        Binary_expression Conditional_operation?
 ;
syntax Conditional_operation
        = 
        "?" Expression ":" Conditional_expression
 ;
syntax Binary_expression
        = Unary_expression
        | Binary_expression Binary_operator Unary_expression
 ;
syntax Binary_operator
        = "+"
        | "-"
        | "*"
        | "/"
        | "%"
        | "=="
        | "!="
        | "\<"
        | "\>"
        | "\<="
        | "\>="
        | "||"
        | "&&"
        | "|"
        | "^"
        | "&"
        | "\<\<"
        | "\>\>"
 ;
syntax Unary_expression
        = Postfix_expression
        | Unary_operator SPOFF Unary_expression SPON
        | "(" Type_name ")" Unary_expression
        | Sizeof_expression
 ;
syntax Sizeof_expression
        = "sizeof" "(" Type_name ")"
        | "sizeof" Unary_expression
 ;
syntax Unary_operator
        = "*"
        | "&"
        | "+"
        | "-"
        | "!"
        | "~"
        | "++"
        | "--"
 ;
syntax Postfix_expression
        = Reference
        | Nonreference
 ;
syntax Reference
        = Reference_id
        | Reference_expression
 ;
syntax Reference_id
        = 
        Id
 ;
syntax Reference_expression
        = 
        Unannotated_reference_base Postfix_extension*
 ;
syntax Unannotated_reference_base
        = Reference_id
        | Nonreferential_primary
 ;
syntax Nonreference
        = 
        Nonreferential_primary Postfix_extension*
 ;
syntax Nonreferential_primary
        = Constant
        | String
        | "(" Expression ")"
 ;
syntax Postfix_extension
        = "[" Expression "]"
        | "(" Expression? ")"
        | "." Id
        | "-\>" Id
        | "++"
        | "--"
 ;
syntax Declaration
        = Declaration_body Semi
        | Preprocessor
 ;
syntax Declaration_body
        = Decl_specifiers Init_declarator+
        | Enum_specifier
        | Struct_or_union_specifier
 ;
syntax Decl_specifiers
        = 
        Decl_qualifier* Type_specifier? Decl_qualifier*
 ;
syntax Struct_or_union_specifier
        = Struct_or_union Tagged_reference_id? "{" (IN NL) Member_declaration* EX "}"
        | Struct_or_union Tagged_reference_id
 ;
syntax Tagged_reference_id
        = 
        Reference_id
 ;
syntax Member_declaration
        = Decl_specifiers Member_declarator+ Semi
        | Preprocessor
 ;
syntax Member_declarator
        = Declarator Bitfieldsize?
        | Bitfieldsize
 ;
syntax Bitfieldsize
        = 
        ":" Constant_expression
 ;
syntax Decl_qualifier
        = Sc_specifier
        | Cv_qualifier
        | Type_qualifier
 ;
syntax Sc_specifier
        = "auto"
        | "register"
        | "static"
        | "extern"
        | "typedef"
 ;
syntax Type_specifier
        = Simple_type_name
        | Enum_specifier
        | Struct_or_union_specifier
 ;
syntax Type_qualifier
        = "long"
        | "short"
        | "signed"
        | "unsigned"
 ;
syntax Simple_type_name
        = "char"
        | "int"
        | "void"
        | "float"
        | "double"
        | Type_id
 ;
syntax Type_id
        = 
        Reference_id
 ;
syntax Struct_or_union
        = "struct"
        | "union"
 ;
syntax Enum_specifier
        = "enum" Tagged_reference_id? "{" 
		Enumerator
		","
	       "}"
        | "enum" Tagged_reference_id
 ;
syntax Enumerator
        = 
        Reference_id Enumerator_value?
 ;
syntax Enumerator_value
        = 
        "=" Constant_expression
 ;
syntax Init_declarator
        = 
        Declarator Initialization?
 ;
syntax Declarator
        = 
        Ptr_operator* Base_declarator SPON Declarator_extension*
 ;
syntax Base_declarator
        = Reference_id
        | "(" Declarator ")"
 ;
syntax Declarator_extension
        = Function_declarator_extension
        | Array_declarator_extension
 ;
syntax Function_declarator_extension
        = 
        "(" Argument_declaration_list ")" Cv_qualifier*
 ;
syntax Array_declarator_extension
        = 
        "[" Constant_expression? "]"
 ;
syntax Ptr_operator
        = 
        "*" Cv_qualifier* SPOFF
 ;
syntax Cv_qualifier
        = "const"
        | "volatile"
 ;
syntax Type_name
        = 
        Type_specifiers Abstract_declarator?
 ;
syntax Type_specifiers
        = Type_qualifier+ Type_specifier? Type_qualifier*
        | Type_specifier Type_qualifier*
 ;
syntax Abstract_declarator
        = Ptr_operator+ Declarator_extension*
        | "(" Abstract_declarator ")" Declarator_extension*
 ;
syntax Argument_declaration_list
        = 
        
	Argument_declaration
	","
      
 ;
syntax Argument_declaration
        = Decl_specifiers Argument_declarator?
        | "..."
 ;
syntax Argument_declarator
        = Declarator
        | Abstract_declarator
 ;
syntax Initialization
        = "=" Initializer
        | "(" Constant_expression ")"
 ;
syntax Initializer
        = Expression
        | NL "{" IN 
		Initializer
		","
	       ","? EX "}"
 ;
syntax Statement
        = Label* Unlabeled_statement
        | Preprocessor
 ;
syntax Label
        = Label_id ":"
        | EX SP SP "case" Constant_expression ":" (IN NL)
        | EX SP SP "default" ":" (IN NL)
 ;
syntax Label_id
        = 
        Id
 ;
syntax Unlabeled_statement
        = Expression_statement
        | If_statement
        | For_statement
        | While_statement
        | Switch_statement
        | Do_statement
        | Null_statement
        | Jump_statement
        | Compound_statement
 ;
syntax Null_statement
        = 
        Semi
 ;
syntax Compound_statement
        = 
        "{" (IN NL) Compound_statement_body "}" ";"? NL
 ;
syntax Compound_statement_body
        = Statement* EX
        | Declaration Compound_statement_body
 ;
syntax Expression_statement
        = 
        Expression Semi
 ;
syntax If_statement
        = 
        "if" "(" Expression ")" Statement Else_statement?
 ;
syntax Switch_statement
        = 
        "switch" "(" Expression ")" Statement
 ;
syntax Else_statement
        = 
        "else" Statement
 ;
syntax While_statement
        = 
        "while" "(" Expression ")" Statement
 ;
syntax Do_statement
        = 
        "do" Statement "while" "(" Expression ")" Semi
 ;
syntax For_statement
        = 
        "for" "(" Expression? ";" Expression? ";" Expression? ")" Statement
 ;
syntax Jump_statement
        = "goto" Label_id Semi
        | "continue" Semi
        | "break" Semi
        | "return" Expression? Semi
 ;
syntax Declaration_or_function_definition
        = Declaration
        | Function_definition
 ;
syntax Function_definition
        = 
        NL Decl_specifiers Declarator KR_parameter_decls? Compound_statement NL
 ;
syntax KR_parameter_decls
        = 
        (NL IN) Declaration+ EX
 ;
syntax Semi
        = 
        ";" NL
 ;
syntax Program
        = 
        C_compilation_unit
 ;
syntax Preprocessor
        = "#define" Id "(" Id+ ")" Expression NL
        | "#define" Id Expression NL
        | EX "#else" (IN NL)
        | EX "#endif" (NL NL)
        | NL "#if" Expression (IN NL)
        | NL "#ifdef" Id (IN NL)
        | NL "#ifndef" Id (IN NL)
        | "#ident" Stringlit NL
        | "#include" Stringlit NL
        | "#include" "\<" SPOFF Filepath "\>" SPON NL
        | "#line" Integernumber Stringlit? NL
        | "#undef" Id NL
        | "#LINK" Stringlit NL
 ;
syntax Filepath
        = 
        File_id Slash_fileid*
 ;
syntax File_id
        = Id
        | Key
 ;
syntax Slash_fileid
        = 
        Slash File_id
 ;
syntax Slash
        = "/"
        | "\\"
        | "."
        | ":"
 ;
