@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Csharp_cordy

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Literal
        = Boolean_literal
        | Integer_literal
        | Real_literal
        | Character_literal
        | String_literal
        | Null_literal
 ;
syntax Boolean_literal
        = "true"
        | "false"
 ;
syntax Integer_literal
        = Decimal_integer_literal
        | Hexadecimal_integer_literal
 ;
syntax Character_literal
        = 
        Charlit
 ;
syntax String_literal
        = 
        Stringlit
 ;
syntax Null_literal
        = 
        "null"
 ;
syntax Program
        = 
        Compilation_unit
 ;
syntax Compilation_unit
        = 
        Extern_alias_directives? Using_directives? Global_attributes? Namespace_member_declarations?
 ;
syntax Namespace_name
        = 
        Namespace_or_type_name
 ;
syntax Type_name
        = 
        Namespace_or_type_name
 ;
syntax Namespace_or_type_name
        = 
        "this"? Id Colon_colon_id? Dot_id* Type_argument_list?
 ;
syntax Colon_colon_id
        = 
        "::" Id
 ;
syntax Dot_id
        = 
        "." Id
 ;
syntax Type
        = Value_type
        | Reference_type
        | Type_parameter
        | Pointer_type
 ;
syntax Value_type
        = Struct_type
        | Enum_type
 ;
syntax Struct_type
        = Type_name
        | Simple_type
        | Nullable_type
 ;
syntax Simple_type
        = Numeric_type
        | "bool"
 ;
syntax Numeric_type
        = Integral_type
        | Floating_point_type
        | "decimal"
 ;
syntax Integral_type
        = "sbyte"
        | "byte"
        | "short"
        | "ushort"
        | "int"
        | "uint"
        | "long"
        | "ulong"
        | "char"
 ;
syntax Floating_point_type
        = "float"
        | "double"
 ;
syntax Enum_type
        = 
        Type_name
 ;
syntax Nullable_type
        = 
        Non_nullable_value_type "?"
 ;
syntax Non_nullable_value_type
        = Enum_type
        | Type_name
        | Simple_type
 ;
syntax Reference_type
        = Class_type
        | Interface_type
        | Array_type
        | Delegate_type
 ;
syntax Class_type
        = Type_name
        | "object"
        | "string"
 ;
syntax Interface_type
        = 
        Type_name
 ;
syntax Array_type
        = 
        Non_array_type Rank_specifiers
 ;
syntax Non_array_type
        = Value_type
        | Class_type
        | Interface_type
        | Delegate_type
        | Type_parameter
 ;
syntax Rank_specifiers
        = 
        Rank_specifier*
 ;
syntax Rank_specifier
        = 
        "[" ","* "]"
 ;
syntax Delegate_type
        = 
        Type_name
 ;
syntax Variable_reference
        = 
        Expression
 ;
syntax Argument_list
        = 
        
	Argument
	","
      
 ;
syntax Argument
        = Expression
        | "ref" Variable_reference
        | "out" Variable_reference
 ;
syntax Primary_expression
        = Array_creation_expression
        | Primary_no_array_creation_expression
        | Object_initializer_expression
 ;
syntax Primary_no_array_creation_expression
        = Simple_primary_expression Primary_expression_modifier*
        | Sizeof_expression
 ;
syntax Simple_primary_expression
        = Literal
        | Simple_name
        | Parenthesized_expression
        | This_access
        | Base_access
        | Object_or_delegate_creation_expression
        | Typeof_expression
        | Checked_expression
        | Unchecked_expression
        | Default_value_expression
        | Anonymous_method_expression
        | Predefined_type Member_access_operator
        | Qualified_alias_member Member_access_operator
 ;
syntax Primary_expression_modifier
        = Member_access_operator
        | Invocation_operator
        | Element_access_operator
        | Post_increment_operator
        | Post_decrement_operator
        | Pointer_member_access_operator
        | Pointer_element_access_operator
 ;
syntax Simple_name
        = 
        Id Type_argument_list?
 ;
syntax Parenthesized_expression
        = 
        "(" Expression ")"
 ;
syntax Member_access_operator
        = 
        "." Id Type_argument_list?
 ;
syntax Predefined_type
        = "bool"
        | "byte"
        | "char"
        | "decimal"
        | "double"
        | "float"
        | "int"
        | "long"
        | "object"
        | "sbyte"
        | "short"
        | "string"
        | "uint"
        | "ulong"
        | "ushort"
 ;
syntax Invocation_operator
        = "(" 
		Argument
		","
	       ")"
        | "((" Argument_list_or_key* "))"
 ;
