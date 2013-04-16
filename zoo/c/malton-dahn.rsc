@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Malton_dahn

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        | Gnu_long_int
        | Gnu_long_int_string+
        | Hexfloat
 ;
syntax String
        = 
        Stringlit+
 ;
syntax Expression
        = Assignment_expression+
        | Comment_NL* "..."
 ;
syntax Constant_expression
        = Conditional_expression
        | Restrict_qualifier
 ;
syntax Assignment_expression
        = Conditional_expression Assignment_operation?
        | Conditional_expression
        | Conditional_expression Assignment_operation
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
        = Binary_expression Conditional_operation?
        | Binary_expression Conditional_operation*
 ;
syntax Conditional_operation
        = "?" Expression ":" Conditional_expression
        | "?" Expression? ":" Binary_expression
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
        | Alignof_expression
 ;
syntax Sizeof_expression
        = "sizeof" Unary_expression
        | "sizeof" "(" Type_name ")"
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
        | "&&"
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
        | Compound_statement_expression
        | Compound_literal
        | Extension_specifier Compound_statement_expression
        | Extension_specifier "(" Expression ")"
 ;
syntax Postfix_extension
        = "(" Expression? ")"
        | "[" Expression "]"
        | "(" 
		Argument_expression
		","
	       ")"
        | "." Id
        | "-\>" Id
        | "++"
        | "--"
 ;
syntax Declaration
        = Comment_NL
        | Null_declaration
        | Declaration_body Semi
        | Preprocessor
 ;
syntax Declaration_body
        = Enum_specifier
        | Struct_or_union_specifier
        | Decl_specifiers Init_declarator+
        | Decl_qualifier* Struct_or_union_specifier
        | Decl_qualifier* Enum_specifier Attribute_spec*
        | Local_label Declarator+
        | Asm_spec
 ;
syntax Decl_specifiers
        = Decl_qualifier* Type_specifier? Decl_qualifier*
        | Decl_qualifier* Type_specifier Decl_qualifier*
        | Decl_qualifier*
 ;
syntax Struct_or_union_specifier
        = Struct_or_union Tagged_reference_id? "{" IN NL Member_declaration* EX "}"
        | Struct_or_union Tagged_reference_id
        | Struct_or_union Attribute_spec* Tagged_reference_id? "{" IN NL Member_declaration* EX "}" Attribute_spec*
        | Struct_or_union Attribute_spec* Tagged_reference_id
 ;
syntax Tagged_reference_id
        = 
        Reference_id
 ;
syntax Member_declaration
        = Comment_NL
        | Decl_specifiers Member_declarator+ Semi
        | Decl_qualifier* Struct_or_union_specifier Semi
        | Semi
        | Preprocessor
 ;
syntax Member_declarator
        = Declarator Bitfieldsize?
        | Declarator Bitfieldsize? Attributes_or_asm*
        | Bitfieldsize
 ;
syntax Bitfieldsize
        = 
        ":" Constant_expression
 ;
syntax Decl_qualifier
        = Cv_qualifier
        | Sc_specifier
        | Type_qualifier
        | Attribute_spec
        | Extension_specifier
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
        | Typeof_expression
        | Complex_specifier
 ;
syntax Type_qualifier
        = "long"
        | "short"
        | "signed"
        | "unsigned"
        | Bit_qualifier
        | Inline_qualifier
        | Cv_qualifier
        | Restrict_qualifier
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
        | "enum" Tagged_reference_id? "{" 
		Enumerator
		","
	       ","? "}"
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
        = Declarator Initialization?
        | Declarator Initialization? Attributes_or_asm*
 ;
syntax Declarator
        = Ptr_operator* Base_declarator SPON Declarator_extension*
        | Attribute_spec* Ptr_operator* Base_declarator Declarator_extension* Attribute_spec*
 ;
syntax Base_declarator
        = Reference_id
        | "(" Declarator ")"
        | Attribute_spec* Reference_id
        | Attribute_spec* "(" Declarator ")"
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
        = "*" Cv_qualifier* SPOFF
        | "*" Ptr_qualifier*
 ;
syntax Cv_qualifier
        = "const"
        | "volatile"
        | "__const"
        | "__const__"
        | "const__"
        | "__volatile__"
        | "__volatile"
        | "volatile__"
 ;
syntax Type_name
        = 
        Type_specifiers Abstract_declarator?
 ;
syntax Type_specifiers
        = Type_qualifier+ Type_specifier? Type_qualifier*
        | Type_specifier Type_qualifier*
        | Type_qualifier* Type_specifier Type_qualifier*
        | Type_qualifier*
 ;
