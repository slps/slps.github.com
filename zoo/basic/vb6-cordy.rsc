@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Vb6_cordy

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = 
        Class_file_header? Declaration_or_statement*
 ;
syntax Class_file_header
        = 
        "version" Number "class" Eol+ Class_begin_block
 ;
syntax Class_begin_block
        = 
        "begin" Reference? IN Class_begin_item* EX "end"
 ;
syntax Class_begin_item
        = Assignment_statement
        | Class_begin_block
        | Eol
 ;
syntax Declaration_or_statement
        = Declaration Eol
        | Statement Eol
        | Eol
 ;
syntax Single_declaration_or_statement
        = Declaration Colon_declaration_or_statement*
        | Statement Colon_declaration_or_statement*
 ;
syntax Colon_declaration_or_statement
        = 
        ":" Declaration_or_statement?
 ;
syntax Declaration
        = Variable_declaration
        | Implements_declaration
        | Subprogram_declaration
        | Constant_declaration
        | Class_declaration
        | Declare_subprogram_declaration
        | Defletter_declaration
        | Enum_declaration
        | Type_declaration
 ;
syntax Implements_declaration
        = 
        "implements" Id
 ;
syntax Enum_declaration
        = 
        Access_modifier? "enum" Id Eol IN Enum_member_definition* EX "end" "enum"
 ;
syntax Enum_member_definition
        = Id "=" Expn Eol
        | Eol
 ;
syntax Type_declaration
        = 
        Access_modifier? "type" Id Eol IN Type_member_definition* EX "end" "type"
 ;
syntax Type_member_definition
        = Id Parens? As_type? Eol
        | Eol
 ;
syntax Defletter_declaration
        = 
        Def_keyword Letterrange+
 ;
syntax Letterrange
        = 
        Id SPOFF "-" Id SPON
 ;
syntax Def_keyword
        = "defbool"
        | "defbyte"
        | "defcur"
        | "defdate"
        | "defdbl"
        | "defdec"
        | "defint"
        | "deflng"
        | "defobj"
        | "defsng"
        | "defstr"
        | "defvar"
 ;
syntax Variable_declaration
        = 
        Variable_declaration_keyword Variable_description+
 ;
syntax Variable_declaration_keyword
        = "dim"
        | "redim"
        | Access_modifier
 ;
syntax Access_modifier
        = "public"
        | "private"
        | "friend"
        | "static"
 ;
syntax Variable_description
        = Array_description
        | Single_var_description
 ;
syntax Single_var_description
        = 
        Id Initial_value? As_type?
 ;
syntax Initial_value
        = 
        "=" Expn
 ;
syntax Array_description
        = 
        "withevents"? "preserve"? Id "(" 
	    Subscript_expn
	    ","
	   ")" As_type?
 ;
syntax Subscript_expn
        = 
        Expn To_expn?
 ;
syntax Constant_declaration
        = 
        Access_modifier? "const" Constant_description
 ;
syntax Constant_description
        = 
        Id As_type? Initial_value
 ;
syntax Declare_subprogram_declaration
        = 
        Access_modifier? "declare" Sub_or_function Id Lib_description Alias_description? Subprogram_argument_description? As_type?
 ;
syntax Subprogram_declaration
        = 
        Access_modifier? "static"? Sub_or_function Id Lib_description? Subprogram_argument_description? As_type? Eol IN Sub_scope EX "end" Sub_or_function
 ;
syntax Lib_description
        = 
        "lib" Stringlit
 ;
syntax Alias_description
        = 
        "alias" Stringlit
 ;
syntax Sub_scope
        = 
        Declaration_or_statement*
 ;
syntax Sub_or_function
        = "sub"
        | "function"
 ;
syntax Subprogram_argument_description
        = 
        "(" 
	    Subprogram_argument
	    ","
	   ")"
 ;
syntax Subprogram_argument
        = 
        "optional"? Byref_or_byval? Id? Parens? As_type? Equals_expn?
 ;
syntax As_type
        = 
        "as" "new"? Reference Star_size?
 ;
syntax Star_size
        = 
        "*" Expn
 ;
syntax Byref_or_byval
        = "byref"
        | "byval"
 ;
syntax Class_declaration
        = 
        "class" Id Eol IN Sub_scope EX "end" "class"
 ;
syntax Expn
        = 
        Primary Operator_primary*
 ;
syntax Operator_primary
        = 
        Op Primary
 ;
