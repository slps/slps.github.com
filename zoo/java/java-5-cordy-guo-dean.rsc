@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Java_5_cordy_guo_dean

syntax Program
        = 
        Package_declaration
 ;
syntax Package_declaration
        = 
        Package_header? Import_declaration* Type_declaration*
 ;
syntax Package_header
        = 
        Annotation* "package" Package_name ";" (NL NL)
 ;
syntax Package_name
        = 
        Qualified_name
 ;
syntax Import_declaration
        = "import" "static"? Imported_name ";" (NL NL)
        | ";" NL
 ;
syntax Imported_name
        = 
        Package_or_type_name Dot_star?
 ;
syntax Package_or_type_name
        = 
        Qualified_name
 ;
syntax Dot_star
        = 
        "." "*"
 ;
syntax Declared_name
        = 
        Id Generic_parameter?
 ;
syntax Type_declaration
        = Class_declaration (NL NL)
        | Interface_declaration (NL NL)
        | Enum_declaration NL
 ;
syntax Class_declaration
        = 
        Class_header Class_body
 ;
syntax Class_header
        = 
        Modifier* "class" Class_name Extends_clause? Implements_clause?
 ;
syntax Class_body
        = 
        Class_or_interface_body
 ;
syntax Interface_declaration
        = 
        Interface_header Interface_body
 ;
syntax Interface_header
        = 
        Modifier* Annot_marker? "interface" Interface_name Extends_clause? Implements_clause?
 ;
syntax Annot_marker
        = 
        "@"
 ;
syntax Interface_body
        = 
        Class_or_interface_body
 ;
syntax Enum_declaration
        = 
        Enum_header Enum_body
 ;
syntax Enum_header
        = 
        Modifier* Id? "enum" Declared_name? Implements_clause?
 ;
syntax Enum_body
        = 
        "{" IN 
	    Enum_element
	    ","
	   ","? Class_body_declaration* EX "}" ";"? (NL NL)
 ;
syntax Enum_element
        = 
        NL Id Method_argument?
 ;
syntax Modifier
        = "abstract"
        | "final"
        | "public"
        | "protected"
        | "private"
        | "static"
        | "transient"
        | "volatile"
        | "native"
        | "synchronized"
        | "strictfp"
        | Annotation
 ;
syntax Extends_clause
        = 
        "extends" Type_name+
 ;
syntax Implements_clause
        = 
        "implements" Qualified_name+
 ;
syntax Class_name
        = 
        Declared_name
 ;
syntax Interface_name
        = 
        Declared_name
 ;
syntax Class_or_interface_body
        = 
        "{" (NL IN) Class_body_declaration* EX "}" ";"? (NL NL)
 ;
syntax Class_body_declaration
        = Empty_declaration
        | Member_declaration
        | Instance_initializer
        | Static_initializer
        | Field_declaration
 ;
syntax Empty_declaration
        = 
        ";" NL
 ;
syntax Member_declaration
        = Method_or_constructor_declaration
        | Type_declaration
 ;
syntax Method_or_constructor_declaration
        = Method_declaration
        | Constructor_declaration
 ;
syntax Instance_initializer
        = 
        NL Block (NL NL)
 ;
syntax Static_initializer
        = 
        NL "static" Block (NL NL)
 ;
syntax Constructor_declaration
        = 
        NL Modifier* Generic_parameter? Constructor_declarator Throws? Constructor_body (NL NL)
 ;
syntax Constructor_declarator
        = 
        Class_name "(" 
	    Formal_parameter
	    ","
	   ")"
 ;
syntax Constructor_body
        = 
        Block NL
 ;
syntax Field_declaration
        = 
        Variable_declaration
 ;
syntax Variable_declaration
        = 
        Modifier* Type_specifier Variable_declarators ";" NL
 ;
syntax Variable_declarators
        = 
        Variable_declarator+
 ;
