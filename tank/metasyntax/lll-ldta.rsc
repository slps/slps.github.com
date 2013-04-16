@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Lll_ldta

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Grammar
        = 
        Rule+
 ;
syntax Rule
        = 
        Sort ":" Alts ";"
 ;
syntax Alts
        = 
        Alt Alts_tail*
 ;
syntax Alts_tail
        = 
        "|" Alt
 ;
syntax Alt
        = 
        Term*
 ;
syntax Term
        = 
        Basis Repetition?
 ;
syntax Basis
        = Literal
        | Sort
 ;
syntax Repetition
        = "*"
        | "+"
        | "?"
 ;

public void main()
{
	registerLanguage("Lll_ldta", "ext", grammar(str input, loc org) {return parse(#grammar, input, org);});
	println("Language registered.");
}
