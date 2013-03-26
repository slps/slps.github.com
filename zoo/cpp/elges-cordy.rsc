@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Elges_cordy

syntax Program
        = 
        Declaration_list
 ;
syntax Declaration_list
        = 
        Declaration*
 ;
syntax Declaration
        = Asm_declaration
        | Class_definition
        | Function_definition
        | Namespace_definition
        | Template_declaration
        | Linkage_specification
        | Exception_specification
        | Using_declaration
        | Decl_specifiers? Declarator_list ";" NL
        | Decl_specifiers ";" NL
        | ";" NL
        | Preprocessor NL
 ;
syntax Asm_declaration
        = 
        "asm" "(" String_constant ")" ";" NL
 ;
syntax Class_definition
        = 
        NL Storage_class_specifier* Class_specifier Declarator_list? ";" (NL NL)
 ;
syntax Storage_class_specifier
        = "auto"
        | "register"
        | "static"
        | "extern"
 ;
syntax Class_specifier
        = 
        Class_head "{" (NL IN) Member* EX "}"
 ;
syntax Class_head
        = Class_key Id? Base_spec?
        | Class_key Nested_name_spec Id Base_spec?
        | Class_key Class_name Base_spec?
 ;
syntax Class_key
        = "class"
        | "struct"
        | "union"
 ;
syntax Base_spec
        = 
        ":" Base_list
 ;
syntax Base_list
        = 
        Base_specifier ","? 
	    Base_specifier
	    ","
	  
 ;
syntax Base_specifier
        = "::"? Nested_name_spec? Class_name
        | "virtual" Access_specifier? "::"? Nested_name_spec? Class_name
        | Access_specifier "virtual"? "::"? Nested_name_spec? Class_name
 ;
syntax Access_specifier
        = "private"
        | "protected"
        | "public"
 ;
syntax Member
        = 
        Access_specifier_colon? Member_declaration
 ;
syntax Access_specifier_colon
        = 
        EX_2 NL Access_specifier SPOFF ":" SPON IN_2 NL
 ;
syntax Member_declaration
        = Function_definition ";"?
        | Qualified_name ";" NL
        | Using_declaration
        | Decl_specifiers? Member_declarator_list ";" NL
        | Decl_specifiers ";" NL
        | ";" NL
        | Preprocessor NL
 ;
syntax Member_declarator_list
        = 
        Member_declarator+
 ;
syntax Member_declarator
        = Declarator Initializer?
        | Id? SPOFF ":" SPON Constant_expression
 ;
syntax Function_definition
        = 
        NL Decl_specifiers? Function_declarator Ctor_initializer? Exception_specification? Function_body
 ;
syntax Function_declarator
        = 
        Pointer_operator* Declared_item Declarator_extension+
 ;
syntax Function_body
        = NL Compound_statement ";"? NL
        | "try" Ctor_initializer? NL Compound_statement ";"? NL Handler_list
 ;
syntax Ctor_initializer
        = 
        SPOFF ":" SPON Mem_initializer_list
 ;
syntax Mem_initializer_list
        = 
        Mem_initializer+
 ;
syntax Mem_initializer
        = 
        "::"? Nested_name_spec? Class_name "(" Expression_list? ")"
 ;
syntax Namespace_definition
        = "namespace" Id? "{" (NL IN) Declaration_list? EX "}" (NL NL)
        | "namespace" Id "=" Qualified_namespace_spec
 ;
syntax Qualified_namespace_spec
        = 
        "::"? Nested_name_spec? Class_or_namespace_name
 ;
syntax Nested_name_spec
        = 
        Class_or_namespace_name "::" Nested_name_spec?
 ;
syntax Class_or_namespace_name
        = Class_name
        | Namespace_name
 ;
syntax Namespace_name
        = 
        Id
 ;
syntax Template_declaration
        = 
        "template" "\<" Template_parameter_list "\>" Declaration
 ;
syntax Template_parameter_list
        = Template_parameter
        | Template_parameter_list "," Template_parameter
 ;
syntax Template_parameter
        = Type_parameter
        | Parameter_declaration
 ;
syntax Type_parameter
        = 
        "class" Id
 ;
syntax Linkage_specification
        = NL "extern" Stringlit "{" (NL IN) Declaration_list EX "}" ";"? (NL NL)
        | "extern" Stringlit Declaration
 ;