syntax Variable_declarator
        = 
        Variable_name Equals_variable_initializer?
 ;
syntax Variable_name
        = 
        Declared_name Dimension*
 ;
syntax Equals_variable_initializer
        = 
        "=" Variable_initializer
 ;
syntax Variable_initializer
        = Expression
        | Array_initializer
 ;
syntax Array_initializer
        = 
        "{" 
	    Variable_initializer
	    ","
	   ","? "}"
 ;
syntax Method_declaration
        = 
        NL Modifier* Generic_parameter? Type_specifier Method_declarator Throws? Method_body
 ;
syntax Method_declarator
        = 
        Method_name "(" 
	    Formal_parameter
	    ","
	   ")" Dimension*
 ;
syntax Method_name
        = 
        Declared_name
 ;
syntax Formal_parameter
        = 
        Annotation* "final"? Type_specifier Var_arg_specifier? Formal_parameter_name
 ;
syntax Var_arg_specifier
        = 
        "..."
 ;
syntax Formal_parameter_name
        = 
        Variable_name
 ;
syntax Throws
        = 
        "throws" Qualified_name+
 ;
syntax Method_body
        = Block (NL NL)
        | Annotation_default? ";" (NL NL)
 ;
syntax Annotation_default
        = "default" Expression
        | "default" Array_initializer
 ;
syntax Type_specifier
        = Type_name
        | Array_type_specifier
 ;
syntax Array_type_specifier
        = 
        Type_name Dimension+
 ;
syntax Type_name
        = Primitive_type
        | Qualified_name
 ;
syntax Primitive_type
        = "boolean"
        | "char"
        | "byte"
        | "short"
        | "int"
        | "long"
        | "float"
        | "double"
        | "void"
 ;
syntax Annotation
        = 
        SPOFF "@" Reference "@"? SPON Annotation_value_spec? NL
 ;
syntax Annotation_value_spec
        = 
        "(" Annotation_value_list ")"
 ;
syntax Annotation_value_list
        = Single_annotation_value
        | 
	    Keyed_annotation_value
	    ","
	  
 ;
syntax Single_annotation_value
        = Expression
        | Nested_annotation
        | "{" 
		Expression_or_nested_annotation
		","
	       "}"
 ;
syntax Nested_annotation
        = 
        Annotation
 ;
syntax Expression_or_nested_annotation
        = Expression
        | Nested_annotation
 ;
syntax Keyed_annotation_value
        = 
        Id "=" Single_annotation_value
 ;
syntax Block
        = 
        "{" (NL IN) Declaration_or_statement* EX "}"
 ;
syntax Declaration_or_statement
        = Declaration
        | Statement
 ;
syntax Declaration
        = Local_variable_declaration
        | Class_declaration
 ;
syntax Local_variable_declaration
        = 
        Variable_declaration
 ;
syntax Statement
        = Label_statement
        | Empty_statement
        | Expression_statement
        | If_statement
        | Switch_statement
        | While_statement
        | Do_statement
        | For_statement
        | For_in_statement
        | Break_statement
        | Continue_statement
        | Return_statement
        | Throw_statement
        | Synchronized_statement
        | Try_statement
        | Assert_statement
        | Block
 ;
syntax Empty_statement
        = 
        ";" NL
 ;
syntax Label_statement
        = 
        Label_name ":" Statement
 ;
syntax Label_name
        = 
        Reference
 ;
syntax Expression_statement
        = 
        Expression ";" NL
 ;
syntax If_statement
        = 
        "if" "(" Expression ")" Statement Else_clause? NL
 ;
syntax Else_clause
        = 
        "else" Statement
 ;
syntax Switch_statement
        = 
        "switch" "(" Expression ")" Switch_block NL
 ;
syntax Switch_block
        = 
        "{" (IN NL) Switch_alternative* EX "}"
 ;
syntax Switch_alternative
        = 
        Switch_label (IN NL) Declaration_or_statement* EX
 ;
