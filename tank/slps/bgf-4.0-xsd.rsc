@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bgf_4_0_xsd

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Grammar
        = 
        Nonterminal root* Production*
 ;
syntax Production
        = 
        Label label? Nonterminal nonterminal Expression
 ;
syntax Expression
        = epsilon: ()
        | empty: ()
        | value: Value
        | any: ()
        | terminal: Terminal
        | nonterminal: Nonterminal
        | selectable: Selector selector Expression
        | sequence: Expression+
        | marked: Expression
        | choice: Expression+
        | optional: Expression
        | plus: Expression
        | star: Expression
        | seplistplus: Expression Expression
        | sepliststar: Expression Expression
 ;
syntax Value
        = int: ()
        | string: ()
 ;
syntax Label
        = 
        String
 ;
syntax Nonterminal
        = 
        String
 ;
syntax Selector
        = 
        String
 ;
syntax Terminal
        = 
        String
 ;

public void main()
{
	registerLanguage("Bgf_4_0_xsd", "ext", grammar(str input, loc org) {return parse(#grammar, input, org);});
	println("Language registered.");
}
