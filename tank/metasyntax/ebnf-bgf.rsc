@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Ebnf_bgf

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Grammar
        = 
        Production+
 ;
syntax Production
        = 
        Label? String Defining_metasymbol Right_hand_side Terminator_metasymbol
 ;
syntax Label
        = 
        "[" String "]"
 ;
syntax Defining_metasymbol
        = 
        ":"
 ;
syntax Right_hand_side
        = 
        (Definition_separator_metasymbol Definition)+
 ;
syntax Terminator_metasymbol
        = 
        "\\n"
 ;
syntax Definition_separator_metasymbol
        = 
        "\\n" "        "
 ;
syntax Definition
        = 
        Expression (" " Expression)*
 ;
syntax Expression
        = Empty
        | Epsilon
        | Any
        | Value
        | Selectable_expression
        | Marked_expression
        | Repetition_expression
        | Optional_expression
        | Terminal
        | Nonterminal
        | Group_expression
 ;
syntax Empty
        = 
        "EMPTY"
 ;
syntax Epsilon
        = 
        "EPSILON"
 ;
syntax Any
        = 
        "ANY"
 ;
syntax Value
        = "INT"
        | "STR"
 ;
syntax Selectable_expression
        = 
        String selector "::" Expression
 ;
syntax Marked_expression
        = 
        "\<" Expression "\>"
 ;
syntax Repetition_expression
        = 
        Expression Repetition_metasymbol
 ;
syntax Repetition_metasymbol
        = "+"
        | "*"
 ;
syntax Optional_expression
        = 
        Expression Optionality_metasymbol
 ;
syntax Optionality_metasymbol
        = 
        "?"
 ;
syntax Terminal
        = 
        Start_terminal_metasymbol String End_terminal_metasymbol
 ;
syntax Start_terminal_metasymbol
        = 
        "\""
 ;
syntax End_terminal_metasymbol
        = 
        "\""
 ;
syntax Nonterminal
        = 
        Start_nonterminal_metasymbol String End_nonterminal_metasymbol
 ;
syntax Start_nonterminal_metasymbol
        = 
        ()
 ;
syntax End_nonterminal_metasymbol
        = 
        ()
 ;
syntax Group_expression
        = 
        Start_group_metasymbol Expression End_group_metasymbol
 ;
syntax Start_group_metasymbol
        = 
        "("
 ;
syntax End_group_metasymbol
        = 
        ")"
 ;

public void main()
{
	registerLanguage("Ebnf_bgf", "ext", grammar(str input, loc org) {return parse(#grammar, input, org);});
	println("Language registered.");
}
