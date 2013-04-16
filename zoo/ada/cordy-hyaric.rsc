@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cordy_hyaric

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = 
        Compilation
 ;
syntax Identifier
        = Id
        | Wide_identifier
 ;
syntax Wide_identifier
        = 
        "[" Stringlit "]"
 ;
syntax Numeric_literal
        = Decimal_literal
        | Based_literal
 ;
syntax Character_literal
        = 
        Charlit
 ;
syntax String_literal
        = 
        Stringlit
 ;
syntax Pragma
        = "pragma" Id Blocksemi
        | "pragma" Id Pragma_arguments Blocksemi
 ;
syntax Pragma_arguments
        = 
        "(" 
	    Pragma_argument_association
	    ","
	   ")"
 ;
syntax Semi
        = 
        ";" NL
 ;
syntax Blocksemi
        = 
        ";" NL
 ;
syntax Unitsemi
        = 
        ";" (NL NL)
 ;
syntax Eol
        = 
        NL
 ;
syntax Blockeol
        = 
        NL
 ;
syntax Colon
        = 
        ":"
 ;
syntax Colon_equals
        = 
        ":="
 ;
syntax Arrow
        = 
        "=\>"
 ;
syntax Pragma_argument_association
        = 
        Identifier_arrow? Expression
 ;
syntax Identifier_arrow
        = 
        Identifier Arrow
 ;
syntax Basic_declaration
        = Type_declaration
        | Subtype_declaration
        | Object_declaration
        | Number_declaration
        | Subprogram_declaration
        | Abstract_subprogram_declaration
        | Null_procedure_declaration
        | Package_declaration
        | Renaming_declaration
        | Exception_declaration
        | Generic_declaration
        | Generic_instantiation
        | Pragma
 ;
syntax Defining_identifier
        = 
        Identifier
 ;
syntax Type_declaration
        = Full_type_declaration
        | Incomplete_type_declaration
        | Private_type_declaration
        | Private_extension_declaration
 ;
syntax Full_type_declaration
        = "type" Defining_identifier Known_discriminant_part? "is" Type_definition Blocksemi
        | Task_type_declaration
        | Protected_type_declaration
 ;
syntax Type_definition
        = Enumeration_type_definition
        | Integer_type_definition
        | Real_type_definition
        | Array_type_definition
        | Record_type_definition
        | Access_type_definition
        | Derived_type_definition
        | Interface_type_definition
 ;
syntax Subtype_declaration
        = 
        "subtype" Defining_identifier "is" Subtype_indication Semi
 ;
syntax Subtype_indication
        = 
        Null_exclusion? Subtype_mark Constraint?
 ;
syntax Subtype_mark
        = 
        Name
 ;
syntax Constraint
        = Scalar_constraint
        | Composite_constraint
 ;
syntax Scalar_constraint
        = Range_constraint
        | Digits_constraint
        | Delta_constraint
 ;
syntax Composite_constraint
        = Index_constraint
        | Discriminant_constraint
 ;
syntax Object_declaration
        = Defining_identifier_list Colon "aliased"? "constant"? Subtype_access_or_array_type_definition Object_declaration_expression? Semi
        | Single_task_declaration
        | Single_protected_declaration
 ;
syntax Subtype_access_or_array_type_definition
        = Subtype_indication
        | Access_definition
        | Array_type_definition
 ;
syntax Object_declaration_expression
        = 
        Colon_equals Expression
 ;
syntax Defining_identifier_list
        = 
        
	Defining_identifier
	","
      
 ;
syntax Number_declaration
        = 
        Defining_identifier_list Colon "constant" Colon_equals Expression Semi
 ;
syntax Derived_type_definition
        = 
        "abstract"? "limited"? "new" Subtype_indication Interface_and_record_extension_specification?
 ;
syntax Interface_and_record_extension_specification
        = "and" Interface_list Record_extension_part?
        | Record_extension_part
 ;
syntax Range_constraint
        = 
        "range" Range
 ;
syntax Range
        = Range_attribute_reference
        | Simple_expression SP ".." SP Simple_expression
 ;
syntax Enumeration_type_definition
        = 
        "(" 
	    Enumeration_literal_specification
	    ","
	   ")"
 ;
syntax Enumeration_literal_specification
        = Defining_identifier
        | Defining_character_literal
 ;
syntax Defining_character_literal
        = 
        Character_literal
 ;
syntax Integer_type_definition
        = Signed_integer_type_definition
        | Modular_type_definition
 ;
syntax Signed_integer_type_definition
        = 
        "range" Simple_expression SP ".." SP Simple_expression
 ;
syntax Modular_type_definition
        = 
        "mod" Expression
 ;
syntax Real_type_definition
        = Floating_point_definition
        | Fixed_point_definition
 ;
syntax Floating_point_definition
        = 
        "digits" Expression Real_range_specification?
 ;
syntax Real_range_specification
        = 
        "range" Simple_expression SP ".." SP Simple_expression
 ;
syntax Fixed_point_definition
        = Ordinary_fixed_point_definition
        | Decimal_fixed_point_definition
 ;
syntax Ordinary_fixed_point_definition
        = 
        "delta" Expression Real_range_specification
 ;
syntax Decimal_fixed_point_definition
        = 
        "delta" Expression "digits" Expression Real_range_specification?
 ;
syntax Digits_constraint
        = 
        "digits" Expression Range_constraint?
 ;
syntax Array_type_definition
        = Unconstrained_array_definition
        | Constrained_array_definition
 ;
