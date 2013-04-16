@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bnf_sdf

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Rules
        = 
        Rule*
 ;
syntax Rule
        = 
        NonTerminal "::=" Elements
 ;
syntax NonTerminal
        = 
        "\<" String "\>"
 ;
syntax Elements
        = 
        Element ("|" Element)*
 ;
syntax Element
        = NonTerminal
        | Terminal
        | "[" Element ("|" Element)* "]"
        | "{" Element ("|" Element)* "}"
        | "|"
        | "["
        | "]"
        | "{"
        | "}"
        | "\<"
        | "\>"
        | "..."
        | "::="
        | Element Element
 ;
syntax Terminal
        = 
        String
 ;

public void main()
{
	registerLanguage("Bnf_sdf", "ext", Rules(str input, loc org) {return parse(#Rules, input, org);});
	println("Language registered.");
}
