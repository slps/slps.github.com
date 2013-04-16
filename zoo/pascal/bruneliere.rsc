@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bruneliere

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Program
        = 
        String name Variable variables+ Type types+ Procedure procedures+
 ;
syntax Variable
        = Parameter
        | String name Program program Procedure procedure Type type
 ;
syntax Type
        = 
        String name Program program Variable variables+
 ;
syntax Parameter
        = 
        procedure_parameter: Procedure
 ;
syntax Instruction
        = Calculation
        | Control
        | Assignment
        | Block
        | block: Block
 ;
syntax Calculation
        = 
        block: Block
 ;
syntax Control
        = Conditional
        | Loop
        | Procedure
 ;
syntax Assignment
        = 
        block: Block
 ;
syntax Block
        = 
        Instruction instructions+ Procedure procedure Loop loop Conditional conditional
 ;
syntax Conditional
        = 
        blocks: Block
 ;
syntax Loop
        = For
        | While
        | Repeat
        | block_loop: Block
 ;
syntax Procedure
        = Function
        | String name Program program Variable variables+ Parameter parameters+ Block block_procedure
 ;
syntax Function
        = 
        returnType: Type
 ;
syntax For
        = 
        block_loop: Block
 ;
syntax While
        = 
        block_loop: Block
 ;
syntax Repeat
        = 
        block_loop: Block
 ;
syntax String
        = 
        String
 ;