syntax Unconstrained_array_definition
        = 
        "array" "(" 
	    Index_subtype_definition
	    ","
	   ")" "of" Component_definition
 ;
syntax Index_subtype_definition
        = 
        Subtype_mark "range" "\<\>"
 ;
syntax Constrained_array_definition
        = 
        "array" "(" 
	    Discrete_subtype_definition
	    ","
	   ")" "of" Component_definition
 ;
syntax Discrete_subtype_definition
        = Subtype_indication
        | Range
 ;
syntax Component_definition
        = "aliased"? Subtype_indication
        | "aliased"? Access_definition
 ;
syntax Index_constraint
        = 
        "(" 
	    Discrete_range
	    ","
	   ")"
 ;
syntax Discrete_range
        = Subtype_indication
        | Range
 ;
syntax Discriminant_part
        = Unknown_discriminant_part
        | Known_discriminant_part
 ;
syntax Unknown_discriminant_part
        = 
        "(" "\<\>" ")"
 ;
syntax Known_discriminant_part
        = 
        "(" Discriminant_specification_list ")"
 ;
syntax Discriminant_specification_list
        = 
        Discriminant_specification Semi_discriminant_specification*
 ;
syntax Semi_discriminant_specification
        = 
        ";" Discriminant_specification
 ;
syntax Discriminant_specification
        = Defining_identifier_list Colon Null_exclusion? Subtype_mark Discriminant_specification_default?
        | Defining_identifier_list Colon Access_definition Discriminant_specification_default?
 ;
syntax Discriminant_specification_default
        = 
        Colon_equals Default_expression
 ;
syntax Default_expression
        = 
        Expression
 ;
syntax Discriminant_constraint
        = 
        "(" 
	    Discriminant_association
	    ","
	   ")"
 ;
syntax Discriminant_association
        = 
        Discriminant_selector_name_arrow? Expression
 ;
syntax Discriminant_selector_name_arrow
        = 
        Selector_name Or_selector_name* Arrow
 ;
syntax Or_selector_name
        = 
        Orbar Selector_name
 ;
syntax Orbar
        = "|"
        | "!"
 ;
syntax Record_type_definition
        = 
        Record_type_definition_tagged? "limited"? Record_definition
 ;
syntax Record_type_definition_tagged
        = 
        "abstract"? "tagged"
 ;
syntax Record_definition
        = IN Eol "record" IN Eol Component_list EX "end" "record" EX
        | "null" "record"
 ;
syntax Component_list
        = Component_item+
        | Component_item* Variant_part
        | "null" Semi
 ;
syntax Component_item
        = Component_declaration
        | Aspect_clause
        | Pragma
 ;
syntax Component_declaration
        = 
        Defining_identifier_list Colon Component_definition Component_declaration_default? Semi
 ;
syntax Component_declaration_default
        = 
        Colon_equals Default_expression
 ;
syntax Variant_part
        = 
        "case" Direct_name "is" IN Blockeol Variant+ EX "end" "case" Blocksemi
 ;
syntax Variant
        = 
        "when" Discrete_choice_list Arrow Component_list
 ;
syntax Discrete_choice_list
        = 
        Discrete_choice Or_discrete_choice*
 ;
syntax Or_discrete_choice
        = 
        Orbar Discrete_choice
 ;
syntax Discrete_choice
        = Expression
        | Discrete_range
        | "others"
 ;
syntax Record_extension_part
        = 
        "with" Record_definition
 ;
syntax Abstract_subprogram_declaration
        = 
        Overriding_indicator? Subprogram_specification "is" "abstract" Blocksemi
 ;
syntax Interface_type_definition
        = 
        Interface_type_definition_modifier? "interface" Interface_type_definition_list?
 ;
syntax Interface_type_definition_modifier
        = "limited"
        | "task"
        | "protected"
        | "synchronized"
 ;
syntax Interface_type_definition_list
        = 
        "and" Interface_list
 ;
syntax Interface_list
        = Subtype_mark
        | Subtype_mark "and" Interface_list
 ;
syntax Access_type_definition
        = Null_exclusion? Access_to_object_definition
        | Null_exclusion? Access_to_subprogram_definition
 ;
syntax Access_to_object_definition
        = 
        "access" General_access_modifier? Subtype_indication
 ;
syntax General_access_modifier
        = "all"
        | "constant"
 ;
syntax Access_to_subprogram_definition
        = "access" "protected"? "procedure" Parameter_profile
        | "access" "protected"? "function" Parameter_and_result_profile
 ;
syntax Null_exclusion
        = 
        "not" "null"
 ;
syntax Access_definition
        = Null_exclusion? "access" "constant"? Subtype_mark
        | Null_exclusion? "access" "protected"? "procedure" Parameter_profile
        | Null_exclusion? "access" "protected"? "function" Parameter_and_result_profile
 ;
syntax Incomplete_type_declaration
        = 
        "type" Defining_identifier Discriminant_part? Incomplete_type_declaration_modifier? Blocksemi
 ;
syntax Incomplete_type_declaration_modifier
        = 
        "is" "tagged"
 ;
syntax Declarative_part
        = 
        Declarative_item*
 ;
syntax Declarative_item
        = Basic_declarative_item
        | Body
 ;
syntax Basic_declarative_item
        = Basic_declaration
        | Aspect_clause
        | Use_clause
 ;
syntax Body
        = Proper_body
        | Body_stub
 ;
syntax Proper_body
        = Subprogram_body
        | Package_body
        | Task_body
        | Protected_body
 ;
