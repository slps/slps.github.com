@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Js_synytskyy_cordy

syntax Program
        = 
        Js_program
 ;
syntax Js_program
        = 
        Js_declaration_or_statement*
 ;
syntax Js_subscope
        = 
        Js_declaration_or_statement*
 ;
syntax Js_declaration_or_statement
        = Js_declaration NL
        | Js_label? Js_statement NL
        | Comment NL
 ;
syntax Js_label
        = 
        Id ":"
 ;
syntax Js_declaration
        = Js_variable_declaration ";"?
        | Js_constant_declaration ";"?
        | Js_function_declaration ";"?
 ;
syntax Js_variable_declaration
        = 
        "var" 
	    Js_variable_description
	    ","
	  
 ;
syntax Js_variable_description
        = 
        Id Js_variable_initialization?
 ;
syntax Js_variable_initialization
        = 
        "=" Js_assignment_expn
 ;
syntax Js_constant_declaration
        = 
        "const" 
	    Js_constant_description
	    ","
	  
 ;
syntax Js_constant_description
        = 
        Id Js_variable_initialization
 ;
syntax Js_function_declaration
        = 
        NL "function" Id "(" 
	    Js_formal_parameter
	    ","
	   ")" NL "{" (NL IN) Js_subscope EX "}" NL
 ;
syntax Js_function_expn
        = 
        "function" Id? "(" 
	    Js_formal_parameter
	    ","
	   ")" NL "{" (NL IN) Js_subscope EX "}"
 ;
syntax Js_formal_parameter
        = 
        Id
 ;
syntax Js_expn
        = 
        Js_assignment_expn+
 ;
syntax Js_assignment_expn
        = 
        Js_conditional_expn Assign_js_conditional_expn*
 ;
syntax Assign_js_conditional_expn
        = 
        Js_assignment_op Js_conditional_expn
 ;
syntax Js_assignment_op
        = "="
        | "*="
        | "/" SPOFF "=" SPON
        | "%="
        | "+="
        | "-="
        | "\<\<="
        | "\>\>="
        | "\>\>\>="
        | "&="
        | "^="
        | "|="
 ;
syntax Js_conditional_expn
        = 
        Js_logical_or_expn Js_conditional_clause?
 ;
syntax Js_conditional_clause
        = 
        "?" Js_assignment_expn ":" Js_assignment_expn
 ;
syntax Js_logical_or_expn
        = 
        Js_logical_and_expn Js_logical_or_logical_and_expn*
 ;
syntax Js_logical_or_logical_and_expn
        = 
        "||" Js_logical_and_expn
 ;
syntax Js_logical_and_expn
        = 
        Js_bitwise_or_expn Js_logical_and_bitwise_or_expn*
 ;
syntax Js_logical_and_bitwise_or_expn
        = 
        "&&" Js_bitwise_or_expn
 ;
syntax Js_bitwise_or_expn
        = 
        Js_bitwise_xor_expn Js_bitwise_or_bitwise_xor_expn*
 ;
syntax Js_bitwise_or_bitwise_xor_expn
        = 
        "|" Js_bitwise_xor_expn
 ;
syntax Js_bitwise_xor_expn
        = 
        Js_bitwise_and_expn Js_bitwise_xor_bitwise_and_expn*
 ;
syntax Js_bitwise_xor_bitwise_and_expn
        = 
        "^" Js_bitwise_and_expn
 ;
syntax Js_bitwise_and_expn
        = 
        Js_equality_expn Js_bitwise_and_equality_expn*
 ;
syntax Js_bitwise_and_equality_expn
        = 
        "&" Js_equality_expn
 ;
syntax Js_equality_expn
        = 
        Js_relational_expn Js_equality_op_relational_expn*
 ;
syntax Js_equality_op_relational_expn
        = 
        Js_equality_op Js_relational_expn
 ;
syntax Js_equality_op
        = "=="
        | "!="
        | "==="
        | "!=="
        | "in"
        | "instanceof"
 ;
syntax Js_relational_expn
        = 
        Js_shift_expn Js_relational_op_shift_expn*
 ;
syntax Js_relational_op_shift_expn
        = 
        Js_relational_op Js_shift_expn
 ;
syntax Js_relational_op
        = "\<"
        | "\>"
        | "\<="
        | "\>="
 ;
syntax Js_shift_expn
        = 
        Js_additive_expn Js_shift_op_additive_expn*
 ;
syntax Js_shift_op_additive_expn
        = 
        Js_shift_op Js_additive_expn
 ;
syntax Js_shift_op
        = "\<\<"
        | "\>\>"
        | "\>\>\>"
 ;
syntax Js_additive_expn
        = 
        Js_multiplicative_expn Js_additive_op_multiplicative_expn*
 ;
syntax Js_additive_op_multiplicative_expn
        = 
        Js_additive_op Js_multiplicative_expn
 ;
syntax Js_additive_op
        = "+"
        | "-"
 ;
syntax Js_multiplicative_expn
        = 
        Js_unary_expn Js_multiplicative_op_unary_expn*
 ;
syntax Js_multiplicative_op_unary_expn
        = 
        Js_multiplicative_op Js_unary_expn
 ;
