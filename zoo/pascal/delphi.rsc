@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Delphi

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Label_id
        = Anynumber
        | Id
 ;
syntax Builtinid
        = "string"
        | "file"
        | "set"
 ;
syntax Name
        = Builtinid
        | Id
 ;
syntax Namespace
        = 
        Id "."
 ;
syntax Qualified_id
        = 
        Namespace* Name SPON
 ;
syntax Filenamelit
        = Charlit
        | Stringlit
        | Qualified_id
 ;
syntax Colon
        = 
        SPOFF ":" SPON
 ;
syntax Equal
        = 
        "="
 ;
syntax End_struct
        = 
        "end"
 ;
syntax Semi_calling_spec
        = 
        ";"? Calling_spec
 ;
syntax Calling_spec
        = "pascal"
        | "safecall"
        | "stdcall"
        | "cdecl"
        | "register"
        | "local"
 ;
syntax Hint_directive
        = "platform"
        | "deprecated"
        | "library"
 ;
syntax Ctrlchar
        = "^'A"
        | "^'B"
        | "^'C"
        | "^'D"
        | "^'E"
        | "^'F"
        | "^'G"
        | "^'H"
        | "^'I"
        | "^'J"
        | "^'K"
        | "^'L"
        | "^'M"
        | "^'N"
        | "^'O"
        | "^'P"
        | "^'Q"
        | "^'R"
        | "^'S"
        | "^'T"
        | "^'U"
        | "^'V"
        | "^'W"
        | "^'X"
        | "^'Y"
        | "^'Z"
 ;
syntax Delphi_file
        = Program_file
        | Package_file
        | Unit_file
 ;
syntax File_end
        = 
        "."
 ;
syntax Program_file
        = 
        Program_decl Uses_clause? Impldecl_block Procedure_body File_end
 ;
syntax Package_file
        = 
        Package_decl Requires_clause? Contains_clause? End_struct File_end
 ;
syntax Unit_file
        = 
        Unit_decl Interface_section Implementation_section Initialization_section? Finalization_section? End_struct File_end
 ;
syntax Program_decl
        = "program" Qualified_id Program_file_list? ";" NL
        | "library" Qualified_id ";" NL
 ;
syntax Package_decl
        = 
        "package" Qualified_id ";" NL
 ;
syntax Unit_decl
        = 
        "unit" Qualified_id Hint_directive? ";" NL
 ;
syntax Program_file_list
        = 
        "(" 
	    Id
	    ","
	   ")"
 ;
syntax Requires_clause
        = 
        "requires" 
	    Qualified_id
	    ","
	   ";" NL
 ;
syntax Contains_clause
        = 
        "contains" 
	    Uses_item
	    ","
	   ";" NL
 ;
syntax Uses_clause
        = 
        "uses" (NL IN) 
	    Uses_item
	    ","
	   ";" (EX NL)
 ;
syntax Uses_item
        = 
        Qualified_id In_filename?
 ;
syntax In_filename
        = 
        "in" Filenamelit
 ;
syntax Initialization_kw
        = "initialization"
        | "begin"
 ;
syntax Implementation_kw
        = 
        "implementation" NL
 ;
syntax Finalization_kw
        = 
        "finalization"
 ;
syntax Interface_kw
        = 
        "interface" NL
 ;
syntax Interface_section
        = 
        Interface_kw Uses_clause? Intfdecl_block
 ;
syntax Implementation_section
        = 
        Implementation_kw Uses_clause? Impldecl_block
 ;
syntax Initialization_section
        = 
        Initialization_kw NL Statement_list
 ;
syntax Finalization_section
        = 
        Finalization_kw Statement_list
 ;
syntax Intfdecl_block
        = 
        Intfdecl_section*
 ;
syntax Impldecl_block
        = 
        Impldecl_section*
 ;
syntax Nested_decl_block
        = 
        Nested_decl_section*
 ;
syntax Identlist
        = 
        Id Colon_id*
 ;
syntax Colon_id
        = 
        "," NL Id
 ;
syntax Intfdecl_section
        = Const_section
        | Type_section
        | Var_section
        | Label_decl
        | Procedure_intf_decl
        | Procedure_external_decl
        | Resource_section
        | Exports_section
 ;
syntax Impldecl_section
        = Const_section
        | Type_section
        | Var_section
        | Label_decl
        | Procedure_impl_decl
        | Procedure_external_decl
        | Resource_section
        | Exports_section
 ;
syntax Nested_decl_section
        = Const_section
        | Type_section
        | Var_section
        | Label_decl
        | Procedure_impl_decl
 ;
syntax Label_decl
        = 
        "label" 
	    Label_id
	    ","
	   ";" NL
 ;
