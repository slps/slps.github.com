@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Object

syntax Program
        = Program_definition
        | Package_definition
        | Library_definition
        | Unit_definition
 ;
syntax Program_definition
        = 
        "program" Decl_name Program_file_list? ";" NL Program_block "."
 ;
syntax Program_file_list
        = 
        "(" 
	    Id
	    ","
	   ")"
 ;
syntax Package_definition
        = 
        "package" Decl_name ";" NL Requires_clause? Contains_clause? "end" "."
 ;
syntax Requires_clause
        = 
        Requires_idList_semicolon*
 ;
syntax Contains_clause
        = 
        Contains_idList_semicolon*
 ;
syntax Requires_idList_semicolon
        = 
        "requires" Ref_name+ ";" NL
 ;
syntax Contains_idList_semicolon
        = 
        "contains" Ref_name+ ";" NL
 ;
syntax Library_definition
        = 
        "library" Decl_name ";" NL Program_block "."
 ;
syntax Unit_definition
        = 
        "unit" Decl_name ";" NL Interface_section NL Implementation_section NL Init_section "."
 ;
syntax Interface_section
        = 
        "interface" (NL NL) Uses_clause? NL Interface_declaration*
 ;
syntax Implementation_section
        = 
        "implementation" (IN NL) Uses_clause? Declaration_section* (EX NL)
 ;
syntax Init_section
        = "intitialization" (IN NL) Statement_list Fin_statement_list? (EX NL) "end"
        | Compound_statement
        | "end"
 ;
syntax Interface_declaration
        = Constant_section
        | Type_section
        | Var_section
        | Exported_heading Directive?
 ;
syntax Exported_heading
        = Procedure_heading ";" NL
        | Function_heading ";" NL
        | Constructor_heading ";" NL
        | Destructor_heading ";" NL
 ;
syntax Program_block
        = 
        Uses_clause? Block
 ;
syntax Uses_clause
        = 
        "uses" (IN NL) Uses_item+ ";" (EX NL)
 ;
syntax Uses_item
        = 
        Ref_name In_clause?
 ;
syntax In_clause
        = 
        "in" Charlit
 ;
syntax Block
        = 
        Declaration_section* Compound_statement
 ;
syntax Declaration_section
        = Label_declaration_section
        | Constant_section
        | Type_section
        | Var_section
        | Procedure_section
 ;
syntax Label_declaration_section
        = 
        "label" Decl_name
 ;
syntax Constant_section
        = 
        "const" (IN NL) Constant_declaration* (EX NL)
 ;
syntax Constant_declaration
        = Decl_name "=" Expression ";" NL
        | Decl_name ":" TypeId "=" Typed_constant ";" NL
 ;
syntax Type_section
        = 
        "type" (IN NL) Type_declaration+ (EX NL)
 ;
syntax Type_declaration
        = 
        Decl_name "=" Type_or_restrictedType
 ;
syntax Type_or_restrictedType
        = Type ";" NL
        | RestrictedType ";" NL
 ;
syntax Typed_constant
        = Expression
        | Array_constant
        | Record_constant
 ;
syntax Array_constant
        = 
        "(" 
	    Typed_constant
	    ","
	   ")"
 ;
syntax Record_constant
        = 
        "(" Typed_constant Semicolon_record_field_constant* ")"
 ;
syntax Semicolon_record_field_constant
        = 
        ";" Decl_name ":" Typed_constant
 ;
syntax Type
        = TypeId
        | SimpleType
        | StructType
        | PointerType
        | StringType
        | ProcedureType
        | VariantType
        | Class_referenceType
 ;
syntax RestrictedType
        = ObjectType
        | ClassType
        | InterfaceType
 ;
syntax Class_referenceType
        = 
        "class" "of" TypeId
 ;
syntax SimpleType
        = OrdinalType
        | RealType
 ;
