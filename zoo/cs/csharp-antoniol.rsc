@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Csharp_antoniol

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = 
        Line*
 ;
syntax Line
        = Ifdef
        | "//"? Other_preprocessor_line Newline
        | "//"? Any_other_line Newline
 ;
syntax Ifdef
        = 
        "//"? Ifdef_line Newline Line* Elsif_part* Else_part? "//"? Endifdef_line Newline
 ;
syntax Elsif_part
        = 
        "//"? Elsifdef_line Newline Line*
 ;
syntax Else_part
        = 
        "//"? Elsedef_line Newline Line*
 ;
syntax Any_other_line
        = 
        Not_newline*
 ;
syntax Not_newline
        = Long_comment
        | Token
 ;
syntax Long_comment
        = 
        Comment+
 ;
syntax Ifdef_token
        = Ifdef_line
        | Elsedef_line
        | Elsifdef_line
        | Endifdef_line
 ;

public void main()
{
	registerLanguage("Csharp_antoniol", "ext", program(str input, loc org) {return parse(#program, input, org);});
	println("Language registered.");
}