syntax Name
        = Direct_name Name_component*
        | Character_literal
 ;
syntax Name_component
        = Explicit_dereference_component
        | Indexed_slice_type_conv_or_function_call_component
        | Selected_component_component
        | Attribute_reference_component
 ;
syntax Indexed_slice_type_conv_or_function_call_component
        = 
        "(" 
	    Index_or_parameter_value
	    ","
	   ")"
 ;
syntax Index_or_parameter_value
        = Expression
        | Discrete_range
        | Parameter_association
 ;
syntax Direct_name
        = Identifier
        | Operator_symbol
 ;
syntax Prefix
        = 
        Name
 ;
syntax Explicit_dereference
        = 
        Name Explicit_dereference_component
 ;
syntax Explicit_dereference_component
        = 
        "." "all"
 ;
syntax Implicit_dereference
        = 
        Name
 ;
syntax Indexed_component
        = 
        Prefix Indexed_component_component
 ;
syntax Indexed_component_component
        = 
        "(" 
	    Index_expression
	    ","
	   ")"
 ;
syntax Index_expression
        = 
        Expression
 ;
syntax Slice
        = 
        Prefix Slice_component
 ;
syntax Slice_component
        = 
        "(" Discrete_range ")"
 ;
syntax Selected_component
        = 
        Prefix Selected_component_component
 ;
syntax Selected_component_component
        = 
        "." Selector_name
 ;
syntax Selector_name
        = Identifier
        | Character_literal
        | Operator_symbol
 ;
syntax Attribute_reference
        = 
        Prefix Attribute_reference_component
 ;
syntax Attribute_reference_component
        = 
        SPOFF "'" Attribute_designator SPON
 ;
syntax Attribute_designator
        = Identifier Attribute_designator_expression?
        | "access"
        | "delta"
        | "digits"
 ;
syntax Attribute_designator_expression
        = 
        "(" Expression ")"
 ;
syntax Range_attribute_reference
        = 
        Prefix SPOFF "'" Range_attribute_designator
 ;
syntax Range_attribute_designator
        = 
        "range" SPON Range_attribute_designator_expression?
 ;
syntax Range_attribute_designator_expression
        = 
        "(" Expression ")"
 ;
syntax Aggregate
        = Record_aggregate
        | Extension_aggregate
        | Array_aggregate
 ;
syntax Record_aggregate
        = 
        "(" Record_component_association_list ")"
 ;
syntax Record_component_association_list
        = 
	    Record_component_association
	    ","
	  
        | "null" "record"
 ;
syntax Record_component_association
        = Expression
        | Component_choice_list Arrow Expression_or_null
 ;
syntax Component_choice_list
        = Selector_name Or_selector_name*
        | "others"
 ;
syntax Extension_aggregate
        = 
        "(" Ancestor_part "with" Record_component_association_list ")"
 ;
syntax Ancestor_part
        = Expression
        | Subtype_mark
 ;
syntax Array_aggregate
        = Positional_array_aggregate
        | Named_array_aggregate
 ;
syntax Positional_array_aggregate
        = 
        "(" 
	    Index_expression
	    ","
	   Comma_others* ")"
 ;
syntax Comma_others
        = 
        "," "others" Arrow Expression_or_null
 ;
syntax Named_array_aggregate
        = 
        "(" 
	    Array_component_association
	    ","
	   ")"
 ;
syntax Array_component_association
        = 
        Discrete_choice_list Arrow Expression_or_null
 ;
syntax Expression_or_null
        = Expression
        | "\<\>"
 ;
syntax Expression
        = 
        Relation And_or_xor_relation*
 ;
syntax And_or_xor_relation
        = 
        And_or_xor Relation
 ;
syntax And_or_xor
        = "and" "then"?
        | "or" "else"?
        | "xor"
 ;
syntax Relation
        = Simple_expression Relational_operator_simple_expression?
        | Simple_expression "not"? "in" Range
        | Simple_expression "not"? "in" Subtype_mark
 ;
syntax Relational_operator_simple_expression
        = 
        Relational_operator Simple_expression
 ;
syntax Simple_expression
        = 
        Unary_adding_operator? Term Binary_adding_operator_term*
 ;
syntax Binary_adding_operator_term
        = 
        Binary_adding_operator Term
 ;
syntax Term
        = 
        Factor Multiplying_operator_factor*
 ;
syntax Multiplying_operator_factor
        = 
        Multiplying_operator Factor
 ;
syntax Factor
        = Primary Starstar_primary?
        | "abs" Primary
        | "not" Primary
 ;
syntax Starstar_primary
        = 
        "**" Primary
 ;
syntax Primary
        = Numeric_literal
        | "null"
        | String_literal
        | Aggregate
        | Name
        | Qualified_expression
        | Allocator
        | "(" Expression ")"
        | If_expression
 ;
syntax If_expression
        = 
        "if" Expression "then" Expression Elsif_expression* Else_expression?
 ;
syntax Elsif_expression
        = 
        "elsif" Expression "then" Expression
 ;
syntax Else_expression
        = 
        "else" Expression
 ;
syntax Logical_operator
        = "and"
        | "or"
        | "xor"
 ;
syntax Relational_operator
        = "="
        | "/="
        | "\<"
        | "\<="
        | "\>"
        | "\>="
 ;
syntax Binary_adding_operator
        = "+"
        | "-"
        | (IN NL) "&" EX
 ;
syntax Unary_adding_operator
        = "+"
        | "-"
 ;