syntax Abstract_declarator
        = Ptr_operator+ Declarator_extension*
        | Array_declarator_extension*
        | "(" Abstract_declarator ")" Declarator_extension*
 ;
syntax Argument_declaration_list
        = 
	    Argument_declaration
	    ","
	  
        | "..." Comment_NL*
 ;
syntax Argument_declaration
        = Decl_specifiers Argument_declarator?
        | "..."
        | Comment_NL* "..."
        | "..." Comment_NL*
 ;
syntax Argument_declarator
        = Declarator
        | Abstract_declarator
 ;
syntax Initialization
        = "=" Initializer
        | "(" Constant_expression ")"
        | Comment_NL* "..."
 ;
syntax Initializer
        = Expression
        | NL "{" IN 
		Initializer
		","
	       ","? EX "}"
        | Comment_NL* "..."
        | Assignment_expression
        | NL "{" IN 
		Designated_initializer
		","
	       ","? EX "}"
 ;
syntax Statement
        = Label* Unlabeled_statement
        | Preprocessor
        | Comment_NL
        | Label
 ;
syntax Label
        = Label_id ":"
        | Label_id ":" Attribute_spec*
        | EX SP SP "case" Constant_expression ":" IN NL
        | EX SP SP "case" Constant_expression SP "..." SP Constant_expression ":" IN NL
        | EX SP SP "default" ":" IN NL
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
        | Asm_statement
 ;
syntax Null_statement
        = 
        Semi
 ;
syntax Compound_statement
        = "{" IN NL Compound_statement_body "}" ";"? NL
        | Comment_NL* "..."
        | "{" NL Compound_statement_body* "}" ";"? NL
 ;
syntax Compound_statement_body
        = Statement* EX
        | Declaration Compound_statement_body
        | IN Declaration EX
        | IN Function_definition EX
        | IN Statement EX
 ;
syntax Expression_statement
        = 
        Expression Semi
 ;
syntax If_statement
        = "if" "(" Expression ")" Statement Else_statement?
        | "if" "(" Expression ")" Comment_NL* Statement Else_statement?
 ;
syntax Switch_statement
        = "switch" "(" Expression ")" Statement
        | "switch" "(" Expression ")" Comment_NL* Statement
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
        = "for" "(" Expression? ";" Expression? ";" Expression? ")" Statement
        | "for" "(" Declaration_body ";" Expression? ";" Expression? ")" Statement
 ;
syntax Jump_statement
        = "goto" Label_id Semi
        | "continue" Semi
        | "break" Semi
        | "return" Expression? Semi
        | "goto" Ptr_operator Expression Semi
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
        NL IN Declaration+ EX
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
        | EX "#else" IN NL
        | EX "#endif" NL NL
        | NL "#if" Expression IN NL
        | NL "#ifdef" Id IN NL
        | NL "#ifndef" Id IN NL
        | "#ident" Stringlit NL
        | "#include" Stringlit NL
        | "#include" "\<" SPOFF Filepath "\>" SPON NL
        | "#line" Integernumber Stringlit? NL
        | "#undef" Id NL
        | "#LINK" Stringlit NL
        | EX "#endif" Comment_NL? NL
        | "..."
        | "..." Comment_NL?
        | "#" Integernumber String Integernumber* NL
        | "#pragma" SPON Id* "(" 
		Id
		","
	       ")" NL
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
syntax Comment_NL
        = 
        Comment NL
 ;
syntax Null_declaration
        = 
        Semi
 ;
syntax Local_label
        = 
        "__label__"
 ;
syntax Ptr_qualifier
        = Restrict_qualifier
        | Cv_qualifier
 ;
syntax Restrict_qualifier
        = "__restrict"
        | "restrict__"
        | "restrict"
        | "__restrict__"
 ;
syntax Designator
        = Array_designator
        | Struct_or_union_designator
 ;
syntax Array_designator
        = "[" Constant_expression "]" Postfix_extension*
        | "[" Constant_expression SP "..." SP Constant_expression "]" Postfix_extension*
 ;
syntax Struct_or_union_designator
        = 
        "."? Id Postfix_extension*
 ;
syntax Designator_assignment
        = ":"
        | "="
 ;
syntax Extension_specifier
        = 
        "__extension__"
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
 ;
syntax Attributes_or_asm
        = Attribute_spec
        | Asm_spec
 ;