syntax Op
        = "^"
        | "*"
        | "/"
        | "\\"
        | "mod"
        | "+"
        | "-"
        | "&"
        | "="
        | "\<\>"
        | "\<="
        | "\>="
        | ":="
        | "\>"
        | "\<"
        | "!"
        | "is"
        | "not"
        | "and"
        | "or"
        | "xor"
        | "eqv"
        | "imp"
        | "like"
 ;
syntax Primary
        = Reference
        | Stringlit
        | Number
        | Hexnumber
        | Octnumber
        | Datelit
        | Returncode
        | Filenumber
        | Prefix_op Primary
        | "(" 
		Expn
		","
	       ")"
 ;
syntax Prefix_op
        = "+"
        | "-"
        | "not"
        | "typeof"
        | "addressof"
 ;
syntax Reference
        = "."? "!"? Id Component_selector*
        | "." Key Component_selector*
 ;
syntax Filenumber
        = 
        "#" Primary
 ;
syntax Component_selector
        = "." Id
        | "." Key
        | Subscript
 ;
syntax Subscript
        = 
        "(" 
	    Optional_subscript
	    ","
	   ")"
 ;
syntax Optional_subscript
        = Expn To_expn?
        | SP ()
 ;
syntax Statement
        = Label_statement
        | Assignment_statement
        | App_activate_statement
        | Attribute_statement
        | Beep_statement
        | Call_statement
        | Chdir_statement
        | Chdrive_statement
        | Close_statement
        | Date_statement
        | Deletesetting_statement
        | Do_statement
        | End_statement
        | Erase_statement
        | Error_statement
        | Event_statement
        | Exit_statement
        | Filecopy_statement
        | For_each_statement
        | For_next_statement
        | Get_statement
        | Gosub_statement
        | Return_statement
        | Goto_statement
        | If_statement
        | Input_statement
        | Kill_statement
        | Line_input_statement
        | Load_statement
        | Lock_statement
        | Lset_statement
        | Mid_statement
        | Mkdir_statement
        | Name_statement
        | On_error_statement
        | Open_statement
        | Option_statement
        | Preprocessor_if_statement
        | Print_statement
        | Property_statement
        | Put_statement
        | Randomize_statement
        | Reset_statement
        | Resume_statement
        | Rmdir_statement
        | Rset_statement
        | Savepicture_statement
        | Savesetting_statement
        | Select_case_statement
        | Set_statement
        | Stop_statement
        | Time_statement
        | Unload_statement
        | Unlock_statement
        | While_statement
        | With_statement
        | Width_statement
        | Write_statement
 ;
syntax Assignment_statement
        = 
        "let"? Reference "=" Expn
 ;
syntax App_activate_statement
        = 
        "appactivate" Expn Comma_expn?
 ;
syntax Comma_expn
        = 
        "," Expn
 ;
syntax Beep_statement
        = 
        "beep"
 ;
syntax Chdir_statement
        = 
        "chdir" Filepath
 ;
syntax Mkdir_statement
        = 
        "mkdir" Filepath
 ;
syntax Rmdir_statement
        = 
        "rmdir" Filepath
 ;
syntax Mid_statement
        = 
        "mid" Reference "=" Stringlit
 ;
syntax Name_statement
        = 
        "name" Filepath "as" Filepath
 ;
syntax Filepath
        = Drive? Id Slash_id*
        | Stringlit
 ;
syntax Slash_id
        = "\\" Id
        | "/" Id
 ;
syntax Chdrive_statement
        = 
        "chdrive" Drive
 ;
syntax Drive
        = 
        Id ":"
 ;
syntax Open_statement
        = 
        "open" Filepath "for" Mode Access_spec? Lock? "as" Filenumber Length_spec?
 ;
syntax Mode
        = "append"
        | "binary"
        | "input"
        | "output"
        | "random"
 ;
syntax Access_spec
        = 
        "access" Access_mode
 ;
syntax Access_mode
        = "read"
        | "write"
        | "read" "write"
 ;
syntax Lock
        = "shared"
        | "lock" "read"
        | "lock" "write"
        | "lock" "read" "write"
 ;
syntax Length_spec
        = 
        "len" "=" Expn
 ;
syntax Close_statement
        = 
        "close" 
	    Filenumber
	    ","
	  
 ;
syntax Seek_statement
        = 
        "seek" Filenumber "," Expn
 ;