syntax Exception_specification
        = 
        "throw" "(" Type_list? ")"
 ;
syntax Type_list
        = Type_name
        | Type_list "," Type_name
 ;
syntax Using_declaration
        = "using" "::"? Nested_name_spec? Name ";"
        | "using" "namespace" "::"? Nested_name_spec? Id ";"
 ;
syntax Declarator_list
        = 
        Init_declarator+
 ;
syntax Init_declarator
        = 
        Declarator Initializer?
 ;
syntax Declarator
        = 
        Pointer_operator* Declared_item Declarator_extension*
 ;
syntax Declared_item
        = Declared_name
        | "(" Declarator ")"
 ;
syntax Declarator_extension
        = Parenthesized_parameter_declaration_list Const_volatile_qualifier_list?
        | "[" Constant_expression? "]"
 ;
syntax Parenthesized_parameter_declaration_list
        = "(" Parameter_declaration_list ")"
        | "(" Parenthesized_parameter_declaration_list ")"
 ;
syntax Pointer_operator
        = Stars Const_volatile_qualifier_list?
        | "&" Const_volatile_qualifier_list?
        | Id "::" Stars Const_volatile_qualifier_list?
        | "::"? Nested_name_spec "*" Const_volatile_qualifier_list
 ;
syntax Stars
        = "*"
        | "**"
 ;
syntax Const_volatile_qualifier_list
        = 
        Const_volatile_qualifier+
 ;
syntax Const_volatile_qualifier
        = "const"
        | "volatile"
 ;
syntax Declared_name
        = Nested_name_spec? Name
        | "~" SPOFF Id SPON
 ;
syntax Type_name
        = 
        Type_specifiers Abstract_declarator?
 ;
syntax Abstract_declarator
        = Abstract_extension+
        | "(" Abstract_declarator ")" Abstract_extension*
 ;
syntax Abstract_extension
        = "(" Parameter_declaration_list ")" Const_volatile_qualifier_list?
        | "[" Constant_expression? "]"
        | Pointer_operator
        | "(" Abstract_declarator ")"
 ;
syntax Parameter_declaration_list
        = 
        
	    Parameter_declaration
	    ","
	   Comma_dotdotdot?
 ;
syntax Comma_dotdotdot
        = 
        ","? "..."
 ;
syntax Parameter_declaration
        = 
        Decl_specifiers Parameter_declarator Equal_expression?
 ;
syntax Parameter_declarator
        = Declarator
        | Abstract_declarator?
 ;
syntax Equal_expression
        = 
        "=" Expression
 ;
syntax Initializer
        = "=" Initial_value
        | "(" Expression_list? ")"
 ;
syntax Initial_value
        = Assignment_expression
        | "{" IN Initializer_list ","? EX "}"
 ;
syntax Initializer_list
        = 
        Initializer_element+
 ;
syntax Initializer_element
        = Assignment_expression
        | NL "{" IN Initializer_list ","? EX "}"
 ;
syntax Decl_specifier
        = Storage_class_specifier
        | Type_specifier
        | Function_specifier
        | "friend"
        | "typedef"
 ;
syntax Decl_specifiers
        = 
        Decl_specifier+
 ;
syntax Function_specifier
        = "inline"
        | "virtual"
 ;
syntax Type_specifier
        = Simple_type_name
        | Class_specifier
        | Enum_specifier
        | Elaborated_type_specifier
        | Const_volatile_qualifier
 ;
syntax Type_specifiers
        = 
        Type_specifier+
 ;
syntax Simple_type_name
        = "char"
        | "bool"
        | "short"
        | "int"
        | "long"
        | "signed"
        | "unsigned"
        | "float"
        | "double"
        | "void"
        | "::"? Nested_name_spec? Id
        | "::"? Nested_name_spec? Template_class_name
 ;
syntax Template_class_name
        = 
        Id Template_arguments
 ;
syntax Template_arguments
        = 
        "\<" Template_argument_list "\>"
 ;
syntax Template_argument_list
        = Template_argument
        | Template_argument_list "," Template_argument
 ;
syntax Template_argument
        = Type_name
        | Non_gt_binary_expression
 ;
syntax Non_gt_binary_expression
        = 
        Cast_expression Non_gt_binary_operation*
 ;