syntax Attribute_spec
        = 
        "__attribute__" "('(" 
	    Attribute_extension
	    ","
	   ")')"
 ;
syntax Attribute_extension
        = Attribute_alias "(" String ")"
        | Attribute_aligned
        | Attribute_aligned "(" Tagged_attribute_number ")"
        | Attribute_aligned "(" Alignof_expression ")"
        | Attribute_always_inline
        | Attribute_cdecl
        | Attribute_cleanup "(" Tagged_attribute_id ")"
        | Attribute_const
        | Attribute_constructor
        | Attribute_deprecated
        | Attribute_destructor
        | Attribute_dllexport
        | Attribute_dllimport
        | Attribute_eightbit
        | Attribute_exception "(" Exception_function 
		Exception_arg
		","
	       ")"
        | Attribute_far
        | Attribute_funvector
        | Attribute_format "(" Format_archetype "," Tagged_attribute_number "," Tagged_attribute_number ")"
        | Attribute_format_arg "(" Tagged_attribute_number ")"
        | Attribute_interrupt
        | Attribute_interrupt "(" String ")"
        | Attribute_interrupt_handler
        | Attribute_interrupt_handler "(" String ")"
        | Attribute_longcall
        | Attribute_long_call
        | Attribute_malloc
        | Attribute_may_alias
        | Attribute_mode "(" Tagged_attribute_id ")"
        | Attribute_model "(" Attribute_model_name ")"
        | Attribute_naked
        | Attribute_near
        | Attribute_no_check_mem
        | Attribute_no_instrument
        | Attribute_nocommon
        | Attribute_noinline
        | Attribute_nonnull
        | Attribute_nonnull "(" Tagged_attribute_number+ ")"
        | Attribute_noreturn
        | Attribute_nothrow
        | Attribute_packed
        | Attribute_pure
        | Attribute_regparm "(" Tagged_attribute_number ")"
        | Attribute_section "(" String ")"
        | Attribute_shared
        | Attribute_short_call
        | Attribute_signal "(" String ")"
        | Attribute_sp_switch "(" String ")"
        | Attribute_stdcall
        | Attribute_tiny
        | Attribute_tls_model "(" Tls_model_type ")"
        | Attribute_trans_union
        | Attribute_trap_exit "(" Tagged_attribute_number ")"
        | Attribute_used
        | Attribute_unused
        | Attribute_vector_size "(" Tagged_attribute_number ")"
        | Attribute_visibility "(" Visibility_type ")"
        | Attribute_weak
 ;
syntax Tagged_attribute_id
        = 
        Id
 ;
syntax Tagged_attribute_number
        = 
        Number
 ;
syntax Attribute_near
        = "__near__"
        | "__near"
        | "near__"
        | "near"
 ;
syntax Attribute_far
        = "__far__"
        | "__far"
        | "far__"
        | "far"
 ;
syntax Attribute_visibility
        = "__visibility__"
        | "__visibility"
        | "visibility__"
        | "visibility"
 ;
syntax Visibility_type
        = "\"default\""
        | "\"hidden\""
        | "\"protected\""
        | "\"internal\""
 ;
syntax Attribute_nonnull
        = "__nonnull__"
        | "__nonnull"
        | "nonnull__"
        | "nonnull"
 ;
syntax Attribute_nothrow
        = "__nothrow__"
        | "__nothrow"
        | "nothrow__"
        | "nothrow"
 ;
syntax Attribute_may_alias
        = "__may_alias__"
        | "__may_alias"
        | "may_alias__"
        | "may_alias"
 ;
syntax Attribute_tls_model
        = "__tls_model__"
        | "__tls_model"
        | "tls_model__"
        | "tls_model"
 ;
syntax Tls_model_type
        = "\"global-dynamic\""
        | "\"local-dynamic\""
        | "\"initial-exec\""
        | "\"local-exec\""
 ;
syntax Attribute_cleanup
        = "__cleanup__"
        | "__cleanup"
        | "cleanup__"
        | "cleanup"
 ;
syntax Attribute_dllexport
        = "__dllexport__"
        | "__dllexport"
        | "dllexport__"
        | "dllexport"
 ;
syntax Attribute_used
        = "__used__"
        | "__used"
        | "used__"
        | "used"
 ;
syntax Attribute_always_inline
        = "__always_inline__"
        | "__always_inline"
        | "always_inline__"
        | "always_inline"
 ;
syntax Attribute_noinline
        = "__noinline__"
        | "__noinline"
        | "noinline__"
        | "noinline"
 ;
