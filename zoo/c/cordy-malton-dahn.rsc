@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cordy_malton_dahn

syntax Program
        = 
        Compilation_unit
 ;
syntax Compilation_unit
        = 
        Function_definition_or_declaration*
 ;
syntax Function_definition_or_declaration
        = Function_definition
        | Declaration
        | Preprocessor
        | Compound_statement NL
        | Macro_declaration_or_statement
        | Unknown_declaration_or_statement
 ;
syntax Function_definition
        = 
        NL Function_header Preprocessor_function_header* KR_parameter_decls? Compound_statement NL
 ;
syntax Function_header
        = Decl_specifiers? Declarator Function_declarator_extension Attribute_spec*
        | "YY_DECL" NL
 ;
syntax Preprocessor_function_header
        = NL Preprocessor Function_header
        | NL Function_header
 ;
syntax Preprocessor
        = 
        TAB_1 Preprocessor_line NL
 ;
syntax KR_parameter_decls
        = 
        (NL IN) KR_simple_declaration+ EX
 ;
syntax KR_simple_declaration
        = 
        Decl_specifiers? KR_simple_type_name Decl_specifiers? Declarator+ Semi
 ;
syntax KR_simple_type_name
        = Simple_type_name
        | Struct_or_union Id
        | Enum_specifier
        | Bit_qualifier
 ;
syntax Declaration
        = Decl_specifiers 
		Init_declarator
		","
	       Semi
        | Decl_specifiers Declarator "=" Compound_initializer NL
        | Extern_langauge_declaration
        | Null_declaration
        | Local_label Declarator+
        | Asm_spec
        | Machinestart_declaration
        | Preprocessor
 ;
syntax Extern_langauge_declaration
        = 
        "extern" Stringlit "{" (IN NL) Declaration* EX "}" ";"? NL
 ;
syntax Null_declaration
        = 
        Semi
 ;
syntax Semi
        = 
        ";" NL
 ;
syntax Local_label
        = 
        "__label__"
 ;
syntax Decl_specifiers
        = 
        Decl_qualifier_or_type_specifier+
 ;
syntax Decl_qualifier_or_type_specifier
        = Decl_qualifier
        | Type_specifier
        | Macro_specifier NosemiNL?
 ;
syntax NosemiNL
        = 
        NL
 ;
syntax Struct_or_union_specifier
        = Struct_or_union Attribute_spec* Reference_id? Struct_or_union_body Attribute_spec*
        | Struct_or_union Attribute_spec* Reference_id Attribute_spec*
 ;
syntax Struct_or_union_body
        = 
        "{" (IN NL) Member_declaration* EX "}"
 ;
syntax Member_declaration
        = Decl_specifiers 
		Member_declarator
		","
	       Semi
        | Null_declaration
        | Preprocessor
 ;
syntax Member_declarator
        = Declarator Bitfieldsize? Sub_member_declarators? Attributes_or_asm*
        | Bitfieldsize
 ;
syntax Sub_member_declarators
        = 
        "(" 
	    Member_declarator
	    ","
	   ")"
 ;
syntax Attributes_or_asm
        = Attribute_spec
        | Asm_spec
 ;
syntax Attribute_spec
        = Attribute_specifier "('(" 
		Attribute_extension
		","
	       ")')"
        | (IN NL) Acquires_releases "(" Expression ")" EX
        | Upper_macro_name
 ;
syntax Acquires_releases
        = "__acquires"
        | "__releases"
 ;
syntax Attribute_specifier
        = "__attribute__"
        | "__attribute"
 ;
syntax Attribute_extension
        = 
        Attribute_name Attribute_arguments?
 ;
syntax Attribute_name
        = Id
        | Cv_qualifier
 ;
syntax Attribute_arguments
        = 
        "(" Attribute_argument+ ")"
 ;
syntax Attribute_argument
        = "(" Attribute_argument* ")"
        | Token_or_key
 ;
syntax Bitfieldsize
        = 
        ":" Constant_expression
 ;
syntax Decl_qualifier
        = Sc_specifier
        | Type_qualifier
        | Extension_specifier
        | Weak_specifier
        | Declspec_specifier
 ;
syntax Macro_specifier
        = 
        Macro_call
 ;