syntax Element_access_operator
        = 
        "[" Expression+ "]"
 ;
syntax This_access
        = 
        "this"
 ;
syntax Base_access
        = "base" "." Id Type_argument_list?
        | "base" "[" Expression+ "]"
 ;
syntax Post_increment_operator
        = 
        "++"
 ;
syntax Post_decrement_operator
        = 
        "--"
 ;
syntax Object_or_delegate_creation_expression
        = 
        "new" Type "(" Argument_list? ")"
 ;
syntax Array_creation_expression
        = "new" Non_array_type "[" Expression_list "]" Rank_specifiers? Array_initializer?
        | "new" Array_type Array_initializer
 ;
syntax Object_initializer_expression
        = 
        "new" Array_type? Object_formals? Rank_specifiers? Object_initializer
 ;
syntax Object_formals
        = 
        "(" Formal_parameter_list? ")"
 ;
syntax Object_initializer
        = 
        "{" Member_initializer_list? ","? "}"
 ;
syntax Member_initializer_list
        = 
        Member_initializer+
 ;
syntax Member_initializer
        = Member_name_equals? Expression
        | Member_name_equals? Array_initializer
 ;
syntax Member_name_equals
        = 
        Simple_name "="
 ;
syntax Expression_list
        = 
        Expression+
 ;
syntax Typeof_expression
        = "typeof" "(" Type ")"
        | "typeof" "(" Unbound_type_name ")"
        | "typeof" "(" "void" ")"
        | "typeof" "(" ")"
 ;
syntax Unbound_type_name
        = 
        Id Colon_colon_id? Generic_dimension_specifier? Dot_id_generic_dimension_specifier*
 ;
syntax Dot_id_generic_dimension_specifier
        = 
        "." Id Generic_dimension_specifier?
 ;
syntax Generic_dimension_specifier
        = 
        "\<" ","* "\>"
 ;
syntax Checked_expression
        = 
        "checked" "(" Expression ")"
 ;
syntax Unchecked_expression
        = 
        "unchecked" "(" Expression ")"
 ;
syntax Default_value_expression
        = 
        "default" "(" Type ")"
 ;
syntax Anonymous_method_expression
        = 
        "delegate" Anonymous_method_signature? Block
 ;
syntax Anonymous_method_signature
        = 
        "(" Anonymous_method_parameter_list? ")"
 ;
syntax Anonymous_method_parameter_list
        = 
        Anonymous_method_parameter+
 ;
syntax Anonymous_method_parameter
        = 
        Parameter_modifier? Type Id
 ;
syntax Unary_expression
        = Primary_expression
        | "+" Unary_expression
        | "-" Unary_expression
        | "!" Unary_expression
        | "~" Unary_expression
        | Pre_increment_expression
        | Pre_decrement_expression
        | Cast_expression
        | Pointer_indirection_expression
        | Addressof_expression
 ;
syntax Pre_increment_expression
        = 
        "++" Unary_expression
 ;
syntax Pre_decrement_expression
        = 
        "--" Unary_expression
 ;
syntax Cast_expression
        = 
        "(" Type ")" Unary_expression
 ;
syntax Multiplicative_expression
        = Unary_expression
        | Multiplicative_expression "*" Unary_expression
        | Multiplicative_expression "/" Unary_expression
        | Multiplicative_expression "%" Unary_expression
 ;
syntax Additive_expression
        = Multiplicative_expression
        | Additive_expression "+" Multiplicative_expression
        | Additive_expression "-" Multiplicative_expression
 ;
syntax Shift_expression
        = Additive_expression
        | Shift_expression "\<\<" Additive_expression
        | Shift_expression "\>\>" Additive_expression
 ;
syntax Relational_expression
        = Shift_expression
        | Relational_expression "\<" Shift_expression
        | Relational_expression "\>" Shift_expression
        | Relational_expression "\<=" Shift_expression
        | Relational_expression "\>=" Shift_expression
        | Relational_expression "is" Type
        | Relational_expression "as" Type
 ;
syntax Equality_expression
        = Relational_expression
        | Equality_expression "==" Relational_expression
        | Equality_expression "!=" Relational_expression
 ;
syntax And_expression
        = Equality_expression
        | And_expression "&" Equality_expression
 ;
syntax Exclusive_or_expression
        = And_expression
        | Exclusive_or_expression "^" And_expression
 ;
syntax Inclusive_or_expression
        = Exclusive_or_expression
        | Inclusive_or_expression "|" Exclusive_or_expression
 ;
