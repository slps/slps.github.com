@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Rascal_concrete

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax JSONText
        = Object
        | Array
 ;
syntax Value
        = NumericLiteral
        | StringLiteral
        | True: "true"
        | Object
        | Array
        | Null: "null"
        | False: "false"
 ;
syntax Object
        = Object: 
        "{" () members "}"
 ;
syntax Member
        = Member: 
        StringLiteral memberName ":" Value memberValue
 ;
syntax Array
        = Array: 
        "[" () values "]"
 ;

public void main()
{
	registerLanguage("Rascal_concrete", "ext", JSONText(str input, loc org) {return parse(#JSONText, input, org);});
	println("Language registered.");
}