syntax RealType
        = "real48"
        | "real"
        | "single"
        | "double"
        | "extended"
        | "currency"
        | "comp"
 ;
syntax OrdinalType
        = SubrangeType
        | EnumeratedType
        | Ordinal_identifier
 ;
syntax EnumeratedType
        = 
        "(" 
	    Decl_name
	    ","
	   ")"
 ;
syntax Ordinal_identifier
        = "shortint"
        | "smallint"
        | "integer"
        | "byte"
        | "longint"
        | "int64"
        | "word"
        | "boolean"
        | "char"
        | "widechar"
        | "longchar"
        | "pchar"
 ;
syntax VariantType
        = "variant"
        | "olevariant"
 ;
syntax SubrangeType
        = 
        Expression ".." Expression
 ;
syntax StringType
        = "string"
        | "ansistring"
        | "widestring"
        | "string" "[" Expression "]"
 ;
syntax StructType
        = ArrayType "packed"?
        | SetType "packed"?
        | FileType "packed"?
        | RecordType "packed"?
 ;
syntax ArrayType
        = 
        Array_word Square_ordinalType? "of" Type
 ;
syntax Array_word
        = "array"
        | "Array"
 ;
syntax Square_ordinalType
        = 
        "[" 
	    OrdinalType
	    ","
	   "]"
 ;
syntax RecordType
        = 
        "record" Field_list "end"
 ;
syntax Field_list
        = 
        Field_declaration+ Variant_section?
 ;
syntax Field_declaration
        = 
        Decl_name+ ":" Type ";" NL
 ;
syntax Variant_section
        = 
        "case" Id_colon? TypeId "of" Record_variant_semicolon+ ";"?
 ;
syntax Id_colon
        = 
        Decl_name ":"
 ;
syntax Record_variant_semicolon
        = 
        Record_variant ";" NL
 ;
syntax Record_variant
        = 
        Expression+ ":" "(" Field_list? ")"
 ;
syntax SetType
        = 
        "set" "of" OrdinalType
 ;
syntax FileType
        = 
        "file" "of" TypeId
 ;
syntax PointerType
        = 
        "^" TypeId
 ;
syntax ProcedureType
        = 
        Proc_or_func_heading Of_object?
 ;
syntax Proc_or_func_heading
        = Procedure_heading
        | Function_heading
 ;
syntax Of_object
        = 
        "of" "object"
 ;
syntax TypeId
        = Ref_name
        | PredefinedType
 ;
syntax PredefinedType
        = "integer"
        | "real"
        | "boolean"
        | "char"
        | "byte"
 ;
syntax ObjectType
        = 
        "object" Object_heritage? Object_field_list? Method_list? "end"
 ;
syntax Object_heritage
        = 
        "(" Ref_name ")"
 ;
syntax Method_list
        = 
        Virtual_method_heading Semi_virtual_method_heading*
 ;
syntax Semi_virtual_method_heading
        = 
        ";" NL Virtual_method_heading
 ;
syntax Virtual_method_heading
        = 
        Method_heading Semi_directive? Semicolon_virtual?
 ;
syntax Semicolon_virtual
        = 
        ";" "virtual"
 ;
syntax Method_heading
        = Procedure_heading
        | Function_heading
        | Destructor_heading
        | Constructor_heading
 ;
syntax Semi_directive
        = 
        ";" Directive
 ;
syntax Constructor_heading
        = 
        "constructor" Decl_name Formal_parameters?
 ;
syntax Destructor_heading
        = 
        "destructor" Decl_name Formal_parameters?
 ;
syntax Object_field_list
        = 
        Ident_list_colonType Semi_ident_list_colonType*
 ;
syntax Semi_ident_list_colonType
        = 
        ";" NL Ident_list_colonType
 ;
syntax Ident_list_colonType
        = 
        Decl_name+ ":" Type
 ;
syntax Fin_statement_list
        = 
        "finalization" Statement_list
 ;