syntax Js_multiplicative_op
        = "*"
        | "/"
        | "%"
 ;
syntax Js_unary_expn
        = 
        Js_unary_op* Js_postfix_expn
 ;
syntax Js_unary_op
        = "delete"
        | "void"
        | "typeof"
        | "++"
        | "--"
        | "+"
        | "-"
        | "~"
        | "!"
 ;
syntax Js_postfix_expn
        = 
        Js_lefthand_side_expn Js_postfix_op?
 ;
syntax Js_postfix_op
        = "++"
        | "--"
 ;
syntax Js_lefthand_side_expn
        = 
        "new"? Js_member_expn
 ;
syntax Js_member_expn
        = 
        Js_primary_expn Js_selector*
 ;
syntax Js_selector
        = Js_arguments
        | Js_subscripts
        | Js_field_selector
 ;
syntax Js_arguments
        = 
        "(" 
	    Js_assignment_expn
	    ","
	   ")"
 ;
syntax Js_subscripts
        = 
        "[" Js_expn "]"
 ;
syntax Js_field_selector
        = 
        "." Id
 ;
syntax Js_primary_expn
        = "this"
        | "class"
        | Id
        | Js_literal
        | Js_array_literal
        | Js_object_literal
        | Js_function_expn
        | "(" Js_expn ")"
 ;
syntax Js_literal
        = "null"
        | "true"
        | "false"
        | Js_numeric_literal
        | Js_string_literal
        | Js_regular_expn_literal
 ;
syntax Js_numeric_literal
        = Number
        | Js_hex_number
 ;
syntax Js_string_literal
        = Stringlit
        | Charlit
 ;
syntax Js_regular_expn_literal
        = 
        Js_regexp
 ;
syntax Js_array_literal
        = 
        "[" 
	    Js_array_element
	    ","
	   "]"
 ;
syntax Js_array_element
        = 
        Js_assignment_expn?
 ;
syntax Js_object_literal
        = 
        "{" 
	    Js_property_assignment
	    ","
	   ","? "}"
 ;
syntax Js_property_assignment
        = Js_property_name ":" Js_expn
        | "get" Js_property_name "(" ")" "{" Js_subscope "}"
        | "set" Js_property_name "(" Js_property_set_parameter ")" "{" Js_subscope "}"
 ;
syntax Js_property_name
        = Id
        | Js_string_literal
        | Number
 ;
syntax Js_property_set_parameter
        = 
        Id
 ;
syntax Js_statement
        = Js_compound_statement ";"?
        | Js_expression_statement ";"?
        | Js_if_statement ";"?
        | Js_for_statement ";"?
        | Js_while_statement ";"?
        | Js_break_statement ";"?
        | Js_continue_statement ";"?
        | Js_return_statement ";"?
        | Js_with_statement ";"?
        | Js_switch_statement ";"?
        | Js_do_statement ";"?
        | Js_try_catch_statement ";"?
        | Js_throw_statement ";"?
        | Js_debugger_statement ";"?
        | Js_empty_statement
 ;
syntax Js_empty_statement
        = 
        ";"
 ;
syntax Js_compound_statement
        = 
        "{" (NL IN) Js_subscope EX "}"
 ;
syntax Js_expression_statement
        = 
        Js_expn
 ;
syntax Js_if_statement
        = 
        "if" "(" Js_expn ")" Js_declaration_or_statement Js_else_clause?
 ;
syntax Js_else_clause
        = 
        "else" Js_declaration_or_statement
 ;
syntax Js_for_statement
        = "for" "(" 
		Js_declaration_or_statement_no_nl
		","
	       ";" Js_expn? ";" Js_expn? ")" Js_statement
        | "for" "each"? "(" Js_declaration_or_statement_no_nl "in" Js_expn ")" Js_statement
 ;
syntax Js_declaration_or_statement_no_nl
        = Js_declaration
        | Js_statement
 ;
syntax Js_while_statement
        = 
        "while" "(" Js_expn ")" Js_statement
 ;
syntax Js_break_statement
        = 
        "break" Id?
 ;
syntax Js_continue_statement
        = 
        "continue" Id?
 ;
syntax Js_return_statement
        = 
        "return" Js_expn?
 ;
syntax Js_with_statement
        = 
        "with" "(" Js_expn ")" Js_statement
 ;
syntax Js_switch_statement
        = 
        "switch" "(" Js_expn ")" "{" NL Js_case_clause* "}"
 ;
syntax Js_case_clause
        = 
        Js_case_clause_value (NL IN) Js_subscope EX
 ;
syntax Js_case_clause_value
        = "case" Js_expn ":"
        | "default" ":"
 ;
syntax Js_do_statement
        = 
        "do" Js_statement "while" "(" Js_expn ")"
 ;
syntax Js_try_catch_statement
        = 
        "try" Js_compound_statement Js_catch_clause? Js_finally_clause?
 ;
syntax Js_catch_clause
        = 
        NL "catch" "(" Id ")" Js_compound_statement
 ;
syntax Js_finally_clause
        = 
        NL "finally" Js_compound_statement
 ;
syntax Js_throw_statement
        = 
        "throw" Js_expn
 ;
syntax Js_debugger_statement
        = 
        "debugger"
 ;