syntax Conditional_and_expression
        = Inclusive_or_expression
        | Conditional_and_expression "&&" Inclusive_or_expression
 ;
syntax Conditional_or_expression
        = Conditional_and_expression
        | Conditional_or_expression "||" Conditional_and_expression
 ;
syntax Null_coalescing_expression
        = Conditional_or_expression
        | Conditional_or_expression "??" Null_coalescing_expression
 ;
syntax Conditional_expression
        = Null_coalescing_expression
        | Null_coalescing_expression "?" Expression ":" Expression
 ;
syntax Assignment
        = 
        Unary_expression Assignment_operator Expression
 ;
syntax Assignment_operator
        = "="
        | "+="
        | "-="
        | "*="
        | "/="
        | "%="
        | "&="
        | "|="
        | "^="
        | "\<\<="
        | "\>\>="
 ;
syntax Expression
        = Conditional_expression
        | Assignment
        | Query_expression
        | Lambda_expression
 ;
syntax Constant_expression
        = 
        Expression
 ;
syntax Boolean_expression
        = 
        Expression
 ;
syntax Query_expression
        = 
        From_clause IN Query_body EX
 ;
syntax Query_body
        = 
        Query_body_clause* Final_query_clause Query_continuation?
 ;
syntax Query_body_clause
        = NL From_clause
        | NL Join_clause
        | NL Let_clause
        | NL Where_clause
        | NL Orderby_clause
 ;
syntax From_clause
        = 
        "from" Item_name "in" Src_expr
 ;
syntax Join_clause
        = 
        "join" Item_name "in" Src_expr "on" Key_expr "equals" Key_expr Into_item_name?
 ;
syntax Into_item_name
        = 
        "into" Item_name
 ;
syntax Let_clause
        = 
        "let" Item_name "=" Sel_expr
 ;
syntax Where_clause
        = 
        "where" Pred_expr
 ;
syntax Orderby_clause
        = 
        "orderby" 
	    Key_expr_ascending_descending
	    ","
	  
 ;
syntax Key_expr_ascending_descending
        = 
        Key_expr Ascending_descending?
 ;
syntax Ascending_descending
        = "ascending"
        | "descending"
 ;
syntax Final_query_clause
        = NL Select_clause
        | NL Groupby_clause
 ;
syntax Select_clause
        = 
        "select" Sel_expr
 ;
syntax Groupby_clause
        = 
        "group" Sel_expr "by" Key_expr
 ;
syntax Query_continuation
        = 
        "into" Item_name Query_body
 ;
syntax Item_name
        = 
        Type? Simple_name
 ;
syntax Sel_expr
        = 
        Expression
 ;
syntax Key_expr
        = 
        Expression
 ;
syntax Src_expr
        = 
        Expression
 ;
syntax Pred_expr
        = 
        Expression
 ;
syntax Lambda_expression
        = Input_parameters "=\>" Expression
        | Input_parameters "=\>" Block
 ;
syntax Input_parameters
        = Input_parameter
        | "(" 
		Input_parameter
		","
	       ")"
 ;
syntax Input_parameter
        = 
        Type? Id
 ;
syntax Statement
        = Labeled_statement
        | Declaration_statement
        | Embedded_statement
 ;
syntax Embedded_statement
        = Block
        | Empty_statement
        | Expression_statement
        | Selection_statement
        | Iteration_statement
        | Jump_statement
        | Try_statement
        | Checked_statement
        | Unchecked_statement
        | Lock_statement
        | Using_statement
        | Yield_statement
        | Unsafe_statement
        | Fixed_statement
 ;
syntax Block
        = 
        "{" NL IN Statement_list? EX "}" ";"?
 ;
syntax Statement_list
        = 
        Statement+
 ;
syntax Empty_statement
        = 
        ";"
 ;
syntax Labeled_statement
        = 
        Id ":" Statement
 ;
syntax Declaration_statement
        = Local_variable_declaration ";" NL
        | Local_constant_declaration ";" NL
 ;
syntax Local_variable_declaration
        = 
        Type Local_variable_declarators
 ;
syntax Local_variable_declarators
        = 
        Local_variable_declarator+
 ;
syntax Local_variable_declarator
        = 
        Id Equals_local_variable_initializer?
 ;
syntax Equals_local_variable_initializer
        = 
        "=" Local_variable_initializer
 ;
syntax Local_variable_initializer
        = Expression
        | Array_initializer
        | Stackalloc_initializer
 ;
syntax Local_constant_declaration
        = 
        "const" Type Constant_declarators
 ;
