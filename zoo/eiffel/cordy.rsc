@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cordy

syntax Program
        = 
        Class_declaration*
 ;
syntax Class_declaration
        = 
        Indexing? NL Class_header Formal_generics? (NL IN) Obsolete? Inheritance? Creators? Features? Invariant? EX "end"
 ;
syntax Indexing
        = 
        NL "indexing" Index_list
 ;
syntax Index_list
        = 
        (NL IN) Index_clause_Separator* EX
 ;
syntax Index_clause_Separator
        = 
        Index_clause Separator
 ;
syntax Index_clause
        = 
        Index? Index_terms
 ;
syntax Index
        = 
        Identifier ":"
 ;
syntax Index_terms
        = 
        
	Index_value
	","
      
 ;
syntax Index_value
        = Identifier+
        | Manifest_constant
 ;
syntax Class_header
        = 
        Header_mark? "class" Class_name
 ;
syntax Header_mark
        = "deferred"
        | "expanded"
 ;
syntax Class_name
        = 
        Identifier
 ;
syntax Formal_generics
        = 
        "[" Formal_generic_list "]"
 ;
syntax Formal_generic_list
        = 
        
	Formal_generic
	","
      
 ;
syntax Formal_generic
        = 
        Formal_generic_name Constraint?
 ;
syntax Formal_generic_name
        = 
        Identifier
 ;
syntax Constraint
        = 
        "-\>" Restricted_type
 ;
syntax Obsolete
        = 
        "obsolete" Message NL
 ;
syntax Message
        = 
        Manifest_string
 ;
syntax Features
        = 
        Feature_Feature_clause+
 ;
syntax Feature_Feature_clause
        = 
        NL "feature" Clients? Feature_clause
 ;
syntax Feature_clause
        = 
        Header_comment? Feature_declaration_list
 ;
syntax Feature_declaration_list
        = 
        (IN NL) Feature_declaration_Separator* EX
 ;
syntax Feature_declaration_Separator
        = Feature_declaration Separator
        | Routine_feature_declaration Separator
 ;
syntax Header_comment
        = 
        Comment
 ;
syntax Feature_declaration
        = 
        New_feature_list Declaration_body
 ;
syntax Declaration_body
        = 
        Formal_arguments? Type_mark? Is_Constant?
 ;
syntax Is_Constant
        = 
        "is" Feature_value
 ;
syntax Feature_value
        = Manifest_constant
        | Unique
 ;
syntax Routine_feature_declaration
        = 
        NL New_feature_list Routine_declaration_body
 ;
syntax Routine_declaration_body
        = 
        Formal_arguments? Type_mark? Is_Routine?
 ;
syntax Is_Routine
        = 
        "is" NL Routine
 ;
syntax New_feature_list
        = 
        New_feature+
 ;
syntax New_feature
        = 
        "frozen"? Feature_name
 ;
syntax Feature_name
        = Identifier
        | Prefix
        | Infix
 ;
syntax Prefix
        = 
        "prefix" Prefix_name
 ;
syntax Infix
        = 
        "infix" Infix_name
 ;
syntax Prefix_name
        = 
        Manifest_string
 ;
syntax Infix_name
        = 
        Manifest_string
 ;
syntax Unary
        = "not"
        | "+"
        | "-"
 ;
syntax Binary
        = "+"
        | "-"
        | "*"
        | "/"
        | "\<"
        | "\>"
        | "\<="
        | "\>="
        | "//"
        | "\\\\"
        | "^"
        | "and"
        | "or"
        | "xor"
        | "and" "then"
        | "or" "else"
        | "implies"
 ;
syntax Inheritance
        = 
        "inherit" (NL IN) Parent_list EX
 ;
syntax Parent_list
        = 
        Parent_Separator*
 ;
syntax Parent_Separator
        = 
        Parent Separator
 ;
syntax Parent
        = 
        Restricted_class_type Feature_adaptation?
 ;
syntax Feature_adaptation
        = 
        (NL IN) Rename? New_exports? Undefine? Redefine? Select? EX "end"
 ;
syntax Rename
        = 
        "rename" Rename_list NL
 ;
syntax Rename_list
        = 
        
	Rename_pair
	","
      
 ;
syntax Rename_pair
        = 
        Feature_name "as" Feature_name
 ;
syntax Clients
        = 
        "{" Class_list "}"
 ;
syntax Class_list
        = 
        
	Class_name
	","
      
 ;
syntax New_exports
        = 
        "export" New_export_list NL
 ;
syntax New_export_list
        = 
        New_export_item_Separator*
 ;
syntax New_export_item_Separator
        = 
        New_export_item Separator
 ;
syntax New_export_item
        = 
        Clients Feature_set
 ;
syntax Feature_set
        = Feature_list
        | "all"
 ;
syntax Feature_list
        = 
        (IN NL) 
	    Feature_name
	    ","
	   EX
 ;
syntax Formal_arguments
        = 
        "(" Formal_entity_declaration_list ")"
 ;
