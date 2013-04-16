@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Txl

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = 
        Fun+
 ;
syntax Fun
        = 
        Id Id+ "=" Expression Newline
 ;
syntax Expression
        = Expression Op Expression
        | Id Expression+
        | "if" Expression "then" Expression "else" Expression
        | "(" Expression ")"
        | Id
        | Number
 ;
syntax Op
        = "+"
        | "-"
        | "=="
 ;

public void main()
{
	registerLanguage("Txl", "ext", program(str input, loc org) {return parse(#program, input, org);});
	println("Language registered.");
}