syntax ClassType
        = 
        "class" Class_heritage? (IN NL) Class_element_list? Vis_spec_element_list* (EX NL) "end"?
 ;
syntax Class_heritage
        = 
        "(" 
	    Ref_name
	    ","
	   ")"
 ;
syntax Class_visibility
        = "public"
        | "protected"
        | "Protected"
        | "private"
        | "published"
 ;
syntax Vis_spec_element_list
        = 
        NL Class_visibility Class_element_list?
 ;
syntax Class_element_list
        = 
        Class_element_semi+
 ;
syntax Class_element_semi
        = 
        NL Class_element ";"
 ;
syntax Class_element
        = Virtual_method_heading
        | Ident_list_colonType
        | Property_list
        | ()
 ;
syntax Class_method_list
        = 
        Class_visibility_method_list*
 ;
syntax Class_visibility_method_list
        = 
        Class_visibility Method_list
 ;
syntax Class_property_list
        = 
        Class_visibility_property_list*
 ;
syntax Class_visibility_property_list
        = 
        Class_visibility Property_list
 ;
syntax Property_list
        = 
        Property_word Decl_name Property_interface? Property_specifiers*
 ;
syntax Property_word
        = "property"
        | "Property"
 ;
syntax Property_interface
        = 
        Property_parameter_list? ":" Type
 ;
syntax Property_parameter_list
        = 
        "[" IdList_colonTypeId_semicolon* "]"
 ;
syntax IdList_colonTypeId_semicolon
        = 
        Decl_name+ ":" TypeId ";" NL
 ;
syntax Property_specifiers
        = Index_expession
        | Read_id
        | Write_id
        | Stored_id_OR_stored_expression
        | Default_expression_OR_nodefault
        | ImplementsTypeId
 ;
syntax Index_expession
        = 
        "index" Expression
 ;
syntax Read_id
        = 
        "read" Ref_name
 ;
syntax Write_id
        = 
        "write" Ref_name
 ;
syntax Stored_id_OR_stored_expression
        = 
        "stored" Id_or_expression
 ;
syntax Default_expression_OR_nodefault
        = "default" Expression
        | "nodefault"
 ;
syntax ImplementsTypeId
        = 
        "implements" TypeId
 ;
syntax InterfaceType
        = 
        "interface" Interface_heritage? Class_method_list? Class_property_list? "end"
 ;
syntax Interface_heritage
        = 
        "(" 
	    Ref_name
	    ","
	   ")"
 ;
syntax Var_section
        = 
        Var (NL IN) Var_declaration_semicolon* (NL EX)
 ;
syntax Var
        = "var"
        | "Var"
 ;
syntax Var_declaration_semicolon
        = 
        Var_declaration ";" NL
 ;
syntax Var_declaration
        = 
        Decl_name+ ":" Type Var_assignment?
 ;
syntax Var_assignment
        = Absolute_assignment
        | Constant_assignment
 ;
syntax Absolute_assignment
        = 
        "absolute" Id_or_expression
 ;
syntax Id_or_expression
        = Ref_name
        | Expression
 ;
syntax Constant_assignment
        = 
        "=" Expression
 ;
syntax Procedure_section
        = Procedure_declaration
        | Function_declaration
        | Constructor_declaration
        | Destructor_declaration
 ;
syntax Constructor_declaration
        = 
        Constructor_heading ";" (IN NL) Block (EX NL) ";" NL
 ;
syntax Destructor_declaration
        = 
        Destructor_heading ";" (IN NL) Block (EX NL) ";" NL
 ;
syntax Procedure_declaration
        = 
        Procedure_heading ";" (IN NL) Block (EX NL) ";" NL
 ;
syntax Function_declaration
        = 
        Function_heading Semi_directive? ";" (IN NL) Block (EX NL) ";" NL
 ;
syntax Function_heading
        = 
        Function_word Decl_name Formal_parameters? ":" Type_or_string
 ;
syntax Type_or_string
        = Type
        | Charlit
 ;