syntax Unlock_statement
        = 
        "unlock" Filenumber Comma_recordrange?
 ;
syntax Get_statement
        = 
        "get" Filenumber Comma_recordnumber? "," Reference
 ;
syntax Comma_recordnumber
        = 
        "," Expn
 ;
syntax Input_statement
        = 
        "input" Filenumber "," 
	    Reference
	    ","
	  
 ;
syntax Line_input_statement
        = 
        "line" "input" Filenumber "," Reference
 ;
syntax Width_statement
        = 
        "width" Filenumber "," Expn
 ;
syntax Write_statement
        = 
        "write" Filenumber "," 
	    Print_item
	    ","
	  
 ;
syntax Print_statement
        = 
        "print" Filenumber "," 
	    Print_item
	    ","
	  
 ;
syntax Print_item
        = Spc_tab? Expn Charpos?
        | Spc_tab
 ;
syntax Spc_tab
        = "spc" "(" Expn? ")"
        | "tab" "(" Expn? ")"
 ;
syntax Charpos
        = Expn
        | ";"
 ;
syntax Put_statement
        = 
        "put" Filenumber Comma_expn? "," Reference
 ;
syntax Kill_statement
        = 
        "kill" Filepath
 ;
syntax Lock_statement
        = 
        "lock" Filenumber Comma_recordrange?
 ;
syntax Comma_recordrange
        = 
        "," Number To_number?
 ;
syntax To_number
        = 
        "to" Number
 ;
syntax Load_statement
        = 
        "load" Expn
 ;
syntax Lset_statement
        = 
        "lset" Reference "=" Expn
 ;
syntax Rset_statement
        = 
        "rset" Reference "=" Expn
 ;
syntax Date_statement
        = 
        "date" "=" Expn
 ;
syntax Time_statement
        = 
        "time" "=" Expn
 ;
syntax Deletesetting_statement
        = 
        "deletesetting" Expn+
 ;
syntax End_statement
        = 
        "end"
 ;
syntax Erase_statement
        = 
        "erase" 
	    Id
	    ","
	  
 ;
syntax Error_statement
        = 
        "error" Expn
 ;
syntax Event_statement
        = 
        "public"? "event" Id Event_argument_list?
 ;
syntax Event_argument_list
        = 
        "(" Event_argument+ ")"
 ;
syntax Event_argument
        = 
        Byref_or_byval? Id Parens? As_type?
 ;
syntax Parens
        = 
        "(" ")"
 ;
syntax Filecopy_statement
        = 
        "filecopy" Filepath "," Filepath
 ;
syntax Gosub_statement
        = 
        On_expn? "gosub" Expn
 ;
syntax Return_statement
        = 
        "return"
 ;
syntax Goto_statement
        = 
        On_expn? "goto" Expn
 ;
syntax On_expn
        = 
        "on" Expn
 ;
syntax Option_statement
        = "option" "base" Number
        | "option" "compare" Compare_mode
        | "option" "explicit"
        | "option" "private" "module"
 ;
syntax Compare_mode
        = "binary"
        | "text"
        | "database"
 ;
syntax Attribute_statement
        = 
        "attribute" Attribute_definition+
 ;
syntax Attribute_definition
        = 
        Reference "=" Expn+
 ;
syntax If_statement
        = Full_if_statement
        | Short_if_statement
 ;
syntax Full_if_statement
        = 
        "if" Expn "then" Eol IN Sub_scope EX Elsif_clause* Else_clause? "end" "if"
 ;
syntax Elsif_clause
        = 
        "elseif" Expn "then" Eol IN Sub_scope EX
 ;
syntax Else_clause
        = 
        "else" Eol IN Sub_scope EX
 ;
syntax Short_if_statement
        = 
        "if" Expn "then" Single_declaration_or_statement Short_else_clause?
 ;
syntax Short_else_clause
        = 
        "else" Single_declaration_or_statement
 ;
syntax Select_case_statement
        = 
        "select" "case" Expn Eol IN Case_alternative* Last_case_alternative? EX "end" "select"
 ;
syntax Eol
        = Tab_vbcomment? Newline
        | ":"
 ;
syntax Tab_vbcomment
        = 
        TAB Vbcomment
 ;
syntax Case_alternative
        = 
        Eol* "case" Is_operator? Case_expn+ Eol IN Sub_scope EX
 ;
syntax Is_operator
        = 
        "is" Op?
 ;
syntax Case_expn
        = 
        Expn To_expn?
 ;