syntax Exports_section
        = 
        "exports" 
	    Exports_entry
	    ","
	   ";" NL
 ;
syntax Exports_entry
        = 
        Procedure_id Formal_parameters? External_name?
 ;
syntax Resource_section
        = 
        "resourcestring" Constant_decl+
 ;
syntax Const_section
        = 
        "const" (NL IN) Constant_decl+ EX
 ;
syntax Constant_decl
        = 
        Identlist Constant_spec Hint_directive? ";" NL
 ;
syntax Constant_spec
        = Equal Expr
        | Colon_type Const_init
 ;
syntax Const_init
        = 
        Equal Typed_const
 ;
syntax Typed_const
        = Array_constant
        | Record_constant
        | Expr
 ;
syntax Array_constant
        = 
        "(" 
	    Typed_const
	    ","
	   ")"
 ;
syntax Record_field_constant
        = 
        Id Colon Typed_const
 ;
syntax Record_constant
        = 
        "(" Record_field_constant_semi* Record_field_constant? ")"
 ;
syntax Record_field_constant_semi
        = 
        Record_field_constant ";" NL
 ;
syntax Var_section
        = 
        Var_keyword (NL IN) Var_decl+ EX
 ;
syntax Var_keyword
        = "var"
        | "threadvar"
 ;
syntax Var_decl
        = 
        Identlist Colon_type Hint_directive? Var_init? ";" NL
 ;
syntax Var_init
        = Absolute_init
        | Const_init
 ;
syntax Absolute_init
        = 
        "absolute" Expr
 ;
syntax Type_section
        = 
        "type" (NL IN) Type_decl+ EX
 ;
syntax Type_decl
        = 
        Identlist Equal "type"? Type_spec Hint_directive? ";" NL
 ;
syntax Type_spec
        = Simple_type
        | String_type
        | Struct_type
        | Pointer_type
        | Procedural_type
        | Variant_type
        | Class_reference_type
        | Class_type
        | Interface_type
        | Qualified_id
 ;
syntax Real_type
        = "real"
        | "real48"
        | "single"
        | "double"
        | "extended"
        | "comp"
        | "currency"
 ;
syntax Integer_type
        = "shortint"
        | "smallint"
        | "longint"
        | "int64"
        | "word"
        | "byte"
        | "longword"
        | "integer"
        | "cardinal"
 ;
syntax Char_type
        = "char"
        | "ansichar"
        | "widechar"
 ;
syntax Boolean_type
        = "boolean"
        | "bytebool"
        | "wordbool"
        | "longbool"
 ;
syntax Variant_type
        = "variant"
        | "olevariant"
 ;
syntax String_type
        = "string"
        | "shortstring"
        | "ansistring"
        | "widestring"
        | "string" "[" Expression "]"
 ;
syntax Enumerated_type
        = 
        "(" Enum_spec+ ")"
 ;
syntax Enum_spec
        = 
        Id Param_init?
 ;
syntax Subrange_type
        = 
        Expression SPOFF Dotdot_expr SPON
 ;
syntax Dotdot_expr
        = 
        ".." Expression
 ;
syntax Ordinal_type
        = Integer_type
        | Char_type
        | Enumerated_type
        | Boolean_type
        | Subrange_type
 ;
syntax Simple_type
        = Ordinal_type
        | Real_type
 ;
syntax Struct_type
        = Set_type
        | Array_type
        | File_type
 ;
syntax Of_basetype
        = 
        "of" Type_spec
 ;
syntax Of_object
        = 
        "of" "object"
 ;
syntax Of_const
        = 
        "of" "const"
 ;
syntax Set_type
        = 
        "set" Of_basetype
 ;
syntax File_type
        = 
        "file" Of_basetype?
 ;
syntax Pointer_type
        = 
        "^" SPOFF Qualified_id SPON
 ;
syntax Procedural_type
        = 
        Procedure_intf_decl Of_object? Semi_calling_spec*
 ;
syntax Colon_type
        = 
        Colon Type_spec
 ;
syntax Array_type
        = "array" Of_const
        | "packed"? "array" Array_index_list* Of_basetype
 ;
syntax Array_index_list
        = 
        "[" 
	    Array_index
	    ","
	   "]"
 ;
syntax Array_index
        = Ordinal_type
        | Qualified_id
 ;
syntax Procedure_id
        = 
        Namespace? Id
 ;
syntax Procedure_impl_decl
        = 
        NL Procedure_intf_decl Nested_decl_block Procedure_body_semi
 ;
syntax External_directive
        = 
        "external" Expr? External_name?
 ;
syntax External_name
        = "name" Expr
        | "index" Expr
 ;
syntax Semi_directive
        = 
        ";"? Directive
 ;