syntax Function_word
        = "function"
        | "Function"
 ;
syntax Procedure_heading
        = 
        Procedure Decl_name Formal_parameters?
 ;
syntax Procedure
        = "procedure"
        | "Procedure"
 ;
syntax Formal_parameters
        = 
        "(" Formal_parameter Semi_formal_parameter* ")"
 ;
syntax Semi_formal_parameter
        = 
        ";" NL Formal_parameter
 ;
syntax Formal_parameter
        = 
        Parm_qual? Parameter
 ;
syntax Parm_qual
        = Var
        | "const"
        | "out"
 ;
syntax Parameter
        = 
        
	    Decl_name
	    ","
	   Parameter_type?
 ;
syntax Parameter_type
        = 
        ":" Array_of? Type Param_init?
 ;
syntax Param_init
        = 
        "=" Expression
 ;
syntax Array_of
        = 
        Array_word Set_constructor? "of"
 ;
syntax Statement_list
        = 
        Statement Semi_statement*
 ;
syntax Semi_statement
        = 
        ";" NL Statement
 ;
syntax Statement
        = LabelId_colon? Unlabeled_statement
        | ()
 ;
syntax LabelId_colon
        = 
        LabelId ":"
 ;
syntax Unlabeled_statement
        = Simple_statement
        | Struct_statement
 ;
syntax Simple_statement
        = Ref_name Assign_expression?
        | "inherited" Ref_name?
        | "goto" LabelId
 ;
syntax Assign_expression
        = 
        ":=" Expression
 ;
syntax LabelId
        = 
        "label" Number+ ";" NL
 ;
syntax Struct_statement
        = Compound_statement
        | Conditional_statement
        | Loop_statement
        | With_statement
        | Try_finally_statement
        | Try_except_statement
        | Raise_statement
 ;
syntax Compound_statement
        = 
        Begin (IN NL) Statement_list (EX NL) "end" NL
 ;
syntax Begin
        = "begin"
        | "Begin"
 ;
syntax Conditional_statement
        = If_statement
        | Case_statement
 ;
syntax If_statement
        = 
        If Expression "then" Statement? Else_statement?
 ;
syntax Else_statement
        = 
        "else" Statement?
 ;
syntax If
        = "if"
        | "If"
 ;
syntax Case_statement
        = 
        "case" Expression "of" Case_selector (IN NL) Semi_case_selector* ";"? (EX NL) Else_statement? ";"? NL "end"
 ;
syntax Semi_case_selector
        = 
        ";" NL Case_selector
 ;
syntax Case_selector
        = 
        Case_label Comma_case_label* ":" Statement
 ;
syntax Comma_case_label
        = 
        "," Case_label
 ;
syntax Case_label
        = 
        Expression DotDot_expression?
 ;
syntax Loop_statement
        = Repeating_statement
        | While_statement
        | For_statement
 ;
syntax Repeating_statement
        = 
        "repeat" Statement ";"? "until" Expression
 ;
syntax While_statement
        = 
        "while" Expression Do Statement
 ;
syntax For_statement
        = 
        For Ref_name ":=" Expression To_or_downto Expression Do Statement
 ;
syntax To_or_downto
        = "to"
        | "downto"
 ;
syntax For
        = "for"
        | "For"
 ;
syntax Do
        = "do"
        | "Do"
        | "DO"
 ;
syntax With_statement
        = 
        "with" Ref_name+ Do Statement
 ;
syntax Try_finally_statement
        = 
        "try" (IN NL) Statement_list (EX NL) "finally" (IN NL) Statement_list (EX NL) "end"
 ;
syntax Try_except_statement
        = 
        "try" (IN NL) Statement_list (EX NL) Except ";"? (IN NL) Exception_block (EX NL) "end"
 ;
syntax Except
        = "except"
        | "Except"
 ;
syntax Exception_block
        = ()
        | Statement_list
        | Exception_else
 ;