syntax To_expn
        = 
        "to" Expn
 ;
syntax Last_case_alternative
        = 
        Eol* "case" "else" Eol IN Sub_scope EX
 ;
syntax For_next_statement
        = Full_for_next_statement
        | Short_for_next_statement
 ;
syntax Short_for_next_statement
        = 
        "for" Id "=" Expn To_or_downto Expn Step_clause? Colon_declaration_or_statement* ":" "next" Id?
 ;
syntax Full_for_next_statement
        = 
        "for" Id "=" Expn To_or_downto Expn Step_clause? Eol IN Sub_scope EX "next" Id?
 ;
syntax To_or_downto
        = "to"
        | "downto"
 ;
syntax Step_clause
        = 
        "step" Expn
 ;
syntax For_each_statement
        = Full_for_each_statement
        | Short_for_each_statement
 ;
syntax Short_for_each_statement
        = 
        "for" "each" Id "in" Expn Eol Colon_declaration_or_statement* ":" "next" Id?
 ;
syntax Full_for_each_statement
        = 
        "for" "each" Id "in" Expn Eol IN Sub_scope EX "next" Id?
 ;
syntax Do_statement
        = 
        "do" While_or_until_clause? Eol IN Sub_scope EX "loop" While_or_until_clause?
 ;
syntax While_or_until_clause
        = While_clause
        | Until_clause
 ;
syntax While_clause
        = 
        "while" Expn
 ;
syntax Until_clause
        = 
        "until" Expn
 ;
syntax While_statement
        = 
        "while" Expn Eol IN Sub_scope EX "wend"
 ;
syntax Call_statement
        = 
        "call"? Reference Subroutine_bracketless_params?
 ;
syntax Subroutine_bracketless_params
        = 
        Expn 
	    Optional_expn
	    ","
	  
 ;
syntax Optional_expn
        = Expn
        | () SP
 ;
syntax Set_statement
        = 
        "set" Reference "=" Set_object_expn
 ;
syntax Set_object_expn
        = "new"? Expn
        | "nothing"
 ;
syntax Setattr_statement
        = 
        "setattr" Filepath "," Expn
 ;
syntax Exit_statement
        = 
        "exit" Exit_what_indicator
 ;
syntax Exit_what_indicator
        = "do"
        | "for"
        | "function"
        | "property"
        | "sub"
 ;
syntax On_error_statement
        = 
        "on" "local"? "error" On_error_action
 ;
syntax On_error_action
        = "resume" "next"
        | "goto" Expn
 ;
syntax With_statement
        = 
        "with" Reference Eol IN Sub_scope EX "end" "with"
 ;
syntax Property_statement
        = 
        Access_modifier? "static"? "property" Get_let_set Id Property_argument_list? As_type? Eol IN Sub_scope EX "end" "property"
 ;
syntax Get_let_set
        = "get"
        | "let"
        | "set"
 ;
syntax Property_argument_list
        = 
        "(" 
	    Property_argument
	    ","
	   ")"
 ;
syntax Property_argument
        = 
        "optional"? Byref_or_byval? "paramarray"? Id Parens? As_type? Equals_expn?
 ;
syntax Equals_expn
        = 
        "=" Expn
 ;
syntax Randomize_statement
        = 
        "randomize" Number?
 ;
syntax Reset_statement
        = 
        "reset"
 ;
syntax Resume_statement
        = "resume" "next"
        | "resume" Number?
 ;
syntax Savepicture_statement
        = 
        "savepicture" Expn "," Expn
 ;
syntax Savesetting_statement
        = 
        "savesetting" 
	    Expn
	    ","
	  
 ;
syntax Stop_statement
        = 
        "stop"
 ;
syntax Unload_statement
        = 
        "unload" Expn
 ;
syntax Label_statement
        = 
        EX Id ":" IN
 ;
syntax Preprocessor_if_statement
        = 
        "#if" Expn "then" Eol IN Sub_scope EX Preprocessor_elsif_clause* Preprocessor_else_clause? "#end" "if"
 ;
syntax Preprocessor_elsif_clause
        = 
        "#elseif" Expn "then" Eol IN Sub_scope EX
 ;
syntax Preprocessor_else_clause
        = 
        "#else" Eol IN Sub_scope EX
 ;

public void main()
{
	registerLanguage("Vb6_cordy", "ext", program(str input, loc org) {return parse(#program, input, org);});
	println("Language registered.");
}