syntax Expression_statement
        = 
        Statement_expression ";" NL
 ;
syntax Statement_expression
        = Primary_no_array_creation_expression
        | Object_creation_expression
        | Assignment
        | Pre_increment_expression
        | Pre_decrement_expression
 ;
syntax Object_creation_expression
        = 
        "new" Type "(" Argument_list? ")"
 ;
syntax Selection_statement
        = If_statement
        | Switch_statement
 ;
syntax If_statement
        = 
        "if" "(" Boolean_expression ")" Nested_statement Else_if_clause* Else_clause? NL
 ;
syntax Else_if_clause
        = 
        "else" "if" "(" Boolean_expression ")" Nested_statement
 ;
syntax Else_clause
        = 
        "else" Nested_statement
 ;
syntax Nested_statement
        = Block
        | IN NL Embedded_statement EX
 ;
syntax Switch_statement
        = 
        "switch" "(" Expression ")" Switch_block
 ;
syntax Switch_block
        = 
        "{" NL IN Switch_sections EX "}" NL
 ;
syntax Switch_sections
        = 
        Switch_section+
 ;
syntax Switch_section
        = 
        Switch_labels NL IN Statement_list EX
 ;
syntax Switch_labels
        = 
        Switch_label+
 ;
syntax Switch_label
        = "case" Constant_expression ":"
        | "default" ":"
 ;
syntax Iteration_statement
        = While_statement
        | Do_statement
        | For_statement
        | Foreach_statement
 ;
syntax While_statement
        = 
        "while" "(" Boolean_expression ")" Nested_statement NL
 ;
syntax Do_statement
        = 
        "do" NL IN Embedded_statement EX "while" "(" Boolean_expression ")" ";" NL
 ;
syntax For_statement
        = 
        "for" "(" For_initializer? ";" For_condition? ";" For_iterator? ")" Nested_statement NL
 ;
syntax For_initializer
        = Local_variable_declaration
        | Statement_expression_list
 ;
syntax For_condition
        = 
        Boolean_expression
 ;
syntax For_iterator
        = 
        Statement_expression_list
 ;
syntax Statement_expression_list
        = 
        Statement_expression+
 ;
syntax Foreach_statement
        = 
        "foreach" "(" Type Id "in" Expression ")" Nested_statement NL
 ;
syntax Jump_statement
        = Break_statement
        | Continue_statement
        | Goto_statement
        | Return_statement
        | Throw_statement
 ;
syntax Break_statement
        = 
        "break" ";" NL
 ;
syntax Continue_statement
        = 
        "continue" ";" NL
 ;
syntax Goto_statement
        = "goto" Id ";" NL
        | "goto" "case" Constant_expression ";" NL
        | "goto" "default" ";" NL
 ;
syntax Return_statement
        = 
        "return" Expression? ";" NL
 ;
syntax Throw_statement
        = 
        "throw" Expression? ";" NL
 ;
syntax Try_statement
        = 
        "try" Block NL Catch_clauses? Finally_clause?
 ;
syntax Catch_clauses
        = 
        Specific_catch_clauses? General_catch_clause?
 ;
syntax Specific_catch_clauses
        = 
        Specific_catch_clause+
 ;
syntax Specific_catch_clause
        = 
        "catch" "(" Class_type Id? ")" Block NL
 ;
syntax General_catch_clause
        = 
        "catch" Block NL
 ;
syntax Finally_clause
        = 
        "finally" Block NL
 ;
syntax Checked_statement
        = 
        "checked" Block NL
 ;
syntax Unchecked_statement
        = 
        "unchecked" Block NL
 ;
syntax Lock_statement
        = 
        "lock" "(" Expression ")" NL Embedded_statement
 ;
syntax Using_statement
        = 
        "using" "(" Resource_acquisition ")" NL Embedded_statement
 ;
syntax Resource_acquisition
        = Local_variable_declaration
        | Expression
 ;
syntax Yield_statement
        = "yield" "return" Expression ";" NL
        | "yield" "break" ";" NL
 ;
syntax Namespace_declaration
        = 
        "namespace" Qualified_identifier NL Namespace_body
 ;
syntax Qualified_identifier
        = 
        Id Dot_id*
 ;
syntax Namespace_body
        = 
        "{" NL IN Extern_alias_directives? Using_directives? Namespace_member_declarations? EX "}" ";"? NL
 ;
syntax Extern_alias_directives
        = 
        Extern_alias_directive+ NL
 ;
syntax Extern_alias_directive
        = 
        "extern" Id Id ";" NL
 ;