syntax Formal_entity_declaration_list
        = 
        Formal_entity_declaration_group_Separator*
 ;
syntax Formal_entity_declaration_group_Separator
        = 
        Entity_declaration_group ";"?
 ;
syntax Entity_declaration_list
        = 
        (IN NL) Entity_declaration_group_Separator* EX
 ;
syntax Entity_declaration_group_Separator
        = 
        Entity_declaration_group Separator
 ;
syntax Entity_declaration_group
        = 
        Identifier_list Type_mark
 ;
syntax Identifier_list
        = 
        Identifier+
 ;
syntax Type_mark
        = 
        ":" Type
 ;
syntax Routine
        = 
        Obsolete? Header_comment? Precondition? Local_declarations? Routine_body Postcondition? Rescue? "end"
 ;
syntax Routine_body
        = Effective
        | Deferred
 ;
syntax Effective
        = Internal
        | External
 ;
syntax Internal
        = 
        Routine_mark Compound
 ;
syntax Routine_mark
        = "do"
        | "once"
 ;
syntax Deferred
        = 
        IN "deferred" (NL EX)
 ;
syntax Local_declarations
        = 
        "local" Entity_declaration_list
 ;
syntax Instruction
        = Creation
        | Call
        | Assignment
        | Assignment_attempt
        | Conditional
        | Multi_branch
        | Loop
        | Debug
        | Check
        | Retry
        | Null
 ;
syntax Precondition
        = 
        "require" "else"? Assertion
 ;
syntax Postcondition
        = 
        "ensure" "then"? Assertion
 ;
syntax Invariant
        = 
        "invariant" Assertion
 ;
syntax Assertion
        = 
        (NL IN) Assertion_clause_Separator* EX
 ;
syntax Assertion_clause_Separator
        = 
        Assertion_clause Separator
 ;
syntax Assertion_clause
        = 
        Tag_mark? Unlabeled_assertion_clause
 ;
syntax Unlabeled_assertion_clause
        = Boolean_expression
        | Comment
 ;
syntax Tag_mark
        = 
        Tag ":"
 ;
syntax Tag
        = 
        Identifier
 ;
syntax Old
        = 
        "old" Expression
 ;
syntax Check
        = 
        "check" Assertion "end"
 ;
syntax Variant
        = 
        "variant" Tag_mark? Expression
 ;
syntax Redefine
        = 
        "redefine" Feature_list NL
 ;
syntax Undefine
        = 
        "undefine" Feature_list NL
 ;
syntax Select
        = 
        "select" Feature_list NL
 ;
syntax Type
        = Class_type
        | Class_type_expanded
        | Formal_generic_name
        | Anchored
        | Bit_type
 ;
syntax Class_type
        = 
        Class_name Actual_generics?
 ;
syntax Actual_generics
        = 
        "[" Type_list "]"
 ;
syntax Type_list
        = 
        
	Type
	","
      
 ;
syntax Class_type_expanded
        = 
        "expanded" Class_type
 ;
syntax Bit_type
        = 
        "BIT" Constant
 ;
syntax Anchored
        = 
        "like" Anchor
 ;
syntax Anchor
        = Identifier
        | "Current"
 ;
syntax Restricted_type
        = Restricted_class_type
        | Formal_generic_name
 ;
syntax Restricted_class_type
        = 
        Class_name Restricted_actual_generics?
 ;
syntax Restricted_actual_generics
        = 
        "[" Restricted_type_list "]"
 ;
syntax Restricted_type_list
        = 
        
	Restricted_type
	","
      
 ;
syntax Compound
        = 
        (IN NL) Instruction_Separator* EX
 ;
syntax Instruction_Separator
        = 
        Instruction Separator
 ;
syntax Separator
        = 
        ";"? NL
 ;
syntax Null
        = 
        ";" NL
 ;
syntax Conditional
        = 
        "if" Then_part_list Else_part? "end"
 ;
syntax Then_part_list
        = 
        Then_part Elseif_Then_part*
 ;
syntax Elseif_Then_part
        = 
        "elseif" Then_part
 ;
syntax Then_part
        = 
        Boolean_expression "then" Compound
 ;
syntax Else_part
        = 
        "else" Compound
 ;
syntax Multi_branch
        = 
        "inspect" Expression When_part_list? Else_part? "end"
 ;
syntax When_part_list
        = 
        When_When_part+
 ;
syntax When_When_part
        = 
        "when" When_part
 ;
syntax When_part
        = 
        Choices "then" Compound
 ;
syntax Choices
        = 
        
	Choice
	","
      
 ;
syntax Choice
        = Constant
        | Interval
 ;
syntax Interval
        = 
        Constant ".." Constant
 ;
syntax Loop
        = 
        Initialization Invariant? Variant? Loop_body "end"
 ;
syntax Initialization
        = 
        "from" Compound
 ;
syntax Loop_body
        = 
        Exit NL "loop" Compound
 ;