syntax Switch_label
        = "case" Constant_expression ":"
        | "default" ":"
 ;
syntax While_statement
        = 
        "while" "(" Expression ")" Statement NL
 ;
syntax Do_statement
        = 
        "do" Statement "while" "(" Expression ")" ";" NL
 ;
syntax For_statement
        = 
        "for" "(" For_init For_expression For_update ")" Statement NL
 ;
syntax For_init
        = 
		Expression
		","
	       ";"
        | Local_variable_declaration
 ;
syntax For_expression
        = 
        Expression? ";"
 ;
syntax For_update
        = 
        
	Expression
	","
      
 ;
syntax For_in_statement
        = 
        "for" "(" For_in_init ":" Expression ")" Statement NL
 ;
syntax For_in_init
        = 
        Modifier* Type_specifier Variable_name
 ;
syntax Break_statement
        = 
        "break" Label_name? ";" NL
 ;
syntax Continue_statement
        = 
        "continue" Label_name? ";" NL
 ;
syntax Return_statement
        = 
        "return" Expression? ";" NL
 ;
syntax Throw_statement
        = 
        "throw" Expression ";" NL
 ;
syntax Synchronized_statement
        = 
        "synchronized" "(" Expression ")" Statement NL
 ;
syntax Try_statement
        = 
        "try" Block Catch_clause* Finally_clause? NL
 ;
syntax Catch_clause
        = 
        "catch" "(" Modifier* Type_specifier Variable_name ")" Block
 ;
syntax Finally_clause
        = 
        "finally" Block
 ;
syntax Assert_statement
        = 
        "assert" Expression Assert_error_code? ";" NL
 ;
syntax Assert_error_code
        = 
        ":" Expression
 ;
syntax Constant_expression
        = 
        Expression
 ;
syntax Expression
        = 
        Assignment_expression
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
        | "\<\<="
        | SPOFF "\>" "\>=" SPON
        | SPOFF "\>" "\>" "\>=" SPON
        | "&="
        | "^="
        | "|="
 ;
syntax Conditional_expression
        = 
        Conditional_or_expression Conditional_choice?
 ;
syntax Conditional_choice
        = 
        "?" Expression ":" Conditional_expression
 ;
syntax Conditional_or_expression
        = 
        Conditional_and_expression Or_conditional_and_expression*
 ;
syntax Or_conditional_and_expression
        = 
        "||" Conditional_and_expression
 ;
syntax Conditional_and_expression
        = 
        Inclusive_or_expression And_inclusive_or_expression*
 ;
syntax And_inclusive_or_expression
        = 
        "&&" Inclusive_or_expression
 ;
syntax Inclusive_or_expression
        = 
        Exclusive_or_expression Or_exclusive_or_expression*
 ;
syntax Or_exclusive_or_expression
        = 
        "|" Exclusive_or_expression
 ;
syntax Exclusive_or_expression
        = 
        And_expression Or_and_expression*
 ;
syntax Or_and_expression
        = 
        "^" And_expression
 ;
syntax And_expression
        = 
        Equality_expression And_equality_expression*
 ;
syntax And_equality_expression
        = 
        "&" Equality_expression
 ;
syntax Equality_expression
        = 
        Relational_expression Equality_op_relational_expression*
 ;
syntax Equality_op_relational_expression
        = 
        Equality_op Relational_expression
 ;
syntax Equality_op
        = "=="
        | "!="
 ;
syntax Relational_expression
        = 
        Shift_expression Relational_op_shift_expression*
 ;
syntax Relational_op_shift_expression
        = Relational_op Shift_expression
        | "instanceof" Type_specifier
 ;
syntax Relational_op
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
        Shift_op Additive_expression
 ;
syntax Shift_op
        = "\<\<"
        | SPOFF "\>" "\>" SPON
        | SPOFF "\>" "\>" "\>" SPON
 ;