syntax Using_directives
        = 
        Using_directive+ NL
 ;
syntax Using_directive
        = Using_alias_directive
        | Using_namespace_directive
 ;
syntax Using_alias_directive
        = 
        "using" Id "=" Namespace_or_type_name ";" NL
 ;
syntax Using_namespace_directive
        = 
        "using" Namespace_name ";" NL
 ;
syntax Namespace_member_declarations
        = 
        Namespace_member_declaration+
 ;
syntax Namespace_member_declaration
        = Namespace_declaration NL
        | Type_declaration NL
 ;
syntax Type_declaration
        = Class_declaration
        | Struct_declaration
        | Interface_declaration
        | Enum_declaration
        | Delegate_declaration
 ;
syntax Qualified_alias_member
        = 
        Id "::" Id Type_argument_list?
 ;
syntax Class_declaration
        = 
        Attributes? Class_modifiers? "partial"? "class" Id Type_parameter_list? Class_base? Type_parameter_constraints_clauses? NL Class_body
 ;
syntax Class_modifiers
        = 
        Class_modifier+
 ;
syntax Class_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
        | "abstract"
        | "sealed"
        | "static"
        | "unsafe"
 ;
syntax Class_base
        = 
        ":" Class_and_interface_type_ist
 ;
syntax Class_and_interface_type_ist
        = 
        Class_or_interface_type+
 ;
syntax Class_or_interface_type
        = Class_type
        | Interface_type
 ;
syntax Class_body
        = 
        "{" NL IN Class_member_declarations? EX "}" ";"? NL
 ;
syntax Class_member_declarations
        = 
        Class_member_declaration+
 ;
syntax Class_member_declaration
        = Constant_declaration
        | Field_declaration
        | Method_declaration
        | Property_declaration
        | Event_declaration
        | Indexer_declaration
        | Operator_declaration
        | Constructor_declaration
        | Finalizer_declaration
        | Static_constructor_declaration
        | Type_declaration
 ;
syntax Constant_declaration
        = 
        Attributes? Constant_modifiers? "const" Type Constant_declarators ";" NL
 ;
syntax Constant_modifiers
        = 
        Constant_modifier+
 ;
syntax Constant_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
 ;
syntax Constant_declarators
        = 
        Constant_declarator+
 ;
syntax Constant_declarator
        = 
        Id "=" Constant_expression
 ;
syntax Field_declaration
        = 
        Attributes? Field_modifiers? Type Variable_declarators ";" NL
 ;
syntax Field_modifiers
        = 
        Field_modifier+
 ;
syntax Field_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
        | "static"
        | "readonly"
        | "volatile"
        | "unsafe"
 ;
syntax Variable_declarators
        = 
        Variable_declarator+
 ;
syntax Variable_declarator
        = 
        Id Equals_variable_initializer?
 ;
syntax Equals_variable_initializer
        = 
        "=" Variable_initializer
 ;
syntax Variable_initializer
        = Expression
        | Array_initializer
 ;
syntax Method_declaration
        = 
        Method_header NL Method_body NL
 ;
syntax Method_header
        = 
        Attributes? Method_modifiers? Return_type Member_name Type_parameter_list? "(" Formal_parameter_list? ")" Type_parameter_constraints_clauses?
 ;
syntax Method_modifiers
        = 
        Method_modifier+
 ;
syntax Method_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
        | "static"
        | "virtual"
        | "sealed"
        | "override"
        | "abstract"
        | "extern"
        | "partial"
        | "unsafe"
 ;
syntax Return_type
        = Type
        | "void"
 ;
syntax Member_name
        = 
        Interface_type_dot? Id
 ;
syntax Interface_type_dot
        = 
        Interface_type "."
 ;
syntax Method_body
        = Block NL
        | ";" NL
 ;
syntax Formal_parameter_list
        = 
        Fixed_parameters Comma_parameter_array?
 ;
syntax Comma_parameter_array
        = 
        "," Parameter_array
 ;
syntax Fixed_parameters
        = 
        Fixed_parameter+
 ;
syntax Fixed_parameter
        = Attributes? Parameter_modifier? Type Id
        | Parameter_array
 ;
syntax Parameter_modifier
        = "ref"
        | "out"
 ;
syntax Parameter_array
        = 
        Attributes? "params" Array_type Id
 ;
syntax Property_declaration
        = 
        NL Attributes? Property_modifiers? Type Member_name "{" NL IN Accessor_declarations EX "}" NL
 ;
syntax Property_modifiers
        = 
        Property_modifier+
 ;
