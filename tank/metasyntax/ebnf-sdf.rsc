@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Ebnf_sdf

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Grammar
        = 
        Rule*
 ;
syntax Rule
        = 
        IdCon "::=" Expression
 ;
syntax IdCon
        = 
        String
 ;
syntax Expression
        = IdCon
        | String
        | "(" Expression ")"
        | Expression "?"
        | Expression "*"
        | Expression "+"
        | Expression "|" Expression
        | Expression Expression
 ;
syntax String
        = 
        "\"" String "\""
 ;

public void main()
{
	registerLanguage("Ebnf_sdf", "ext", Grammar(str input, loc org) {return parse(#Grammar, input, org);});
	println("Language registered.");
}