syntax Multiplying_operator
        = "*"
        | "/"
        | "mod"
        | "rem"
 ;
syntax Highest_precedence_operator
        = "**"
        | "abs"
        | "not"
 ;
syntax Type_conversion
        = 
        Subtype_mark "(" Expression ")"
 ;
syntax Qualified_expression
        = 
        Subtype_mark SPOFF "'" Expression_or_aggregate
 ;
syntax Expression_or_aggregate
        = "(" SPON Expression ")"
        | SPON Aggregate
 ;
syntax Allocator
        = "new" Subtype_indication
        | "new" Qualified_expression
 ;
syntax Sequence_of_statements
        = 
        Statement+
 ;
syntax Statement
        = 
        Label* Unlabeled_statement
 ;
syntax Unlabeled_statement
        = Simple_statement
        | Compound_statement
 ;
syntax Simple_statement
        = Null_statement
        | Procedure_call_statement
        | Assignment_statement
        | Exit_statement
        | Goto_statement
        | Simple_return_statement
        | Entry_call_statement
        | Requeue_statement
        | Delay_statement
        | Abort_statement
        | Raise_statement
        | Code_statement
        | Pragma
 ;
syntax Compound_statement
        = If_statement
        | Case_statement
        | Loop_statement
        | Block_statement
        | Extended_return_statement
        | Accept_statement
        | Select_statement
 ;
syntax Null_statement
        = 
        "null" Semi
 ;
syntax Label
        = 
        "\<\<" Statement_identifier "\>\>"
 ;
syntax Statement_identifier
        = 
        Direct_name
 ;
syntax Assignment_statement
        = 
        Name Colon_equals Expression Semi
 ;
syntax If_statement
        = 
        "if" Condition "then" IN Eol Sequence_of_statements If_statement_elsif* If_statement_else? EX "end" "if" Semi
 ;
syntax If_statement_elsif
        = 
        EX "elsif" Condition "then" IN Eol Sequence_of_statements
 ;
syntax If_statement_else
        = 
        EX "else" IN Eol Sequence_of_statements
 ;
syntax Condition
        = 
        Expression
 ;
syntax Case_statement
        = 
        "case" Expression "is" IN Blockeol Case_statement_alternative+ EX "end" "case" Blocksemi
 ;
syntax Case_statement_alternative
        = 
        "when" Discrete_choice_list Arrow Sequence_of_statements
 ;
syntax Loop_statement
        = 
        Loop_statement_identifier? Iteration_scheme? "loop" IN Eol Sequence_of_statements EX "end" "loop" Identifier? Blocksemi
 ;
syntax Loop_statement_identifier
        = 
        Statement_identifier Colon
 ;
syntax Iteration_scheme
        = "while" Condition
        | "for" Loop_parameter_specification
 ;
syntax Loop_parameter_specification
        = 
        Defining_identifier "in" "reverse"? Discrete_subtype_definition
 ;
syntax Block_statement
        = 
        Block_statement_identifier_colon? Declare_declarative_part? "begin" IN Eol Handled_sequence_of_statements EX "end" Identifier? Unitsemi
 ;
syntax Block_statement_identifier_colon
        = 
        Statement_identifier Colon
 ;
syntax Declare_declarative_part
        = 
        "declare" IN Eol Declarative_part EX
 ;
syntax Exit_statement
        = 
        "exit" Name? Exit_statement_when_condition? Semi
 ;
syntax Exit_statement_when_condition
        = 
        "when" Condition
 ;
syntax Goto_statement
        = 
        "goto" Name Semi
 ;
syntax Subprogram_declaration
        = 
        Overriding_indicator? Subprogram_specification Blocksemi
 ;
syntax Subprogram_specification
        = Procedure_specification
        | Function_specification
 ;
syntax Procedure_specification
        = 
        "procedure" Defining_program_unit_name Parameter_profile
 ;
syntax Function_specification
        = 
        "function" Defining_designator Parameter_and_result_profile
 ;
syntax Designator
        = Designator_parent_unit_name? Identifier
        | Operator_symbol
 ;
syntax Designator_parent_unit_name
        = 
        Parent_unit_name "."
 ;
syntax Defining_designator
        = Defining_program_unit_name
        | Defining_operator_symbol
 ;
syntax Defining_program_unit_name
        = 
        Defining_program_unit_name_parent? Defining_identifier
 ;
syntax Defining_program_unit_name_parent
        = 
        Parent_unit_name "."
 ;
syntax Operator_symbol
        = 
        String_literal
 ;
syntax Defining_operator_symbol
        = 
        Operator_symbol
 ;
syntax Parameter_profile
        = 
        Formal_part?
 ;
syntax Parameter_and_result_profile
        = 
        Formal_part? "return" Subtype_or_access_definition
 ;
syntax Subtype_or_access_definition
        = Null_exclusion? Subtype_mark
        | Access_definition
 ;
syntax Formal_part
        = 
        "(" Parameter_specification Semi_parameter_specification* ")"
 ;
syntax Semi_parameter_specification
        = 
        ";" Parameter_specification
 ;
syntax Parameter_specification
        = 
        Defining_identifier_list Colon Parameter_type_specification
 ;
syntax Parameter_type_specification
        = Mode Null_exclusion? Subtype_mark Parameter_specification_default?
        | Access_definition Parameter_specification_default?
 ;
syntax Parameter_specification_default
        = 
        Colon_equals Default_expression
 ;
syntax Mode
        = "in"?
        | "in" "out"
        | "out"
 ;