syntax Property_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
        | "static"
        | "virtual"
        | "sealed"
        | "override"
        | "abstract"
        | "extern"
        | "unsafe"
 ;
syntax Accessor_declarations
        = Get_accessor_declaration Set_accessor_declaration?
        | Set_accessor_declaration Get_accessor_declaration?
 ;
syntax Get_accessor_declaration
        = 
        Attributes? Accessor_modifier? "get" Accessor_body
 ;
syntax Set_accessor_declaration
        = 
        Attributes? Accessor_modifier? "set" Accessor_body
 ;
syntax Accessor_modifier
        = "protected"
        | "internal"
        | "private"
        | "protected" "internal"
        | "internal" "protected"
 ;
syntax Accessor_body
        = Block NL
        | ";" NL
 ;
syntax Event_declaration
        = Attributes? Event_modifiers? "event" Type Variable_declarators ";" NL
        | Attributes? Event_modifiers? "event" Type Member_name "{" NL IN Event_accessor_declarations EX "}" NL EX
 ;
syntax Event_modifiers
        = 
        Event_modifier+
 ;
syntax Event_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
        | "static"
        | "virtual"
        | "sealed"
        | "override"
        | "abstract"
        | "extern"
        | "unsafe"
 ;
syntax Event_accessor_declarations
        = Add_accessor_declaration Remove_accessor_declaration
        | Remove_accessor_declaration Add_accessor_declaration
 ;
syntax Add_accessor_declaration
        = 
        Attributes? "add" Block NL
 ;
syntax Remove_accessor_declaration
        = 
        Attributes? "remove" Block NL
 ;
syntax Indexer_declaration
        = 
        Attributes? Indexer_modifiers? Indexer_declarator "{" NL IN Accessor_declarations EX "}" NL
 ;
syntax Indexer_modifiers
        = 
        Indexer_modifier+
 ;
syntax Indexer_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
        | "virtual"
        | "sealed"
        | "override"
        | "abstract"
        | "extern"
        | "unsafe"
 ;
syntax Indexer_declarator
        = 
        Type Interface_type_dot? "this" "[" Formal_parameter_list "]"
 ;
syntax Operator_declaration
        = 
        Attributes? Operator_modifiers? Operator_declarator Operator_body
 ;
syntax Operator_modifiers
        = 
        Operator_modifier+
 ;
syntax Operator_modifier
        = "public"
        | "static"
        | "extern"
        | "unsafe"
 ;
syntax Operator_declarator
        = Unary_operator_declarator
        | Binary_operator_declarator
        | Conversion_operator_declarator
 ;
syntax Unary_operator_declarator
        = 
        Type "operator" Overloadable_unary_operator "(" Type Id ")"
 ;
syntax Overloadable_unary_operator
        = "+"
        | "-"
        | "!"
        | "~"
        | "++"
        | "--"
        | "true"
        | "false"
 ;
syntax Binary_operator_declarator
        = 
        Type "operator" Overloadable_binary_operator "(" Type Id ")"
 ;
syntax Overloadable_binary_operator
        = "+"
        | "-"
        | "*"
        | "/"
        | "%"
        | "&"
        | "|"
        | "^"
        | "\<\<"
        | "\>\>"
        | "=="
        | "!="
        | "\>"
        | "\<"
        | "\>="
        | "\<="
 ;
syntax Conversion_operator_declarator
        = "implicit" "operator" Type "(" Type Id ")"
        | "explicit" "operator" Type "(" Type Id ")"
 ;
syntax Operator_body
        = Block NL
        | ";" NL
 ;
syntax Constructor_declaration
        = 
        Attributes? Constructor_modifiers? Constructor_declarator NL Constructor_body NL
 ;
syntax Constructor_modifiers
        = 
        Constructor_modifier+
 ;
syntax Constructor_modifier
        = "public"
        | "protected"
        | "internal"
        | "private"
        | "extern"
        | "unsafe"
 ;
syntax Constructor_declarator
        = 
        Id "(" Formal_parameter_list? ")" Constructor_initializer?
 ;
syntax Constructor_initializer
        = ":" "base" "(" Argument_list? ")"
        | ":" "this" "(" Argument_list? ")"
 ;
syntax Constructor_body
        = Block NL
        | ";" NL
 ;
syntax Static_constructor_declaration
        = 
        Attributes? Static_constructor_modifiers Id "(" ")" NL Static_constructor_body NL
 ;
