@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Delphipp

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Ident
        = Id
        | Key
 ;
syntax Namespace
        = 
        Id "."
 ;
syntax Nested_id
        = 
        SPOFF Namespace* Ident SPON
 ;
syntax Filenamelit
        = Charlit
        | Stringlit
        | Nested_id
 ;
syntax Delphipp_file
        = 
        Pp_stmt_or_water*
 ;
syntax Pp_stmt_or_water
        = Pp_stmt
        | Pp_comment
        | Pp_any
 ;
syntax Pp_comment
        = Cmbracketblock
        | Cmstarblock
        | Cmline
 ;
syntax Cmbracketblock
        = 
        "{" Bracketbody* "}"
 ;
syntax Cmstarblock
        = 
        "(*" Starbody* "*)"
 ;
syntax Bracketbody
        = 
        Pp_any
 ;
syntax Starbody
        = 
        Pp_any
 ;
syntax Cmline
        = 
        "//" Cmlinebody* EOL
 ;
syntax Cmlinebody
        = 
        Pp_any
 ;
syntax Pp_any
        = Id Codetoken*
        | Key
        | Token
 ;
syntax Codetoken
        = "("
        | ")"
        | "."
        | ";"
        | ":"
        | ","
        | "["
        | "]"
        | "+"
        | "-"
        | "*"
        | "/"
        | "^"
        | "="
        | "@"
        | "\>"
        | "\<"
        | "\<\>"
        | "\>="
        | "\<="
        | ":="
        | "//"
        | Id
        | Anynumber
        | Charlit
        | Space
 ;
syntax Pp_stmt
        = Pp_ifstmt
        | Pp_directivestmt
 ;
syntax Pp_directivestmt
        = "{$" Space? 
		Pp_directive
		","
	       Bracketbody* "}"
        | "(*$" Space? 
		Pp_directive
		","
	       Starbody* "*)"
 ;
syntax Pp_directive
        = "DEFINE" Space Id
        | "UNDEF" Space Id
        | "INCLUDE" Space? Filenamelit
        | "I" Space? Filenamelit
        | "LINK" Space? Filenamelit
        | "L" Space? Filenamelit
        | "RESOURCE" Space? Filenamelit Space? Filenamelit?
        | "R" Space? Filenamelit Space? Filenamelit?
        | "HPPEMIT" Space? Charlit
        | "EXTERNALSYM" Space Id
        | "NODEFINE"
        | "MINENUMSIZE"
        | "DENYPACKAGEUNIT"
        | "WEAKPACKAGEUNIT"
        | "IMAGEBASE" Space? Anynumber
        | "C" Space Id
        | "MINENUMSIZE" Space Anynumber
        | Pp_minenumsize
        | "ALIGN" Space? Anynumber
        | Pp_align
        | "M" Space? 
		Anynumber
		","
	      
        | "MAXSTACKSIZE" Space Anynumber
        | "MINSTACKSIZE" Space Anynumber
        | "RESOURCERESERVE" Space Anynumber
        | "NOINCLUDE"
        | "WARN"
        | "MESSAGE"
        | "APPTYPE"
        | "LIBPREFIX" Space? Charlit
        | "LIBSUFIX" Space? Charlit
        | "LIBVERSION" Space? Charlit
        | "DESCRIPTION" Space? Charlit
        | "D" Space? Charlit
        | "EXTENSION" Space Id
        | "E" Space Id
        | Pp_switch Space?
 ;
syntax Pp_align
        = "A1"
        | "A2"
        | "A4"
        | "A8"
 ;
syntax Pp_minenumsize
        = "Z1"
        | "Z2"
        | "Z4"
 ;
syntax Pp_switch
        = 
        Id Space? Pp_switchopt
 ;
syntax Pp_switchopt
        = "+"
        | "-"
        | "ON"
        | "OFF"
 ;
syntax Pp_ifstmt
        = 
        Pp_ifblock Pp_elseifblock* Pp_endif
 ;
syntax Pp_ifblock
        = 
        Pp_ifexpr Pp_content*
 ;
syntax Pp_content
        = 
        Pp_stmt_or_water
 ;
syntax Pp_elseifblock
        = 
        Pp_elseifexpr Pp_content*
 ;
syntax Pp_ifexpr
        = "{$" Space? If_alt Bracketbody* "}"
        | "(*$" Space? If_alt Starbody* "*)"
 ;
syntax Pp_elseifexpr
        = "{$" Space? Else_alt Space? Bracketbody* "}"
        | "(*$" Space? Else_alt Space? Starbody* "*)"
 ;
syntax Pp_endif
        = "{$" Space? Endif_alt Bracketbody* "}"
        | "(*$" Space? Endif_alt Starbody* "*)"
 ;
syntax If_alt
        = "IF" Space? Pp_boolexpr
        | "IFDEF" Space? Id
        | "IFNDEF" Space? Id
        | "IFOPT" Space? Pp_switch
 ;
syntax Else_alt
        = "ELSEIF" Space? Pp_boolexpr
        | "ELSE" Space?
 ;
syntax Endif_alt
        = "ENDIF"
        | "IFEND"
 ;
syntax Pp_boolexpr
        = Booleanlit
        | Boolfunc Space? "(" Id ")"
        | "NOT" Space? Pp_boolexpr
        | Id
        | Pp_boolexpr "pp_boolopr" Pp_boolexpr
        | Pp_litexpr "pp_compareopr" Pp_litexpr
        | "(" Pp_boolexpr ")"
 ;
syntax Boolfunc
        = "DEFINED"
        | "DECLARED"
        | "OPTION"
 ;
syntax Booleanlit
        = "FALSE"
        | "TRUE"
 ;
syntax Pp_litexpr
        = Id
        | Charlit
        | Anynumber
 ;
syntax Pp_boolopr
        = "AND"
        | "OR"
        | "XOR"
 ;
syntax Pp_compareopr
        = "\>"
        | "\<"
        | "="
        | "\>="
        | "\<="
        | "\<\>"
 ;
syntax Anynumber
        = Number
        | Hexnumber
 ;
