@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pascal

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