syntax Static_constructor_modifiers
        = "extern"? "static"
        | "static" "extern"?
        | "extern"? "unsafe"? "static"
        | "unsafe"? "extern"? "static"
        | "extern"? "static" "unsafe"?
        | "unsafe"? "static" "extern"?
        | "static" "extern"? "unsafe"?
        | "static" "unsafe"? "extern"?
 ;
syntax Static_constructor_body
        = Block NL
        | ";" NL
 ;
syntax Finalizer_declaration
        = Attributes? "extern"? "~" Id "(" ")" Finalizer_body
        | Attributes? "extern"? "unsafe"? "~" Id "(" ")" NL Finalizer_body NL
        | Attributes? "unsafe"? "extern"? "~" Id "(" ")" NL Finalizer_body NL
 ;
syntax Finalizer_body
        = Block NL
        | ";" NL
 ;
syntax Struct_declaration
        = 
        Attributes? Struct_modifiers? "partial"? "struct" Id Type_parameter_list? Struct_interfaces? Type_parameter_constraints_clauses? NL Struct_body NL
 ;
syntax Struct_modifiers
        = 
        Struct_modifier+
 ;
syntax Struct_modifier
        = "new"
        | "public"
        | "proctected"
        | "internal"
        | "private"
        | "unsafe"
 ;
syntax Struct_interfaces
        = 
        ":" Interface_type_list
 ;
syntax Interface_type_list
        = 
        Interface_type+
 ;
syntax Struct_body
        = 
        "{" NL IN Struct_member_declarations? EX "}" ";"? NL
 ;
syntax Struct_member_declarations
        = 
        Struct_member_declaration+
 ;
syntax Struct_member_declaration
        = Constant_declaration
        | Field_declaration
        | Method_declaration
        | Property_declaration
        | Event_declaration
        | Indexer_declaration
        | Operator_declaration
        | Constructor_declaration
        | Static_constructor_declaration
        | Type_declaration
 ;
syntax Array_initializer
        = 
        "{" Variable_initializer_list? ","? "}"
 ;
syntax Variable_initializer_list
        = 
        Variable_initializer+
 ;
syntax Interface_declaration
        = 
        Attributes? Interface_modifiers? "partial"? "interface" Id Type_parameter_list? Interface_base? Type_parameter_constraints_clauses? NL Interface_body NL
 ;
syntax Interface_modifiers
        = 
        Interface_modifier*
 ;
syntax Interface_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
        | "unsafe"
 ;
syntax Interface_base
        = 
        ":" Interface_type_list
 ;
syntax Interface_body
        = 
        "{" NL IN Interface_member_declarations? EX "}" ";"? NL
 ;
syntax Interface_member_declarations
        = 
        Interface_member_declaration+
 ;
syntax Interface_member_declaration
        = Interface_method_declaration
        | Interface_property_declaration
        | Interface_event_declaration
        | Interface_indexer_declaration
 ;
syntax Interface_method_declaration
        = 
        Attributes? "new"? Return_type Id Type_parameter_list? "(" Formal_parameter_list? ")" Type_parameter_constraints_clauses? ";" NL
 ;
syntax Interface_property_declaration
        = 
        Attributes? "new"? Type Id NL "{" NL IN Interface_accessors EX "}" NL
 ;
syntax Interface_accessors
        = Attributes? "get" ";"
        | Attributes? "set" ";"
        | Attributes? "get" ";" Attributes? "set" ";"
        | Attributes? "set" ";" Attributes? "get" ";"
 ;
syntax Interface_event_declaration
        = 
        Attributes? "new"? "event" Type Id ";" NL
 ;
syntax Interface_indexer_declaration
        = 
        Attributes? "new"? Type "this" "[" Formal_parameter_list "]" "{" NL IN Interface_accessors EX "}" NL
 ;
syntax Enum_declaration
        = 
        Attributes? Enum_modifiers? "enum" Id Enum_base? Enum_body NL
 ;
syntax Enum_base
        = 
        ":" Integral_type
 ;
syntax Enum_body
        = 
        "{" NL IN Enum_member_declarations? ","? EX "}" ";"? NL
 ;
syntax Enum_modifiers
        = 
        Enum_modifier+
 ;
syntax Enum_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
 ;
syntax Enum_member_declarations
        = 
        Enum_member_declaration+
 ;
syntax Enum_member_declaration
        = 
        Attributes? Id Equals_constant_expression?
 ;
syntax Equals_constant_expression
        = 
        "=" Constant_expression
 ;
syntax Delegate_declaration
        = 
        Attributes? Delegate_modifiers? "delegate" Return_type Id Type_parameter_list? "(" Formal_parameter_list? ")" Type_parameter_constraints_clauses? ";" NL
 ;