syntax Directive
        = "dynamic"
        | "virtual"
        | "abstract"
        | "message" Qualified_id?
        | "dispid" Sign? Anynumber
        | "override"
        | "overload"
        | "reintroduce"
        | "static"
        | "assembler"
        | "far"
        | "export"
        | Hint_directive
        | Calling_spec
 ;
syntax Procedure_intf_decl
        = 
        Procedure_signature Semi_directive* ";"? NL
 ;
syntax Procedure_signature
        = 
        "class"? Procedure_keyword Procedure_id? Formal_parameters? Colon_type?
 ;
syntax Procedure_external_decl
        = 
        Procedure_intf_decl External_directive Semi_calling_spec? ";"? NL
 ;
syntax Procedure_keyword
        = "function"
        | "procedure"
        | "constructor"
        | "destructor"
 ;
syntax Formal_parameters
        = 
        "(" Formal_parameter Semi_formal_parameter* ")"
 ;
syntax Semi_formal_parameter
        = 
        ";" Formal_parameter
 ;
syntax Formal_parameter
        = 
        Parm_qual? Parameter
 ;
syntax Parm_qual
        = "var"
        | "const"
        | "out"
 ;
syntax Parameter
        = 
        
	    Id
	    ","
	   Parameter_type?
 ;
syntax Parameter_type
        = 
        Colon_type Param_init?
 ;
syntax Param_init
        = 
        Equal Expr
 ;
syntax Procedure_body_semi
        = 
        Procedure_body ";" NL
 ;
syntax Procedure_body
        = Sequence_stm
        | "forward"
 ;
syntax Heritage_list
        = "(" 
		Qualified_id
		","
	       ")"
        | "helper" "for" Id
 ;
syntax Class_keyword
        = "class"
        | "record"
        | "object"
 ;
syntax Interface_keyword
        = "interface"
        | "dispinterface"
 ;
syntax Guid_decl
        = 
        "[" Expr "]"
 ;
syntax Class_reference_type
        = 
        "class" "of" Qualified_id
 ;
syntax Class_type
        = 
        "packed"? Class_keyword Heritage_list? NL Class_body?
 ;
syntax Class_body
        = 
        Visibility_default Visibility_block* End_struct
 ;
syntax Interface_body
        = 
        Visibility_default End_struct
 ;
syntax Interface_type
        = 
        Interface_keyword Heritage_list? Guid_decl? Interface_body?
 ;
syntax Visibility_default
        = 
        IN Class_member* EX
 ;
syntax Visibility_block
        = 
        Visibility (NL IN) Class_member* EX
 ;
syntax Method_decl
        = Procedure_signature Method_deleg
        | Procedure_signature ";" Dispid_spec ";"
        | Procedure_intf_decl
 ;
syntax Method_deleg
        = 
        Equal Qualified_id ";" NL
 ;
syntax Visibility
        = "public"
        | "protected"
        | "strict"? "private"
        | "published"
        | "automated"
 ;
syntax Variant_section
        = 
        "case" Id_colon? Type_spec "of" Record_variant+
 ;
syntax Id_colon
        = 
        Id Colon
 ;
syntax Record_variant
        = 
        Expr+ Colon "(" Visibility_default ")" ";"? NL
 ;
syntax Class_member
        = Var_decl
        | Method_decl
        | Property_decl
        | Variant_section
 ;
syntax Property_decl
        = 
        "property" Id Prop_indexes? Colon_type? Prop_specifier* Defaultarray_spec? ";" NL
 ;
syntax Defaultarray_spec
        = 
        ";" "default"
 ;
syntax Prop_indexes
        = 
        "[" Prop_index_decl+ "]"
 ;
syntax Prop_index_decl
        = 
        Prop_index_name+ Colon_type ";"?
 ;
syntax Prop_index_modifier
        = "const"
        | "var"
 ;
syntax Prop_index_name
        = 
        Prop_index_modifier? Qualified_id
 ;
syntax Prop_specifier
        = Index_spec
        | Accessor_spec
        | Stored_spec
        | Default_spec
        | Implements_spec
        | Dispid_spec
 ;
syntax Dispid_spec
        = 
        "dispid" SP Expr
 ;
syntax Index_spec
        = 
        "index" SP Expr
 ;
syntax Accessor_spec
        = "readonly"
        | "writeonly"
        | Accessor_verb Qualified_id
 ;
syntax Accessor_verb
        = "read"
        | "write"
 ;
syntax Stored_spec
        = 
        "stored" SP Expr
 ;
syntax Default_spec
        = "default" SP Expr
        | "nodefault"
 ;
syntax Implements_spec
        = 
        "implements" 
	    Qualified_id
	    ","
	  
 ;