syntax Exception_else
        = 
        Exception_handler_list (NL EX) Else_statement?
 ;
syntax Exception_handler_list
        = 
        Exception_handler Semi_exception_handler* ";"?
 ;
syntax Semi_exception_handler
        = 
        ";" Exception_handler
 ;
syntax Exception_handler
        = 
        "on" Exception_var? Type Do (IN NL) Statement EX
 ;
syntax Exception_var
        = 
        Decl_name ":"
 ;
syntax Raise_statement
        = 
        "raise" Ref_name? At_address?
 ;
syntax At_address
        = 
        "at" Ref_name
 ;
syntax Expression
        = Factor Op_factor*
        | Op_factor+
 ;
syntax Op_factor
        = 
        Op Factor
 ;
syntax Op
        = "\>"
        | "\<"
        | "\<="
        | "\>="
        | "\<\>"
        | "="
        | "in"
        | "is"
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
        | "DIV"
        | "AND"
 ;
syntax Rel_op_simple_expression
        = 
        Rel_op Simple_expression
 ;
syntax Simple_expression
        = 
        Term? Add_op_term*
 ;
syntax Add_op_term
        = 
        Add_op Term
 ;
syntax Term
        = 
        Factor Mul_op_factor*
 ;
syntax Mul_op_factor
        = 
        Mul_op Factor
 ;
syntax Factor
        = Ref_name
        | Charlit
        | Pond_number+
        | "@" "@"? Ref_name
        | "nil"
        | "(" Expression ")"
        | Not_word Factor
        | Set_constructor
        | PredefinedType "(" Expression ")"
        | Bool_value
        | "-"? Number
 ;
syntax Pond_number
        = 
        "#" Number
 ;
syntax Not_word
        = "not"
        | "Not"
        | "NOT"
 ;
syntax Bool_value
        = "true"
        | "false"
        | "True"
        | "False"
 ;
syntax Arguments
        = 
        "(" 
	    Expression
	    ","
	   ")"
 ;
syntax Rel_op
        = "\>"
        | "\<"
        | "\<="
        | "\>="
        | "\<\>"
        | "="
        | "in"
        | "is"
 ;
syntax Add_op
        = "+"
        | "-"
        | "or"
        | "xor"
 ;
syntax Mul_op
        = "*"
        | "/"
        | "div"
        | "mod"
        | "and"
        | "shl"
        | "shr"
        | "DIV"
        | "AND"
 ;
syntax Set_constructor
        = 
        "[" 
	    Set_element
	    ","
	   "]"
 ;
syntax Set_element
        = 
        Expression DotDot_expression?
 ;
syntax DotDot_expression
        = 
        ".." Expression
 ;
syntax StartNameTag
        = 
        SPOFF SP "\<" "UID" SP "name" "=" Stringlit "\>" SPON
 ;
syntax EndNameTag
        = 
        SPOFF SP "\</" "UID" "\>" SPON
 ;
syntax Decl_name
        = 
        Id Dot_id*
 ;
syntax Ref_name
        = 
        Object
 ;
syntax Object
        = Id Object_modifier*
        | "(" Ref_name ")" Object_modifier*
 ;
syntax Object_modifier
        = "." Id
        | Array_subscript
        | Arguments
        | "^"
        | As_type
 ;
syntax Dot_id
        = 
        "." Id
 ;
syntax Array_subscript
        = 
        "[" 
	    Expression
	    ","
	   "]"
 ;
syntax As_type
        = 
        As Type
 ;
syntax As
        = "As"
        | "as"
 ;
syntax Directive
        = "cdecl"
        | "register"
        | "dynamic"
        | "virtual"
        | "export"
        | "external"
        | "far"
        | "forward"
        | "message" Ref_name?
        | "override"
        | "overload"
        | "pascal"
        | "reintroduce"
        | "safecall"
        | "stdcall"
        | "Override"
 ;