syntax Subprogram_body
        = 
        NL Overriding_indicator? Subprogram_specification "is" IN Blockeol Declarative_part EX "begin" IN Eol Handled_sequence_of_statements EX "end" Designator? Unitsemi
 ;
syntax Procedure_call_statement
        = 
        Prefix Actual_parameter_part? Semi
 ;
syntax Function_call
        = 
        Prefix Function_call_component
 ;
syntax Function_call_component
        = 
        Actual_parameter_part
 ;
syntax Actual_parameter_part
        = 
        "(" 
	    Parameter_association
	    ","
	   ")"
 ;
syntax Parameter_association
        = 
        Parameter_association_selector_name Explicit_actual_parameter
 ;
syntax Parameter_association_selector_name
        = 
        Selector_name Arrow
 ;
syntax Explicit_actual_parameter
        = 
        Expression
 ;
syntax Simple_return_statement
        = 
        "return" Expression? Semi
 ;
syntax Extended_return_statement
        = 
        "return" Defining_identifier Colon "aliased"? Return_subtype_indication Extended_return_statement_expression? Extended_return_statement_do? Unitsemi
 ;
syntax Extended_return_statement_expression
        = 
        Colon_equals Expression
 ;
syntax Extended_return_statement_do
        = 
        "do" IN Eol Handled_sequence_of_statements EX "end" "return"
 ;
syntax Return_subtype_indication
        = Subtype_indication
        | Access_definition
 ;
syntax Null_procedure_declaration
        = 
        Overriding_indicator? Procedure_specification "is" "null" Blocksemi
 ;
syntax Package_declaration
        = 
        Package_specification Unitsemi
 ;
syntax Package_specification
        = 
        NL "package" Defining_program_unit_name "is" IN Blockeol Basic_declarative_item* EX Package_specification_private? "end" Package_specification_identifier?
 ;
syntax Package_specification_private
        = 
        "private" IN Eol Basic_declarative_item* EX
 ;
syntax Package_specification_identifier
        = 
        Parent_name_dot? Identifier
 ;
syntax Parent_name_dot
        = 
        Parent_unit_name "."
 ;
syntax Package_body
        = 
        NL "package" "body" Defining_program_unit_name "is" IN Blockeol Declarative_part EX Package_body_statements? "end" Package_body_identifier? Unitsemi
 ;
syntax Package_body_statements
        = 
        "begin" IN Eol Handled_sequence_of_statements EX
 ;
syntax Package_body_identifier
        = 
        Parent_name_dot? Identifier
 ;
syntax Private_type_declaration
        = 
        "type" Defining_identifier Discriminant_part? "is" Blockeol Private_type_declaration_tagged? "limited"? "private" Blocksemi
 ;
syntax Private_type_declaration_tagged
        = 
        "abstract"? "tagged"
 ;
syntax Private_extension_declaration
        = 
        "type" Defining_identifier Discriminant_part? "is" Blockeol "abstract"? Private_extension_declaration_modifier? "new" Subtype_indication Private_extension_declaration_interface_list? "with" "private" Blocksemi
 ;
syntax Private_extension_declaration_modifier
        = "limited"
        | "synchronized"
 ;
syntax Private_extension_declaration_interface_list
        = 
        "and" Interface_list
 ;
syntax Overriding_indicator
        = 
        "not"? "overriding"
 ;
syntax Use_clause
        = Use_package_clause
        | Use_type_clause
 ;
syntax Use_package_clause
        = 
        "use" 
	    Used_name
	    ","
	   Semi
 ;
syntax Used_name
        = 
        Name
 ;
syntax Use_type_clause
        = 
        "use" "type" 
	    Used_subtype_mark
	    ","
	   Semi
 ;
syntax Used_subtype_mark
        = 
        Subtype_mark
 ;
syntax Renaming_declaration
        = Object_renaming_declaration
        | Exception_renaming_declaration
        | Package_renaming_declaration
        | Subprogram_renaming_declaration
        | Generic_renaming_declaration
 ;
syntax Object_renaming_declaration
        = Defining_identifier Colon Null_exclusion? Subtype_mark "renames" Name Semi
        | Defining_identifier Colon Access_definition "renames" Name Semi
 ;
syntax Exception_renaming_declaration
        = 
        Defining_identifier Colon "exception" "renames" Name Semi
 ;
syntax Package_renaming_declaration
        = 
        NL "package" Defining_program_unit_name "renames" Name Blocksemi
 ;
syntax Subprogram_renaming_declaration
        = 
        Overriding_indicator? Subprogram_specification "renames" Name Blocksemi
 ;
syntax Generic_renaming_declaration
        = "generic" "package" Defining_program_unit_name "renames" Name Blocksemi
        | "generic" "procedure" Defining_program_unit_name "renames" Name Blocksemi
        | "generic" "function" Defining_program_unit_name "renames" Name Blocksemi
 ;
syntax Task_type_declaration
        = 
        "task" "type" Defining_identifier Known_discriminant_part? Task_type_declaration_definition? Blocksemi
 ;
syntax Task_type_declaration_definition
        = 
        "is" IN Blockeol Task_type_declaration_definition_interface_list? Task_definition EX
 ;
syntax Task_type_declaration_definition_interface_list
        = 
        "new" Interface_list "with"
 ;
syntax Single_task_declaration
        = 
        "task" Defining_identifier Single_task_declaration_definition? Unitsemi
 ;
syntax Single_task_declaration_definition
        = 
        "is" IN Blockeol Single_task_declaration_definition_interface_list? EX Task_definition
 ;
