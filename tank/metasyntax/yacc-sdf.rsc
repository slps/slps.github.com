@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Yacc_sdf

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Grammar
        = 
        C_declarations Yacc_declarations "%%" Grammar_rules "%%" Extra_C_code
 ;
syntax Yacc_declarations
        = 
        Yacc_declaration*
 ;
syntax Yacc_declaration
        = ("%token" | "%left" | "%right" | "%nonassoc") (Terminal | Literal)+ String?
        | "%start" Terminal
 ;
syntax Grammar_rules
        = 
        Rule*
 ;
syntax Rule
        = 
        NonTerminal ":" (Expression? ("|" Expression?)*)? ";"
 ;
syntax Expression
        = Terminal
        | NonTerminal
        | Literal
        | "%prec" Terminal
        | C_code
        | Expression Expression
 ;

public void main()
{
	registerLanguage("Yacc_sdf", "ext", Grammar(str input, loc org) {return parse(#Grammar, input, org);});
	println("Language registered.");
}