syntax Sc_specifier
        = "auto"
        | "register"
        | "static"
        | "extern"
        | "far"
        | "near"
        | "typedef"
        | "local"
        | "vector"
        | "const_debug"
        | "INIT"
        | "STATIC"
        | "NEAR"
        | "FAR"
 ;
syntax Type_specifier
        = Simple_type_name
        | Enum_specifier
        | Struct_or_union_specifier
        | Typeof_expression
        | Complex_specifier
 ;
syntax Typeof_expression
        = 
        Typeof_specifier "(" Expression_or_type_name ")"
 ;
syntax Expression_or_type_name
        = Type_name
        | Expression
 ;
syntax Typeof_specifier
        = "__typeof"
        | "typeof"
        | "__typeof__"
        | "typeof__"
 ;
syntax Complex_specifier
        = 
        Complex Simple_type_or_qualifier*
 ;
syntax Complex
        = "__complex"
        | "__complex__"
        | "__Complex"
 ;
syntax Simple_type_or_qualifier
        = Simple_type_name
        | Type_qualifier
 ;
syntax Type_qualifier
        = Bit_qualifier
        | Cv_qualifier
        | Inline_qualifier
        | Restrict_qualifier
        | Init_qualifier
        | Exit_qualifier
        | User_qualifier
        | Force_qualifier
        | Asmlinkage_qualifier
        | Zexport_qualifier
        | Attribute_spec
 ;
syntax Bit_qualifier
        = "long"
        | "short"
        | "signed"
        | "unsigned"
        | "__signed__"
        | "__signed"
 ;
syntax Inline_qualifier
        = "__inline"
        | "__inline__"
        | "inline__"
        | "inline"
        | "SBA_INLINE"
 ;
syntax Init_qualifier
        = "__init"
        | "init__"
        | "init"
        | "__init__"
 ;
syntax Exit_qualifier
        = "__exit"
        | "exit__"
        | "exit"
        | "__exit__"
 ;
syntax User_qualifier
        = "__user"
        | "user__"
        | "user"
        | "__user__"
 ;
syntax Force_qualifier
        = "__force"
        | "force__"
        | "force"
        | "__force__"
 ;
syntax Asmlinkage_qualifier
        = 
        "asmlinkage"
 ;
syntax Zexport_qualifier
        = 
        "ZEXPORT"
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
syntax Macro_type_arguments
        = 
        "(" 
	    Macro_type_argument
	    ","
	   ")"
 ;
syntax Macro_type_argument
        = 
        Argument_expression
 ;
syntax Struct_or_union
        = "struct"
        | "union"
 ;
syntax Enum_specifier
        = "enum" Reference_id
        | "enum" Reference_id? "{" 
		Enumerator
		","
	       ","? Preprocessor* "}"
 ;
syntax Enumerator
        = 
        Preprocessor* Reference_id Enumerator_value?
 ;
syntax Enumerator_value
        = 
        "=" Constant_expression
 ;
syntax Extension_specifier
        = "__extension__"
        | "__extension"
 ;
syntax Weak_specifier
        = "__weak__"
        | "__weak"
 ;
syntax Declspec_specifier
        = 
        "__declspec" "(" Decl_specifiers ")"
 ;
syntax Init_declarator
        = 
        Declarator Attributes_or_asm* Initialization?
 ;
syntax Declarator
        = 
        Attribute_spec* Ptr_operator* Base_declarator SPON Declarator_extension* Attribute_spec*
 ;
syntax Base_declarator
        = Reference_id
        | SPON "(" Decl_specifiers? Declarator ")"
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
        = Nf_qualifier? "*" SPOFF Ptr_qualifier*
        | Nf_qualifier? "(" "*" ")" SPOFF Ptr_qualifier*
 ;
syntax Nf_qualifier
        = "near"
        | "far"
        | "NEAR"
        | "FAR"
 ;
syntax Ptr_qualifier
        = SPON Cv_qualifier
        | SPON Inline_qualifier
        | SPON Restrict_qualifier
        | SPON Init_qualifier
        | SPON Exit_qualifier
        | SPON User_qualifier
        | SPON Zexport_qualifier
 ;
syntax Cv_qualifier
        = "const"
        | "volatile"
        | "CONST"
        | "__const"
        | "__const__"
        | "const__"
        | "__volatile__"
        | "__volatile"
        | "volatile__"
        | "__iomem"
        | Initdata
        | "internal_function"
        | "yyconst"
        | "pascal"
        | Upper_macro_name
 ;