syntax Single_task_declaration_definition_interface_list
        = 
        "new" Interface_list "with"
 ;
syntax Task_definition
        = 
        IN Task_item* Task_definition_private? EX "end" Identifier?
 ;
syntax Task_definition_private
        = 
        "private" IN Eol Task_item* EX
 ;
syntax Task_item
        = Entry_declaration
        | Aspect_clause
        | Pragma
 ;
syntax Task_body
        = 
        NL "task" "body" Defining_identifier "is" IN Blockeol Declarative_part EX "begin" IN Eol Handled_sequence_of_statements EX "end" Identifier? Unitsemi
 ;
syntax Protected_type_declaration
        = 
        NL "protected" "type" Defining_identifier Known_discriminant_part? "is" Protected_type_declaration_interface_list? Eol Protected_definition Unitsemi
 ;
syntax Protected_type_declaration_interface_list
        = 
        "new" Interface_list "with"
 ;
syntax Single_protected_declaration
        = 
        "protected" Defining_identifier "is" Blockeol Single_protected_declaration_interface_list? Protected_definition Unitsemi
 ;
syntax Single_protected_declaration_interface_list
        = 
        "new" Interface_list "with"
 ;
syntax Protected_definition
        = 
        IN Protected_operation_declaration* Protected_definition_private? EX "end" Identifier?
 ;
syntax Protected_definition_private
        = 
        EX "private" IN Eol Protected_element_declaration*
 ;
syntax Protected_operation_declaration
        = Subprogram_declaration
        | Entry_declaration
        | Aspect_clause
        | Pragma
 ;
syntax Protected_element_declaration
        = Protected_operation_declaration
        | Component_declaration
 ;
syntax Protected_body
        = 
        "protected" "body" Defining_identifier "is" IN Blockeol Protected_operation_item* EX "end" Identifier? Unitsemi
 ;
syntax Protected_operation_item
        = Subprogram_declaration
        | Subprogram_body
        | Entry_body
        | Aspect_clause
 ;
syntax Entry_declaration
        = 
        Overriding_indicator? "entry" Defining_identifier Entry_declaration_subtype? Parameter_profile Blocksemi
 ;
syntax Entry_declaration_subtype
        = 
        "(" Discrete_subtype_definition ")"
 ;
syntax Accept_statement
        = 
        "accept" Direct_name Accept_statement_entry_index? Parameter_profile Accept_statement_statements? Unitsemi
 ;
syntax Accept_statement_entry_index
        = 
        "(" Entry_index ")"
 ;
syntax Accept_statement_statements
        = 
        "do" IN Eol Handled_sequence_of_statements EX "end" Identifier?
 ;
syntax Entry_index
        = 
        Expression
 ;
syntax Entry_body
        = 
        NL "entry" Defining_identifier Entry_body_formal_part Entry_barrier "is" IN Blockeol Declarative_part EX "begin" IN Eol Handled_sequence_of_statements EX "end" Identifier? Unitsemi
 ;
syntax Entry_body_formal_part
        = 
        Entry_body_formal_part_specification? Parameter_profile
 ;
syntax Entry_body_formal_part_specification
        = 
        "(" Entry_index_specification ")"
 ;
syntax Entry_barrier
        = 
        "when" Condition
 ;
syntax Entry_index_specification
        = 
        "for" Defining_identifier "in" Discrete_subtype_definition
 ;
syntax Entry_call_statement
        = 
        Name Actual_parameter_part? Semi
 ;
syntax Requeue_statement
        = 
        "requeue" Name Requeue_statement_with_abort? Semi
 ;
syntax Requeue_statement_with_abort
        = 
        "with" "abort"
 ;
syntax Delay_statement
        = Delay_until_statement
        | Delay_relative_statement
 ;
syntax Delay_until_statement
        = 
        "delay" "until" Expression Semi
 ;
syntax Delay_relative_statement
        = 
        "delay" Expression Semi
 ;
syntax Select_statement
        = Selective_accept
        | Timed_entry_call
        | Conditional_entry_call
        | Asynchronous_select
 ;
syntax Selective_accept
        = 
        "select" IN Eol Guard? Select_alternative Selective_accept_or_alternative* Selective_accept_else_alternative? EX "end" "select" Unitsemi
 ;
syntax Selective_accept_or_alternative
        = 
        EX "or" IN Eol Guard? Select_alternative
 ;
syntax Selective_accept_else_alternative
        = 
        "else" Sequence_of_statements
 ;
syntax Guard
        = 
        "when" Condition Arrow
 ;
syntax Select_alternative
        = Accept_alternative
        | Delay_alternative
        | Terminate_alternative
 ;
syntax Accept_alternative
        = 
        Accept_statement Sequence_of_statements?
 ;
syntax Delay_alternative
        = 
        Delay_statement Sequence_of_statements?
 ;
syntax Terminate_alternative
        = 
        "terminate" Semi
 ;
syntax Timed_entry_call
        = 
        "select" IN Eol Entry_call_alternative EX "or" IN Eol Delay_alternative EX "end" "select" Unitsemi
 ;
syntax Entry_call_alternative
        = 
        Procedure_or_entry_call Sequence_of_statements?
 ;
syntax Procedure_or_entry_call
        = Procedure_call_statement
        | Entry_call_statement
 ;
syntax Conditional_entry_call
        = 
        "select" IN Eol Entry_call_alternative EX "else" IN Eol Sequence_of_statements EX "end" "select" Unitsemi
 ;