syntax Expr
        = 
        SP SPOFF Expression SPON
 ;
syntax Expression
        = 
        Term Infix_expr*
 ;
syntax Term
        = 
        Prefix_opr* Atom_expr Postfix_opr*
 ;
syntax Infix_expr
        = 
        SP Infix_opr SP Term
 ;
syntax Atom_expr
        = Charlit
        | Anynumber
        | Ctrlchar
        | "nil"
        | "(" Expression ")"
        | Set_constructor
        | Qualified_id
 ;
syntax Sign
        = "+"
        | "-"
 ;
syntax Prefix_opr
        = "not" SP
        | "inherited" SP
        | "@"
        | Sign
 ;
syntax Postfix_opr
        = Arguments
        | Array_subscript
        | "." Id
        | "^"
 ;
syntax Infix_opr
        = "\>"
        | "\<"
        | "\<="
        | "\>="
        | "\<\>"
        | "="
        | "in"
        | "is"
        | "as"
        | "+"
        | "-"
        | "or"
        | "xor"
        | "*"
        | "/"
        | "div"
        | "mod"
        | "and"
        | "shl"
        | "shr"
        | "^"
 ;
syntax Set_constructor
        = 
        "[" Set_element? Semi_set_element* "]"
 ;
syntax Arguments
        = 
        "(" Argm? Semi_argm* ")"
 ;
syntax Array_subscript
        = 
        "[" Expression? Semi_expression* "]"
 ;
syntax Semi_argm
        = 
        "," SP Argm
 ;
syntax Semi_set_element
        = 
        "," SP Set_element
 ;
syntax Semi_expression
        = 
        "," SP Expression
 ;
syntax Set_element
        = 
        Expression Dotdot_expr?
 ;
syntax Argm
        = 
        Expression Argmfmt? Argmfmt?
 ;
syntax Argmfmt
        = 
        ":" Anynumber
 ;
syntax Labelid_colon
        = 
        Label_id Colon
 ;
syntax Statement_list
        = 
        IN Statement_semi* Statement? EX
 ;
syntax Statement_semi
        = 
        Statement? ";" NL
 ;
syntax Statement
        = 
        Labelid_colon? Unlabeled_stm
 ;
syntax Unlabeled_stm
        = Sequence_stm
        | Loop_stm
        | With_stm
        | Try_finally_stm
        | Try_except_stm
        | Selection_stm
        | Jump_stm
        | Assign_stm
        | Call_stm
 ;
syntax Assign_stm
        = 
        Expr ":=" Expr
 ;
syntax Call_stm
        = Expr
        | "inherited"
 ;
syntax Jump_stm
        = Goto_stm
        | Raise_stm
 ;
syntax Goto_stm
        = 
        "goto" Label_id
 ;
syntax Sequence_stm
        = 
        "begin" NL Statement_list End_struct
 ;
syntax Loop_stm
        = "repeat" Statement_list "until" Expr
        | "while" Expr "do" Nested_stm
        | "for" Id ":=" Expr To_or_downto Expr "do" Nested_stm
        | "for" Id "in" Id "do" Nested_stm
 ;
syntax Selection_stm
        = "if" Expr "then" Nested_stm Else_stm?
        | "case" Expr "of" Case_selector* Case_else? End_struct
 ;
syntax With_stm
        = 
        "with" Expr+ "do" Nested_stm
 ;
syntax Try_finally_stm
        = 
        "try" NL Statement_list "finally" NL Statement_list End_struct
 ;
syntax Try_except_stm
        = 
        "try" NL Statement_list "except" NL Exception_block End_struct
 ;
syntax Nested_stm
        = Sequence_stm
        | (NL IN) Statement? EX
 ;
syntax Else_stm
        = 
        NL "else" Nested_stm
 ;
syntax Case_selector
        = 
        
	    Case_label
	    ","
	   Colon Nested_stm ";"?
 ;
syntax Case_label
        = 
        Expr Dotdot_expr?
 ;
syntax Case_else
        = 
        "else" Statement_list
 ;
syntax To_or_downto
        = "to"
        | "downto"
 ;
syntax Exception_block
        = Exception_handler_list Case_else?
        | Statement_list
 ;
syntax Exception_handler_list
        = 
        Exception_handler_semi* Exception_handler?
 ;
syntax Exception_handler_semi
        = 
        Exception_handler ";" NL
 ;
syntax Exception_handler
        = 
        "on" Exception_var? Type_spec "do" Nested_stm
 ;
syntax Exception_var
        = 
        Id Colon
 ;
syntax Raise_stm
        = 
        "raise" Expr? At_address?
 ;
syntax At_address
        = 
        "at" Expr
 ;
syntax Anynumber
        = Hexnumber
        | Number
 ;
