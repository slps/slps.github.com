@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Csharp_antoniol

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