syntax Asynchronous_select
        = 
        "select" IN Eol Triggering_alternative (EX EX) "then" "abort" IN Eol Abortable_part EX "end" "select" Unitsemi
 ;
syntax Triggering_alternative
        = 
        Triggering_statement Sequence_of_statements?
 ;
syntax Triggering_statement
        = Procedure_or_entry_call
        | Delay_statement
 ;
syntax Abortable_part
        = 
        Sequence_of_statements
 ;
syntax Abort_statement
        = 
        "abort" 
	    Abort_name
	    ","
	   Semi
 ;
syntax Abort_name
        = 
        Name
 ;
syntax Compilation
        = 
        Compilation_unit*
 ;
syntax Compilation_unit
        = Context_clause Library_item
        | Context_clause Subunit
        | Pragma
 ;
syntax Library_item
        = "private"? Library_unit_declaration
        | Library_unit_body
        | "private"? Library_unit_renaming_declaration
 ;
syntax Library_unit_declaration
        = Subprogram_declaration
        | Package_declaration
        | Generic_declaration
        | Generic_instantiation
        | Pragma
 ;
syntax Library_unit_renaming_declaration
        = Package_renaming_declaration
        | Generic_renaming_declaration
        | Subprogram_renaming_declaration
        | Pragma
 ;
syntax Library_unit_body
        = Subprogram_body
        | Package_body
 ;
syntax Parent_unit_name
        = 
        Name
 ;
syntax Context_clause
        = 
        Context_item*
 ;
syntax Context_item
        = With_clause
        | Use_clause
 ;
syntax With_clause
        = Limited_with_clause
        | Nonlimited_with_clause
 ;
syntax Limited_with_clause
        = 
        "limited" "private"? "with" 
	    With_name
	    ","
	   Semi
 ;
syntax With_name
        = 
        Name
 ;
syntax Nonlimited_with_clause
        = 
        "private"? "with" 
	    With_name
	    ","
	   Semi
 ;
syntax Body_stub
        = Subprogram_body_stub
        | Package_body_stub
        | Task_body_stub
        | Protected_body_stub
 ;
syntax Subprogram_body_stub
        = 
        Overriding_indicator? Subprogram_specification "is" "separate" Blocksemi
 ;
syntax Package_body_stub
        = 
        NL "package" "body" Defining_identifier "is" "separate" Blocksemi
 ;
syntax Task_body_stub
        = 
        "task" "body" Defining_identifier "is" "separate" Blocksemi
 ;
syntax Protected_body_stub
        = 
        "protected" "body" Defining_identifier "is" "separate" Blocksemi
 ;
syntax Subunit
        = 
        "separate" "(" Parent_unit_name ")" Proper_body
 ;
syntax Exception_declaration
        = 
        Defining_identifier_list Colon "exception" Semi
 ;
syntax Handled_sequence_of_statements
        = 
        Sequence_of_statements Handled_sequence_of_statements_exception?
 ;
syntax Handled_sequence_of_statements_exception
        = 
        "exception" IN Eol Exception_handler+ EX
 ;
syntax Exception_handler
        = 
        "when" Exception_handler_specification? Exception_choice Or_exception_choice* Arrow Sequence_of_statements
 ;
syntax Exception_handler_specification
        = 
        Choice_parameter_specification Colon
 ;
syntax Or_exception_choice
        = 
        Orbar Exception_choice
 ;
syntax Choice_parameter_specification
        = 
        Defining_identifier
 ;
syntax Exception_choice
        = Name
        | "others"
 ;
syntax Raise_statement
        = "raise" Semi
        | "raise" Name Raise_statement_expression? Semi
 ;
syntax Raise_statement_expression
        = 
        "with" Expression
 ;
syntax Generic_declaration
        = Generic_subprogram_declaration
        | Generic_package_declaration
 ;
syntax Generic_subprogram_declaration
        = 
        Generic_formal_part Subprogram_specification Blocksemi
 ;
syntax Generic_package_declaration
        = 
        Generic_formal_part Package_specification Blocksemi
 ;
syntax Generic_formal_part
        = 
        "generic" Generic_formal_parameter_declaration_or_use_clause*
 ;
syntax Generic_formal_parameter_declaration_or_use_clause
        = Generic_formal_parameter_declaration
        | Use_clause
        | Pragma
 ;
syntax Generic_formal_parameter_declaration
        = Formal_object_declaration
        | Formal_type_declaration
        | Formal_subprogram_declaration
        | Formal_package_declaration
 ;
syntax Generic_instantiation
        = "package" Defining_program_unit_name "is" Generic_instantiation_clause
        | Overriding_indicator? "procedure" Defining_program_unit_name "is" Generic_instantiation_clause
        | Overriding_indicator? "function" Defining_designator "is" Generic_instantiation_clause
 ;
syntax Generic_instantiation_clause
        = 
        "new" Name Generic_actual_part? Blocksemi
 ;
syntax Generic_actual_part
        = 
        "(" 
	    Generic_association
	    ","
	   ")"
 ;
syntax Generic_association
        = 
        Generic_association_selector_name? Explicit_generic_actual_parameter
 ;
syntax Generic_association_selector_name
        = 
        Selector_name Arrow
 ;
syntax Explicit_generic_actual_parameter
        = Expression
        | Name
        | Subtype_mark
 ;
syntax Formal_object_declaration
        = Defining_identifier_list Colon Mode Null_exclusion? Subtype_mark Formal_object_declaration_default? Semi
        | Defining_identifier_list Colon Mode Access_definition Formal_object_declaration_default? Semi
 ;