syntax Non_gt_binary_operation
        = 
        Non_gt_binary_operator Cast_expression
 ;
syntax Non_gt_binary_operator
        = "||"
        | "&&"
        | "|"
        | "^"
        | "&"
        | "=="
        | "!="
        | "\<"
        | "\<="
        | "\>="
        | "\<\<"
        | "\>\>"
        | "+"
        | "-"
        | "*"
        | "/"
        | "%"
        | ".*"
        | "-\>*"
 ;
syntax Elaborated_type_specifier
        = Class_key "::"? Nested_name_spec? Class_name
        | "enum" "::"? Nested_name_spec? Id
 ;
syntax Enum_specifier
        = 
        "enum" Id? "{" Enum_list? "}"
 ;
syntax Enum_list
        = 
        Enumerator+ ","?
 ;
syntax Enumerator
        = 
        Id Equal_constant_expression?
 ;
syntax Equal_constant_expression
        = 
        "=" Constant_expression
 ;
syntax Constant_expression
        = 
        Conditional_expression
 ;
syntax Conversion_function_name
        = 
        "operator" Conversion_type_name
 ;
syntax Conversion_type_name
        = 
        Type_specifiers Pointer_operator?
 ;
syntax Operator_function_name
        = 
        "operator" Operator
 ;
syntax Operator
        = "new"
        | "delete"
        | "+"
        | "-"
        | "*"
        | "/"
        | "%"
        | "^"
        | "&"
        | "|"
        | "~"
        | "!"
        | "="
        | "\<"
        | "\>"
        | "+="
        | "-="
        | "-+"
        | "*="
        | "/="
        | "%="
        | "^="
        | "&="
        | "|="
        | "\<\<"
        | "\>\>"
        | "\>\>="
        | "\<\<="
        | "=="
        | "!="
        | "\<="
        | "\>="
        | "&&"
        | "||"
        | "++"
        | "--"
        | ","
        | "-\>*"
        | "-\>"
        | "(" Type_specifier? ")"
        | "[" "]"
 ;
syntax Statement
        = 
        Label* Unlabeled_statement
 ;
syntax Unlabeled_statement
        = Null_statement
        | Expression_statement
        | Compound_statement
        | Selection_statement
        | Iteration_statement
        | Jump_statement
        | Declaration_statement
        | Try_block
 ;
syntax Try_block
        = 
        "try" Compound_statement Handler_list
 ;
syntax Handler_list
        = 
        Handler Handler_list?
 ;
syntax Handler
        = 
        "catch" "(" Exception_declaration ")" Compound_statement
 ;
syntax Exception_declaration
        = Type_specifiers Exception_declarator?
        | "..."
 ;
syntax Exception_declarator
        = Declarator
        | Abstract_declarator
 ;
syntax Label
        = Id SPOFF ":" SPON
        | EX "case" Constant_expression SPOFF ":" SPON (NL IN)
        | EX "default" SPOFF ":" SPON (NL IN)
 ;
syntax Expression_statement
        = 
        Expression ";" NL
 ;
syntax Null_statement
        = 
        ";" NL
 ;
syntax Compound_statement
        = 
        "{" (NL IN) Statement_list? EX "}" NL
 ;
syntax Statement_list
        = 
        Statement+
 ;
syntax Selection_statement
        = "if" "(" Expression ")" Statement Else_statement?
        | "switch" "(" Expression ")" Statement
 ;
syntax Else_statement
        = 
        "else" Statement
 ;
syntax Iteration_statement
        = "while" "(" Expression ")" Statement
        | "do" Statement "while" "(" Expression ")" ";" NL
        | "for" "(" For_init_statement Expression? ";" Expression? ")" For_body
 ;
syntax For_init_statement
        = Expression ";"
        | Decl_specifiers? Declarator_list ";"
        | Decl_specifiers ";"
        | ";"
 ;
syntax For_body
        = Compound_statement
        | (IN NL) Statement EX
 ;
syntax Jump_statement
        = "break" ";" NL
        | "continue" ";" NL
        | "return" Expression? ";" NL
        | "goto" Id ";" NL
 ;
syntax Declaration_statement
        = 
        Declaration
 ;