syntax Restrict_qualifier
        = "__restrict"
        | "restrict__"
        | "restrict"
        | "__restrict__"
 ;
syntax Type_name
        = 
        Type_specifiers Abstract_declarator*
 ;
syntax Type_specifiers
        = Type_qualifier* Type_specifier Type_qualifier*
        | Type_qualifier+
 ;
syntax Abstract_declarator
        = Ptr_operator+ Declarator_extension* SPON
        | Array_declarator_extension
        | "(" Abstract_declarator+ ")" Declarator_extension*
        | "(" Type_name+ ")"
        | "static"
 ;
syntax Argument_declaration_list
        = 
        
	    Argument_declaration
	    ","
	   Comma_dotdotdot?
 ;
syntax Argument_declaration
        = Decl_specifiers Argument_declarator?
        | "(" Argument_declaration ")"
 ;
syntax Comma_dotdotdot
        = 
        "," SP "..." SP
 ;
syntax Argument_declarator
        = Declarator Attributes_or_asm*
        | Abstract_declarator Attributes_or_asm*
 ;
syntax Initialization
        = Initdata? "=" Initializer
        | "(" Constant_expression ")"
        | Macro_call
 ;
syntax Initdata
        = "__initdata"
        | "__devinitdata"
        | "__cpuinitdata"
        | "__read_mostly"
        | "__initmv"
        | "__initdata_or_module"
        | "__pminitdata"
        | "__cpuinit"
        | "__devinit"
        | "BDATA"
        | "compat_init_data"
        | "in2000__INITDATA"
 ;
syntax Initializer
        = Preprocessor* Initializer_unit+
        | () Initializer_unit
 ;
syntax Initializer_unit
        = Assignment_expression
        | Compound_initializer
        | NL Element_label Colon_equals_or_equals? Initializer ";"?
        | NL "[" Constant_expression Dotdotdot? Constant_expression? "]" "="? Initializer ";"?
        | Macro_call
 ;
syntax Colon_equals_or_equals
        = ":"
        | "="
        | "|="
 ;
syntax Compound_initializer
        = "{" "}"
        | "{" IN 
		Initializer
		","
	       ","? ";"? Preprocessor_list_initializer* (EX NL) "}"
 ;
syntax Dotdotdot
        = 
        SP "..." SP
 ;
syntax Element_label
        = 
        "."? Element_name Element_name_extension*
 ;
syntax Element_name_extension
        = "." Element_name
        | "[" Constant_expression "]"
 ;
syntax Element_name
        = 
        Id
 ;
syntax Preprocessor_list_initializer
        = 
        Preprocessor 
	    Initializer
	    ","
	   ","?
 ;
syntax Statement
        = Preprocessor* Label* Unlabeled_statement
        | Label
        | Preprocessor
 ;
syntax Label
        = EX Label_id ":" (IN NL)
        | EX SP SP "case" Constant_expression ":" (IN NL)
        | EX SP SP "default" ":" (IN NL)
        | EX SP SP "case" Constant_expression SP "..." SP Constant_expression ":" (IN NL)
 ;
syntax Label_id
        = 
        Id
 ;
syntax Unlabeled_statement
        = C_unlabeled_statement
        | Gnu_statement
 ;
syntax Gnu_statement
        = Error_statement
        | Else_statement
 ;
syntax Error_statement
        = 
        "error" ":"? Id+ "+"? Id* Semi?
 ;
syntax C_unlabeled_statement
        = Simple_statement Semi
        | Structured_statement
 ;
syntax Simple_statement_opt_semi
        = 
        Simple_statement Semi?
 ;
syntax Structured_statement
        = If_statement
        | For_statement
        | While_statement
        | Switch_statement
        | Do_statement
        | Compound_statement
        | Asm_statement
 ;
syntax Simple_statement
        = Jump_statement
        | Null_statement
        | Expression_statement
 ;
syntax Null_statement
        = 
        ()
 ;
syntax Compound_statement
        = 
        "{" (IN NL) Compound_statement_body EX "}" ";"? NL Preprocessor*
 ;
syntax Compound_statement_body
        = 
        Declaration_or_statement*
 ;