syntax Delegate_modifiers
        = 
        Delegate_modifier+
 ;
syntax Delegate_modifier
        = "new"
        | "public"
        | "protected"
        | "internal"
        | "private"
        | "unsafe"
 ;
syntax Global_attributes
        = 
        Global_attribute_sections
 ;
syntax Global_attribute_sections
        = 
        Global_attribute_section+
 ;
syntax Global_attribute_section
        = 
        "[" Global_attribute_target_specifier Attribute_list ","? "]"
 ;
syntax Global_attribute_target_specifier
        = 
        Global_attribute_target ":"
 ;
syntax Global_attribute_target
        = Id
        | Key
 ;
syntax Attributes
        = 
        Attribute_sections
 ;
syntax Attribute_sections
        = 
        Attribute_section+
 ;
syntax Attribute_section
        = 
        "[" Attribute_target_specifier? Attribute_list ","? "]"
 ;
syntax Attribute_target_specifier
        = 
        Attribute_target ":"
 ;
syntax Attribute_target
        = Id
        | Key
 ;
syntax Attribute_list
        = 
        Attribute+
 ;
syntax Attribute
        = 
        Attribute_name Attribute_arguments?
 ;
syntax Attribute_name
        = 
        Type_name
 ;
syntax Attribute_arguments
        = 
        "(" Attribute_argument_list ")"
 ;
syntax Attribute_argument_list
        = 
        
	Attribute_argument
	","
      
 ;
syntax Attribute_argument
        = Positional_argument
        | Named_argument
 ;
syntax Positional_argument
        = 
        Attribute_argument_expression
 ;
syntax Named_argument
        = 
        Id "=" Attribute_argument_expression
 ;
syntax Attribute_argument_expression
        = 
        Expression
 ;
syntax Type_parameter_list
        = 
        "\<" Type_parameters "\>"
 ;
syntax Type_parameters
        = 
        Attributes_type_parameter+
 ;
syntax Attributes_type_parameter
        = 
        Attributes? Type_parameter
 ;
syntax Type_parameter
        = 
        Id
 ;
syntax Type_argument_list
        = 
        "\<" Type_argument+ "\>"
 ;
syntax Type_argument
        = 
        Type
 ;
syntax Type_parameter_constraints_clauses
        = 
        Type_parameter_constraints_clause+
 ;
syntax Type_parameter_constraints_clause
        = 
        "where" Type_parameter ":" Type_parameter_constraints
 ;
syntax Type_parameter_constraints
        = 
        
	Type_parameter_constraint
	","
      
 ;
syntax Type_parameter_constraint
        = Primary_constraint
        | Secondary_constraint
        | Constructor_constraint
 ;
syntax Primary_constraint
        = Class_type
        | "class"
        | "struct"
 ;
syntax Secondary_constraint
        = Interface_type
        | Type_parameter
 ;
syntax Constructor_constraint
        = 
        "new" "(" ")"
 ;
syntax Unsafe_statement
        = 
        "unsafe" Block
 ;
syntax Pointer_type
        = Unmanaged_type "*"*
        | "void" "*" "*"*
 ;
syntax Unmanaged_type
        = Value_type
        | Reference_type
        | Type_parameter
 ;
syntax Pointer_indirection_expression
        = 
        "*" Unary_expression
 ;
syntax Pointer_member_access_operator
        = 
        "-\>" Id Type_argument_list?
 ;
syntax Pointer_element_access_operator
        = 
        "[" Expression "]"
 ;
syntax Addressof_expression
        = 
        "&" Unary_expression
 ;
syntax Sizeof_expression
        = 
        "sizeof" "(" Unmanaged_type ")"
 ;
syntax Fixed_statement
        = 
        "fixed" "(" Pointer_type Fixed_pointer_declarators ")" Embedded_statement
 ;
syntax Fixed_pointer_declarators
        = 
        Fixed_pointer_declarator+
 ;
syntax Fixed_pointer_declarator
        = 
        Id "=" Fixed_pointer_initializer
 ;
syntax Fixed_pointer_initializer
        = "&" Variable_reference
        | Expression
 ;
syntax Stackalloc_initializer
        = 
        "stackalloc" Unmanaged_type "[" Expression "]"
 ;
syntax Argument_list_or_key
        = Argument_list
        | "in"
 ;

public void main()
{
	registerLanguage("Csharp_cordy", "ext", program(str input, loc org) {return parse(#program, input, org);});
	println("Language registered.");
}
