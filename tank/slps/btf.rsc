@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Btf

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Root
        = 
        Grammar Tree
 ;
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
syntax Tree
        = epsilon: ()
        | any: ANY
        | terminal: Terminal
        | nonterminal: Production Tree
        | selectable: Selector selector Tree
        | value: (Integer int | String string)
        | sequence: Tree*
        | choice: Expression Tree
        | optional: Tree?
        | plus: Tree+
        | star: Tree*
 ;

public void main()
{
	registerLanguage("Btf", "ext", root(str input, loc org) {return parse(#root, input, org);});
	println("Language registered.");
}