syntax Declaration_or_statement
        = Declaration
        | Statement
        | Preprocessor
        | Function_definition
        | Macro_declaration_or_statement
        | Unknown_declaration_or_statement
 ;
syntax Expression_statement
        = 
        Pre_increment_operator* Assignment_expression Assign_assignment_expression* Comma_expression_statement?
 ;
syntax Assign_assignment_expression
        = 
        Assignment_operator Assignment_expression
 ;
syntax Comma_expression_statement
        = 
        "," Expression_statement
 ;
syntax If_statement
        = "if" "(" Expression_list Preprocessor* ")" Sub_statement Else_statement?
        | "if" Postfix_expression Sub_statement Else_statement?
 ;
syntax Sub_statement
        = Compound_statement
        | (IN NL) Statement EX
        | (IN NL) Macro_declaration_or_statement EX
 ;
syntax Switch_statement
        = "switch" "(" Expression_list ")" Sub_statement
        | "switch" Macro_call Sub_statement
 ;
syntax Else_statement
        = 
        Preprocessor* "else" Else_sub_statement
 ;
syntax Else_sub_statement
        = If_statement
        | Sub_statement
 ;
syntax While_statement
        = "while" "(" Expression_list ")" Sub_statement Else_statement?
        | Whileeachid "(" Expression_list ")" Sub_statement Else_statement?
 ;
syntax Do_statement
        = "do" Sub_statement "while" "(" Expression_list ")" Semi
        | "do" Sub_statement "while" Macro_call Semi
        | "do" Sub_statement Whileeachid "(" Expression_list ")" Semi
 ;
syntax For_statement
        = "for" "(" Expression_list? ";" Expression_list? ";" Expression_list? ")" Sub_statement
        | "for" "(" Decl_specifiers Init_declarator+ ";" Expression_list? ";" Expression_list? ")" Sub_statement
        | "for" "(" Expression_list? ";" Expression_list? ")" Sub_statement
        | Foreachid "(" Expression_list ")" Sub_statement
 ;
syntax Jump_statement
        = "goto" Label_id
        | "continue"
        | "break"
        | "return" Expression?
        | "goto" Ptr_operator Expression
        | "return" Expression Attribute_spec?
 ;
syntax Asm_statement
        = 
        Asm_spec
 ;
syntax Asm_spec
        = Asm Cv_qualifier* "(" IN Asm_template Asm_output_operands? Asm_input_operands? Asm_clobbered_registers? EX ")"
        | Asm Cv_qualifier* "{" IN Asm_instruction_semi* Asm_instruction Semi? EX "}"
 ;
syntax Asm_instruction_semi
        = 
        Asm_unit+ ";" NL
 ;
syntax Asm_instruction
        = 
        Asm_unit+ NL
 ;
syntax Asm_unit
        = 
        Token_or_key
 ;
syntax Token_or_key
        = Token
        | Key
 ;
syntax Asm
        = "__asm__"
        | "asm"
        | "asm__"
        | "__asm"
 ;
syntax Asm_template
        = 
        String_unit_NL+
 ;
syntax String_unit_NL
        = 
        String_unit NL
 ;
syntax Asm_output_operands
        = 
        ":" 
	    Asm_operand
	    ","
	   NL
 ;
syntax Asm_input_operands
        = 
        ":" 
	    Asm_operand
	    ","
	   NL
 ;
syntax Asm_operand
        = Bracketed_id? String "(" Expression ")"
        | Pseudo_string "(" Expression ")"
 ;
syntax Bracketed_id
        = 
        "[" Id "]"
 ;
syntax Asm_clobbered_registers
        = 
        ":" 
	    Asm_register
	    ","
	   NL
 ;
syntax Asm_register
        = String
        | Pseudo_string
 ;
syntax Expression_list
        = 
        Expression+
 ;
syntax Expression
        = 
        Assignment_expression
 ;
syntax Constant_expression
        = 
        Conditional_expression
 ;
syntax Assignment_expression
        = Conditional_expression
        | Unary_expression_assign Assignment_expression
 ;
syntax Unary_expression_assign
        = 
        Unary_expression Assignment_operator
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
        Logical_OR_expression Conditional_operation?
 ;
syntax Conditional_operation
        = 
        "?" Expression? ":" Conditional_expression
 ;
