@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Lll_kort

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Specification
        = 
        Rule+
 ;
syntax Rule
        = 
        Ident ":" Disjunction ";"
 ;
syntax Disjunction
        = 
        
	Conjunction
	"|"
      
 ;
syntax Conjunction
        = 
        Term+
 ;
syntax Term
        = 
        Basis Repetition?
 ;
syntax Basis
        = Ident
        | Literal
        | "%epsilon"
        | Alternation
        | Group
 ;
syntax Repetition
        = "+"
        | "*"
        | "?"
 ;
syntax Alternation
        = 
        "{" Basis Basis "}" Repetition
 ;
syntax Group
        = 
        "(" Disjunction ")"
 ;

public void main()
{
	registerLanguage("Lll_kort", "ext", specification(str input, loc org) {return parse(#specification, input, org);});
	println("Language registered.");
}