syntax Attribute_vector_size
        = "__vector_size__"
        | "__vector_size"
        | "vector_size__"
        | "vector_size"
 ;
syntax Attribute_deprecated
        = "__deprecated__"
        | "__deprecated"
        | "deprecated__"
        | "deprecated"
 ;
syntax Attribute_mode
        = "__mode__"
        | "__mode"
        | "mode__"
        | "mode"
 ;
syntax Attribute_format
        = "__format__"
        | "__format"
        | "format__"
        | "format"
 ;
syntax Attribute_format_arg
        = "__format_arg__"
        | "__format_arg"
        | "format_arg__"
        | "format_arg"
 ;
syntax Attribute_aligned
        = "__aligned__"
        | "__aligned"
        | "aligned__"
        | "aligned"
 ;
syntax Attribute_weak
        = "weak"
        | "__weak__"
        | "__weak"
        | "weak__"
 ;
syntax Attribute_alias
        = "alias"
        | "__alias__"
        | "__alias"
        | "alias__"
 ;
syntax Attribute_no_check_mem
        = "no_check_memory_usage"
        | "__no_check_memory_usage__"
        | "__no_check_memory_usage"
        | "no_check_memory_usage__"
 ;
syntax Attribute_regparm
        = "regparm"
        | "__regparm__"
        | "__regparm"
        | "regparm__"
 ;
syntax Attribute_stdcall
        = "stdcall"
        | "__stdcall__"
        | "__stdcall"
        | "stdcall__"
 ;
syntax Attribute_cdecl
        = "cdecl"
        | "__cdecl__"
        | "__cdecl"
        | "cdecl__"
 ;
syntax Attribute_longcall
        = "longcall"
        | "__longcall__"
        | "__longcall"
        | "longcall__"
 ;
syntax Attribute_long_call
        = "long_call"
        | "__long_call__"
        | "__long_call"
        | "long_call__"
 ;
syntax Attribute_short_call
        = "short_call"
        | "__short_call__"
        | "__short_call"
        | "short_call__"
 ;
syntax Attribute_dllimport
        = "dllimport"
        | "__dllimport__"
        | "__dllimport"
        | "dllimport__"
 ;
syntax Attribute_exception
        = "exception"
        | "__exception__"
        | "__exception"
        | "exception__"
 ;
syntax Exception_function
        = Stringlit* Stringlit
        | Tagged_attribute_id
 ;
syntax Exception_arg
        = Stringlit* Stringlit
        | Tagged_attribute_id
 ;
syntax Attribute_funvector
        = "function_vector"
        | "__function_vector__"
        | "__function_vector"
        | "function_vector__"
 ;
syntax Attribute_interrupt
        = "interrupt"
        | "__interrupt__"
        | "__interrupt"
        | "interrupt__"
 ;
syntax Attribute_interrupt_handler
        = "interrupt_handler"
        | "__interrupt_handler__"
        | "__interrupt_handler"
        | "interrupt_handler__"
 ;
syntax Attribute_sp_switch
        = "sp_switch"
        | "__sp_switch__"
        | "__sp_switch"
        | "sp_switch__"
 ;
syntax Attribute_trap_exit
        = "trap_exit"
        | "__trap_exit__"
        | "__trap_exit"
        | "trap_exit__"
 ;
syntax Attribute_eightbit
        = "eightbit_data"
        | "__eightbit_data__"
        | "__eightbit_data"
        | "eightbit_data__"
 ;
syntax Attribute_tiny
        = "tiny_data"
        | "__tiny_data__"
        | "__tiny_data"
        | "tiny_data__"
 ;
syntax Attribute_signal
        = "signal"
        | "__signal__"
        | "__signal"
        | "signal__"
 ;
syntax Attribute_naked
        = "naked"
        | "__naked__"
        | "__naked"
        | "naked__"
 ;
syntax Attribute_model
        = "model"
        | "__model__"
        | "__model"
        | "model__"
 ;
syntax Attribute_model_name
        = "small"
        | "__small__"
        | "__small"
        | "small__"
        | "medium"
        | "__medium__"
        | "__medium"
        | "medium__"
        | "large"
        | "__large__"
        | "__large"
        | "large__"
 ;
syntax Attribute_nocommon
        = "nocommon"
        | "__nocommon__"
        | "nocommon__"
        | "__nocommon"
 ;
syntax Attribute_shared
        = "shared"
        | "__shared__"
        | "__shared"
        | "shared__"
 ;