syntax Logical_OR_expression
        = 
        Logical_AND_expression OR_logical_AND_expression*
 ;
syntax OR_logical_AND_expression
        = 
        Logical_OR_operator Logical_AND_expression
 ;
syntax Logical_OR_operator
        = "||"
        | "OR"
        | "or"
 ;
syntax Logical_AND_expression
        = 
        Inclusive_OR_expression AND_inclusive_OR_expression*
 ;
syntax AND_inclusive_OR_expression
        = 
        Preprocessor* Logical_AND_operator Inclusive_OR_expression
 ;
syntax Logical_AND_operator
        = "&&"
        | "AND"
        | "and"
        | "ANDP"
 ;
syntax Inclusive_OR_expression
        = 
        Exclusive_OR_expression OR_exclusive_OR_expression*
 ;
syntax OR_exclusive_OR_expression
        = 
        Bit_OR_operator Exclusive_OR_expression
 ;
syntax Bit_OR_operator
        = "|"
        | "BIT_OR"
        | "bit_or"
 ;
syntax Exclusive_OR_expression
        = 
        AND_expression Exclusive_OR_AND_expression*
 ;
syntax Exclusive_OR_AND_expression
        = 
        Bit_XOR_operator AND_expression
 ;
syntax Bit_XOR_operator
        = "^"
        | "BIT_XOR"
        | "bit_xor"
 ;
syntax AND_expression
        = 
        Equality_expression AND_equality_expression*
 ;
syntax AND_equality_expression
        = 
        Bit_AND_operator Equality_expression
 ;
syntax Bit_AND_operator
        = "&"
        | "BIT_AND"
        | "bit_and"
 ;
syntax Equality_expression
        = 
        Relational_expression Equality_relational_expression*
 ;
syntax Equality_relational_expression
        = 
        Equality_operator Relational_expression
 ;
syntax Equality_operator
        = "=="
        | "!="
 ;
syntax Relational_expression
        = 
        Shift_expression Relational_shift_expression*
 ;
syntax Relational_shift_expression
        = 
        Relational_operator Shift_expression
 ;
syntax Relational_operator
        = "\<"
        | "\>"
        | "\<="
        | "\>="
 ;
syntax Shift_expression
        = 
        Additive_expression Shift_additive_expression*
 ;
syntax Shift_additive_expression
        = 
        Shift_operator Additive_expression
 ;
syntax Shift_operator
        = "\<\<"
        | "\>\>"
 ;
syntax Additive_expression
        = 
        Multiplicative_expression Add_subtract_multiplicative_expression*
 ;
syntax Add_subtract_multiplicative_expression
        = 
        Additive_operator Multiplicative_expression
 ;
syntax Additive_operator
        = "+"
        | "-"
 ;
syntax Multiplicative_expression
        = 
        Cast_expression Multipy_divide_cast_expression*
 ;
syntax Multipy_divide_cast_expression
        = 
        Multiplicative_operator Cast_expression
 ;
syntax Multiplicative_operator
        = "*"
        | "/"
        | "%"
        | "DIV"
        | "MOD"
 ;
syntax Cast_expression
        = 
        Cast_operator* Unary_expression
 ;
syntax Cast_operator
        = 
        "(" Type_name ")"
 ;
syntax Unary_expression
        = 
        Pre_increment_operator* Sub_unary_expression SPON
 ;
syntax Pre_increment_operator
        = "++" SPOFF
        | "--" SPOFF
 ;
syntax Sub_unary_expression
        = Postfix_expression
        | Unary_operator SPOFF Cast_expression SPON
        | SPON Sizeof_expression
        | SPON Alignof_expression
 ;
syntax Unary_operator
        = "&"
        | "*"
        | "+"
        | "-"
        | "~"
        | "!"
        | "&&"
        | "NOT"
        | "not"
 ;
syntax Sizeof_expression
        = "sizeof" "(" Type_name ")"
        | "sizeof" Unary_expression
 ;
syntax Alignof_expression
        = 
        Alignof_specifier "(" Expression_or_type_name ")"
 ;
syntax Alignof_specifier
        = "__alignof__"
        | "__alignof"
 ;
syntax Postfix_expression
        = 
        Primary SPOFF Postfix_extension* SPON
 ;
