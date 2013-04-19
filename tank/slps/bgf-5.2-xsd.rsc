@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bgf_5_2_xsd

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Grammar
        = 
        Nonterminal root* Production*
 ;
syntax Nonterminal
        = 
        String
 ;
syntax Production
        = 
        Label label? Nonterminal nonterminal Expression
 ;
syntax Label
        = 
        String
 ;
syntax Expression
        = epsilon: ()
        | empty: ()
        | value: Value
        | any: ()
        | terminal: Terminal
        | nonterminal: Nonterminal
        | selectable: Selector selector Expression
        | marked: Expression
        | sequence: Expression+
        | choice: Expression+
        | allof: Expression+
        | not: Expression
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
syntax Terminal
        = 
        String
 ;
syntax Selector
        = 
        String
 ;

public void main()
{
	registerLanguage("Bgf_5_2_xsd", "ext", grammar(str input, loc org) {return parse(#grammar, input, org);});
	println("Language registered.");
}