syntax Preprocessor
        = "#define" Id "(" Id+ ")" Expression
        | "#define" Id Expression
        | EX "#else" IN
        | EX "#endif" NL
        | NL "#if" Expression IN
        | NL "#ifdef" Id IN
        | NL "#ifndef" Id IN
        | "#ident" Stringlit
        | "#include" Stringlit
        | "#include" "\<" SPOFF Filename "\>" SPON
        | "#line" Integernumber Stringlit?
        | "#undef" Id
        | "#LINK" Stringlit
 ;
syntax File_identifier
        = Id
        | Key
 ;
syntax Filename
        = 
        File_identifier Dot_slash_identifier*
 ;
syntax Dot_slash_identifier
        = 
        "."? "/"? File_identifier
 ;
syntax Expression
        = Assignment_expression
        | Expression "," Assignment_expression
 ;
syntax Assignment_expression
        = Conditional_expression
        | Unary_expression Assignment_operator Assignment_expression
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
        = 
        Cast_expression Binary_operation*
 ;
syntax Binary_operation
        = 
        Binary_operator Cast_expression
 ;
syntax Binary_operator
        = "||"
        | "&&"
        | "|"
        | "^"
        | "&"
        | "=="
        | "!="
        | "\<"
        | "\>"
        | "\<="
        | "\>="
        | "\<\<"
        | "\>\>"
        | "+"
        | "-"
        | "*"
        | "/"
        | "%"
        | ".*"
        | "-\>*"
 ;
syntax Cast_expression
        = Unary_expression
        | "(" Type_name ")" Cast_expression
 ;
syntax Unary_expression
        = Postfix_expression
        | "++" Unary_expression
        | "--" Unary_expression
        | Unary_operator Cast_expression
        | "sizeof" Unary_expression
        | "sizeof" "(" Type_name ")"
        | Allocation_expression
        | Deallocation_expression
        | Throw_expression
 ;
syntax Throw_expression
        = 
        "throw" Assignment_expression?
 ;
syntax Unary_operator
        = "**"
        | "*"
        | "&"
        | "+"
        | "-"
        | "!"
        | "~"
 ;
syntax Allocation_expression
        = 
        "::"? "new" Placement? Allocation_type_name Initializer?
 ;
syntax Placement
        = 
        "(" Expression_list ")"
 ;
syntax Allocation_type_name
        = Type_specifiers Allocation_declarator?
        | "(" Type_name ")" Allocation_declarator?
 ;
syntax Allocation_declarator
        = Allocation_array_declarator
        | "*" Const_volatile_qualifier_list? Allocation_declarator?
        | "::"? Nested_name_spec "*" Const_volatile_qualifier_list? Allocation_declarator?
        | Qualified_name "::" "*" Const_volatile_qualifier_list? Allocation_declarator?
 ;
syntax Allocation_array_declarator
        = "[" Expression? "]"
        | Allocation_array_declarator "[" Expression? "]"
 ;
syntax Deallocation_expression
        = "::"? "delete" Cast_expression
        | "::"? "delete" "[" Expression? "]" Cast_expression
 ;
syntax Postfix_expression
        = Primary_expression Postfix_extension*
        | Simple_type_name "(" Expression_list? ")" Postfix_extension*
 ;
syntax Postfix_extension
        = "[" Expression? "]"
        | "(" Expression_list? ")"
        | "." Name
        | "-\>" Name
        | "++"
        | "--"
 ;
syntax Expression_list
        = 
        Assignment_expression+
 ;
syntax Primary_expression
        = Literal
        | "this"
        | "::" Id
        | "::" Operator_function_name
        | "(" Expression ")"
        | Name
 ;
syntax Name
        = Id
        | Template_class_name
        | Qualified_name
        | Operator_function_name
        | Conversion_function_name
 ;
syntax Class_name
        = 
        Id Template_arguments?
 ;
syntax Qualified_name
        = 
        Class_name "::" Class_component
 ;
syntax Class_component
        = Class_name
        | "~" SPOFF Class_name SPON
        | Operator_function_name
        | Conversion_function_name
        | Qualified_name
 ;
syntax Literal
        = Number_constant
        | Character_constant
        | String_constant
 ;
syntax String_constant
        = 
        Stringlit IN NL_stringlit* EX
 ;
syntax NL_stringlit
        = 
        NL Stringlit
 ;
syntax Character_constant
        = 
        Charlit
 ;
syntax Number_constant
        = "-"? Number
        | Hexnumber
 ;