syntax Primary
        = Reference_id
        | Constant
        | String
        | "(" SPON Expression_list ","? ")"
        | "{" SPON Expression_list ","? "}"
        | SPON Extension_specifier "(" Expression_list ")"
        | SPON Constructor_expression
        | SPON Asm_spec
 ;
syntax Reference_id
        = Id
        | Foreachid
        | Whileeachid
 ;
syntax Compound_statement_expression
        = 
        "(" Compound_statement ")"
 ;
syntax Constructor_expression
        = "(" Constructor_type ")" "{" 
		Initializer
		","
	       ","? "}"
        | "(" Constructor_expression ")"
 ;
syntax Constructor_type
        = Struct_or_union_specifier
        | Type_specifiers Ptr_operator* Array_declarator_extension*
 ;
syntax Postfix_extension
        = "[" SPON Assignment_expression SPOFF "]"
        | SP "(" SPON 
		Argument_expression
		","
	       Dotdot? SPOFF ")"
        | "." Id
        | "-\>" Id Macro_call?
        | "++"
        | "--"
 ;
syntax Dotdot
        = 
        SP ".." SP
 ;
syntax Argument_expression
        = Preprocessor* Id? Assignment_expression Id? Colon_number? Preprocessor*
        | Type_name
        | Structured_statement
        | Equality_operator
        | Relational_operator
        | Assignment_operator Assignment_expression
        | "do"
        | "extern"
        | "continue"
        | ()
 ;
syntax Colon_number
        = 
        ":" Number
 ;
syntax Constant
        = Number
        | Float
        | Hex
        | Long
        | SP Dotfloat
        | Charlit
        | String
        | Gnu_long_int
        | Gnu_long_int_string
        | Hexfloat
 ;
syntax Gnu_long_int
        = Gnu_long_int_string
        | Gnu_long_int_charlit
 ;
syntax Gnu_long_int_string
        = 
        "L" SPOFF String SPON
 ;
syntax Gnu_long_int_charlit
        = 
        "L" SPOFF Charlit SPON
 ;
syntax Hexfloat
        = 
        Extension_specifier Hex
 ;
syntax String
        = Stringlit String_unit*
        | Pseudo_string Stringlit String_unit*
 ;
syntax String_unit
        = Stringlit
        | Pseudo_string
        | Register_spec
        | Preprocessor
 ;
syntax Pseudo_string
        = 
        Ps_name Ps_arguments?
 ;
syntax Ps_name
        = 
        Id
 ;
syntax Ps_arguments
        = 
        "(" Ps_argument_list ")"
 ;
syntax Ps_argument_list
        = 
        
	Ps_argument
	","
      
 ;
syntax Ps_argument
        = Constant_expression
        | Register_spec
 ;
syntax Register_spec
        = "%" SPOFF "%"? Id SPON
        | "%" SPOFF "%"? Integernumber Id? SPON
 ;
syntax Machinestart_declaration
        = 
        "MACHINE_START" "(" Expression_list ")" IN 
	    Initializer
	    ","
	   ","? (EX NL) "MACHINE_END" ";"? NL
 ;
syntax Device_attr
        = "DEVICE_ATTR"
        | "SYSDEV_ATTR"
        | "DEFINE_TIMER"
        | "DECLARE_TASKLET"
 ;
syntax Macro_declaration_or_statement
        = Reference_id_equals? Macro_call Equals_initializer? ";"? NL
        | Upper_macro_name ";"? NL
 ;
syntax Reference_id_equals
        = 
        Reference_id "="
 ;
syntax Statement_declaration_or_end
        = Declaration_or_statement
        | "}"
 ;
syntax Macro_call
        = 
        Macro_name "(" Macro_arguments ")"
 ;
syntax Macro_arguments
        = 
        Macro_argument*
 ;
syntax Macro_argument
        = "(" Macro_arguments ")"
        | Token
        | Key
 ;
syntax Equals_initializer
        = "=" Initializer
        | Initializer
 ;
syntax Macro_name
        = 
        Id
 ;
syntax Upper_macro_name
        = 
        Upperlowerid
 ;
syntax Unknown_declaration_or_statement
        = Unknown_item+ ";" NL
        | Unknown_item+ NL
 ;
syntax Unknown_item
        = "{" Unknown_item* "}"
        | Token
        | Key
 ;