syntax Exit
        = 
        "until" Boolean_expression
 ;
syntax Debug
        = 
        "debug" Debug_keys? Compound "end"
 ;
syntax Debug_keys
        = 
        "(" Debug_key_list ")"
 ;
syntax Debug_key_list
        = 
        
	Debug_key
	","
      
 ;
syntax Debug_key
        = 
        Manifest_string
 ;
syntax Rescue
        = 
        "rescue" Compound
 ;
syntax Retry
        = 
        "retry"
 ;
syntax Unique
        = 
        "unique"
 ;
syntax Entity
        = Writable
        | Read_only
 ;
syntax Writable
        = Attribute
        | Local
 ;
syntax Attribute
        = 
        Identifier
 ;
syntax Local
        = Identifier
        | "Result"
 ;
syntax Read_only
        = Formal
        | "Current"
 ;
syntax Formal
        = 
        Identifier
 ;
syntax Creators
        = 
        Creation_Creation_clause+
 ;
syntax Creation_Creation_clause
        = 
        NL "creation" Creation_clause
 ;
syntax Creation_clause
        = 
        Clients? Header_comment? Feature_list NL
 ;
syntax Creation
        = "!!" Writable Creation_call?
        | "!" Type? "!" Writable Creation_call?
 ;
syntax Creation_call
        = 
        "." Unqualified_call
 ;
syntax Assignment
        = 
        Writable ":=" Expression
 ;
syntax Assignment_attempt
        = 
        Writable "?=" Expression
 ;
syntax Call
        = 
        Parenthesized_qualifier? Call_chain
 ;
syntax Parenthesized_qualifier
        = 
        Parenthesized "."
 ;
syntax Call_chain
        = 
        Unqualified_call Dot_Unqualified_call*
 ;
syntax Dot_Unqualified_call
        = 
        "." Unqualified_call
 ;
syntax Unqualified_call
        = 
        Entity Actuals?
 ;
syntax Actuals
        = 
        "(" Actual_list ")"
 ;
syntax Actual_list
        = 
        
	Actual
	","
      
 ;
syntax Actual
        = Expression
        | Address
 ;
syntax Address
        = 
        "$" Address_mark
 ;
syntax Address_mark
        = Feature_name
        | "Current"
        | "Result"
 ;
syntax Expression
        = 
        Equality
 ;
syntax Primitive_expression
        = Call
        | Manifest_constant
        | Manifest_array
        | Old
        | Strip
        | Parenthesized
 ;
syntax Boolean_expression
        = 
        Expression
 ;
syntax Equality
        = 
        Operator_expression Comparison_Operator_expression*
 ;
syntax Comparison_Operator_expression
        = 
        Comparison Operator_expression
 ;
syntax Comparison
        = "="
        | "/="
 ;
syntax Operator_expression
        = Parenthesized
        | Binary_expression
 ;
syntax Parenthesized
        = 
        "(" Expression ")"
 ;
syntax Unary_expression
        = 
        Prefix_operator* Primitive_expression
 ;
syntax Binary_expression
        = 
        Unary_expression Infix_operator_Unary_expression*
 ;
syntax Infix_operator_Unary_expression
        = 
        Infix_operator Unary_expression
 ;
syntax Prefix_operator
        = Unary
        | Free_operator
 ;
syntax Infix_operator
        = Binary
        | Free_operator
 ;
syntax Constant
        = Manifest_constant
        | Constant_attribute
 ;
syntax Constant_attribute
        = 
        Entity
 ;
syntax Manifest_constant
        = Boolean_constant
        | Character_constant
        | Integer_constant
        | Real_constant
        | Manifest_string
        | Bit_constant
 ;
syntax Sign
        = "+"
        | "-"
 ;
syntax Integer_constant
        = 
        Sign? Integer
 ;
syntax Real_constant
        = 
        Sign? Real
 ;
syntax Boolean_constant
        = "true"
        | "false"
 ;
syntax Bit_constant
        = 
        Bit_sequence
 ;
syntax Manifest_array
        = 
        "\<\<" Expression_list "\>\>"
 ;
syntax Expression_list
        = 
        
	Expression
	","
      
 ;
syntax Strip
        = 
        "strip" "(" Attribute_list ")"
 ;
syntax Attribute_list
        = 
        
	Identifier
	","
      
 ;
syntax External
        = 
        "external" Language_name External_name? NL
 ;
syntax Language_name
        = 
        Manifest_string
 ;
syntax External_name
        = 
        "alias" Manifest_string
 ;
syntax Identifier
        = 
        Id
 ;
syntax Manifest_string
        = 
        String
 ;
syntax Comment
        = 
        Comment
 ;
syntax Character_constant
        = 
        Character_constant
 ;
syntax Integer
        = 
        Integer
 ;
syntax Real
        = 
        Real_number
 ;
syntax Bit_sequence
        = 
        Bit_sequence
 ;
syntax Free_operator
        = 
        Free_operator
 ;