syntax Additive_expression
        = 
        Multiplicative_expression Add_op_multiplicative_expression*
 ;
syntax Add_op_multiplicative_expression
        = 
        Add_op Multiplicative_expression
 ;
syntax Add_op
        = "+"
        | "-"
 ;
syntax Multiplicative_expression
        = 
        Unary_expression Mult_op_unary_expression*
 ;
syntax Mult_op_unary_expression
        = 
        Mult_op Unary_expression
 ;
syntax Mult_op
        = "*"
        | "/"
        | "%"
 ;
syntax Unary_expression
        = Pre_inc_dec Unary_expression
        | Unary_op Unary_expression
        | Postfix_expression
        | Cast_expression
 ;
syntax Pre_inc_dec
        = "++"
        | "--"
 ;
syntax Unary_op
        = "+"
        | "-"
        | "~"
        | "!"
 ;
syntax Cast_expression
        = 
        "(" Type_specifier ")" Unary_expression
 ;
syntax Postfix_expression
        = 
        Primary Post_inc_dec*
 ;
syntax Post_inc_dec
        = "++"
        | "--"
 ;
syntax Subscript
        = 
        "[" Expression "]"
 ;
syntax Primary
        = Literal Component*
        | Reference
        | "(" Expression ")" Component*
        | Class_instance_creation_expression Component*
        | Array_creation_expression Component*
 ;
syntax Literal
        = Numeric_literal
        | Character_literal
        | String_literal
        | Boolean_literal
        | Null_literal
 ;
syntax Numeric_literal
        = 
        Number
 ;
syntax Character_literal
        = 
        Charlit
 ;
syntax String_literal
        = 
        Stringlit
 ;
syntax Boolean_literal
        = "true"
        | "false"
 ;
syntax Null_literal
        = 
        "null"
 ;
syntax Class_instance_creation_expression
        = 
        "new" Class_or_interface_name "(" 
	    Argument
	    ","
	   ")" Class_body?
 ;
syntax Class_or_interface_name
        = 
        Id Class_or_interface_component*
 ;
syntax Class_or_interface_component
        = Dot_id
        | Generic_argument
 ;
syntax Array_creation_expression
        = 
        "new" Array_type_specifier Array_initializer?
 ;
syntax Dimension
        = 
        "[" Expression? "]"
 ;
syntax Argument
        = Expression
        | Type_specifier
 ;
syntax Qualified_name
        = 
        Reference
 ;
syntax Reference
        = Id Component*
        | Primitive_type Component*
 ;
syntax Component
        = Dot_id
        | Method_argument
        | Subscript
        | Generic_argument
        | Class_instance_creation_expression
        | Dimension
 ;
syntax Class_instance_declaration
        = Class_instance_creation_expression
        | "class"
 ;
syntax Method_argument
        = 
        "(" 
	    Argument
	    ","
	   ")"
 ;
syntax Dot_id
        = "." Generic_argument? Id
        | "." "class"
        | "." Class_instance_declaration
 ;
syntax Generic_argument
        = 
        "\<" 
	    Type_argument
	    ","
	   "\>"
 ;
syntax Type_argument
        = Type_specifier
        | Wildcard_type
 ;
syntax Wildcard_type
        = "?" Wildcard_type_bound?
        | Id Wildcard_type_bound?
 ;
syntax Wildcard_type_bound
        = "extends" Type_specifier
        | "super" Type_specifier
 ;
syntax Generic_parameter
        = 
        "\<" 
	    Type_parameter
	    ","
	   "\>"
 ;
syntax Type_parameter
        = 
        Declared_name Type_bound_clause?
 ;
syntax Type_bound_clause
        = 
        "extends" Type_bound
 ;
syntax Type_bound
        = 
        Type_specifier And_type_spec*
 ;
syntax And_type_spec
        = 
        "&" Type_specifier
 ;