syntax Attribute_malloc
        = "malloc"
        | "__malloc__"
        | "__malloc"
        | "malloc__"
 ;
syntax Format_archetype
        = "printf"
        | "__printf__"
        | "__printf"
        | "printf__"
        | "scanf"
        | "__scanf__"
        | "__scanf"
        | "scanf__"
        | "strftime"
        | "__strftime__"
        | "__strftime"
        | "strftime__"
        | "strfmon"
        | "__strfmon__"
        | "__strfmon"
        | "strfmon__"
 ;
syntax Attribute_noreturn
        = "__noreturn__"
        | "__noreturn"
        | "noreturn__"
        | "noreturn"
 ;
syntax Attribute_const
        = "__const__"
        | "__const"
        | "const__"
        | "const"
 ;
syntax Attribute_pure
        = "__pure__"
        | "__pure"
        | "pure__"
        | "pure"
 ;
syntax Attribute_trans_union
        = "__transparent_union__"
        | "__transparent_union"
        | "transparent_union__"
        | "transparent_union"
 ;
syntax Attribute_unused
        = "__unused__"
        | "__unused"
        | "unused__"
        | "unused"
 ;
syntax Attribute_packed
        = "__packed__"
        | "__packed"
        | "packed__"
        | "packed"
 ;
syntax Attribute_no_instrument
        = "no_instrument_function"
        | "__no_instrument_function__"
        | "__no_instrument_function"
        | "no_instrument_function__"
 ;
syntax Attribute_section
        = "section"
        | "__section__"
        | "__section"
        | "section__"
 ;
syntax Attribute_constructor
        = "constructor"
        | "__constructor__"
        | "__constructor"
        | "constructor__"
 ;
syntax Attribute_destructor
        = "destructor"
        | "__destructor__"
        | "__destructor"
        | "destructor__"
 ;
syntax Asm_statement
        = 
        Asm_spec Semi
 ;
syntax Asm_spec
        = 
        Asm_or_cv+ "(" Asm_template Asm_output_operands? Asm_input_operands? Asm_clobbered_registers? ")"
 ;
syntax Asm_or_cv
        = "__asm__"
        | "asm"
        | "asm__"
        | "__asm"
        | Cv_qualifier
 ;
syntax Asm_template
        = 
        String
 ;
syntax Asm_output_operands
        = 
        ":" 
	    Asm_operand
	    ","
	  
 ;
syntax Asm_input_operands
        = 
        ":" 
	    Asm_operand
	    ","
	  
 ;
syntax Asm_operand
        = 
        String "(" Expression ")"
 ;
syntax Asm_clobbered_registers
        = 
        ":" 
	    String
	    ","
	  
 ;
syntax Compound_statement_expression
        = 
        "(" Compound_statement ")"
 ;
syntax Compound_literal
        = "(" Struct_or_union_specifier ")" "{" 
		Designated_initializer
		","
	       ","? "}"
        | "(" Compound_literal_array_type ")" "{" 
		Designated_initializer
		","
	       ","? "}"
        | "(" Compound_literal ")"
 ;
syntax Compound_literal_array_type
        = 
        Type_specifiers Compound_literal_array_declarator
 ;
syntax Compound_literal_array_declarator
        = Ptr_operator* Array_declarator_extension*
        | "(" Compound_literal_array_declarator ")" Array_declarator_extension*
 ;
syntax Typeof_expression
        = Typeof_specifier "(" Simple_type_name ")"
        | Typeof_specifier "(" Expression ")"
 ;
syntax Typeof_specifier
        = "__typeof"
        | "typeof"
        | "__typeof__"
        | "typeof__"
 ;
syntax Complex_specifier
        = 
        "_Complex" Simple_type_or_qualifier*
 ;
syntax Simple_type_or_qualifier
        = Simple_type_name
        | Type_qualifier
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
syntax Argument_expression
        = Assignment_expression
        | Type_name
 ;
syntax Alignof_expression
        = "__alignof__" "(" Unary_expression ")"
        | "__alignof" "(" Unary_expression ")"
        | "__alignof__" "(" Type_name ")"
        | "__alignof" "(" Type_name ")"
 ;
syntax Designated_initializer
        = Assignment_expression
        | Designator* Designator_assignment? Assignment_expression
        | Designator* Designator_assignment? NL "{" IN 
		Designated_initializer
		","
	       ","? EX "}"
 ;

public void main()
{
	registerLanguage("Malton_dahn", "ext", program(str input, loc org) {return parse(#program, input, org);});
	println("Language registered.");
}