syntax Formal_object_declaration_default
        = 
        Colon_equals Default_expression
 ;
syntax Formal_type_declaration
        = 
        "type" Defining_identifier Discriminant_part? "is" Formal_type_definition Blocksemi
 ;
syntax Formal_type_definition
        = Formal_private_type_definition
        | Formal_derived_type_definition
        | Formal_discrete_type_definition
        | Formal_signed_integer_type_definition
        | Formal_modular_type_definition
        | Formal_floating_point_definition
        | Formal_ordinary_fixed_point_definition
        | Formal_decimal_fixed_point_definition
        | Formal_array_type_definition
        | Formal_access_type_definition
        | Formal_interface_type_definition
 ;
syntax Formal_private_type_definition
        = 
        Formal_private_type_definition_tagged? "limited"? "private"
 ;
syntax Formal_private_type_definition_tagged
        = 
        "abstract"? "tagged"
 ;
syntax Formal_derived_type_definition
        = 
        "abstract"? Formal_derived_type_definition_modifier? "new" Subtype_mark Formal_derived_type_definition_interface_list?
 ;
syntax Formal_derived_type_definition_modifier
        = "limited"
        | "synchronized"
 ;
syntax Formal_derived_type_definition_interface_list
        = 
        And_interface_list? "with" "private"
 ;
syntax And_interface_list
        = 
        "and" Interface_list
 ;
syntax Formal_discrete_type_definition
        = 
        "(" "\<\>" ")"
 ;
syntax Formal_signed_integer_type_definition
        = 
        "range" "\<\>"
 ;
syntax Formal_modular_type_definition
        = 
        "mod" "\<\>"
 ;
syntax Formal_floating_point_definition
        = 
        "digits" "\<\>"
 ;
syntax Formal_ordinary_fixed_point_definition
        = 
        "delta" "\<\>"
 ;
syntax Formal_decimal_fixed_point_definition
        = 
        "delta" "\<\>" "digits" "\<\>"
 ;
syntax Formal_array_type_definition
        = 
        Array_type_definition
 ;
syntax Formal_access_type_definition
        = 
        Access_type_definition
 ;
syntax Formal_interface_type_definition
        = 
        Interface_type_definition
 ;
syntax Formal_subprogram_declaration
        = Formal_concrete_subprogram_declaration
        | Formal_abstract_subprogram_declaration
 ;
syntax Formal_concrete_subprogram_declaration
        = 
        "with" Subprogram_specification Formal_concrete_subprogram_declaration_default? Semi
 ;
syntax Formal_concrete_subprogram_declaration_default
        = 
        "is" Subprogram_default
 ;
syntax Formal_abstract_subprogram_declaration
        = 
        "with" Subprogram_specification "is" "abstract" Subprogram_default? Semi
 ;
syntax Subprogram_default
        = Default_name
        | "\<\>"
        | "null"
 ;
syntax Default_name
        = 
        Name
 ;
syntax Formal_package_declaration
        = 
        "with" "package" Defining_identifier "is" "new" Name Formal_package_actual_part Semi
 ;
syntax Formal_package_actual_part
        = "(" Others_arrow? "\<\>" ")"
        | Generic_actual_part?
        | "(" 
		Formal_package_association
		","
	       Comma_others_arrow_null? ")"
 ;
syntax Others_arrow
        = 
        "others" Arrow
 ;
syntax Comma_others_arrow_null
        = 
        "," "others" Arrow "\<\>"
 ;
syntax Formal_package_association
        = Generic_association
        | Selector_name Arrow "\<\>"
 ;
syntax Aspect_clause
        = Attribute_definition_clause
        | Enumeration_representation_clause
        | Record_representation_clause
        | At_clause
 ;
syntax Local_name
        = Direct_name
        | Direct_name SPOFF "'" Attribute_designator SPON
 ;
syntax Library_unit_name
        = 
        Name
 ;
syntax Attribute_definition_clause
        = 
        "for" Local_name SPOFF "'" Attribute_designator SPON "use" Expression Blocksemi
 ;
syntax Enumeration_representation_clause
        = 
        "for" Local_name "use" Enumeration_aggregate Blocksemi
 ;
syntax Enumeration_aggregate
        = 
        Array_aggregate
 ;
syntax Record_representation_clause
        = 
        "for" Local_name "use" IN Eol "record" Mod_clause? IN Eol Component_clause* EX "end" "record" Blocksemi EX
 ;
syntax Component_clause
        = 
        Local_name "at" Position "range" First_bit SP ".." SP Last_bit Semi
 ;
syntax Position
        = 
        Expression
 ;
syntax First_bit
        = 
        Simple_expression
 ;
syntax Last_bit
        = 
        Simple_expression
 ;
syntax Code_statement
        = 
        Qualified_expression Semi
 ;
syntax Restriction
        = 
        Identifier Arrow_restriction_parameter_argument?
 ;
syntax Arrow_restriction_parameter_argument
        = 
        Arrow Restriction_parameter_argument
 ;
syntax Restriction_parameter_argument
        = 
        Expression
 ;
syntax Delta_constraint
        = 
        "delta" Expression Range_constraint?
 ;
syntax At_clause
        = 
        "for" Direct_name "use" "at" Expression Semi
 ;
syntax Mod_clause
        = 
        "at" "mod" Expression Semi
 ;

public void main()
{
	registerLanguage("Cordy_hyaric", "ext", program(str input, loc org) {return parse(#program, input, org);});
	println("Language registered.");
}
